package com.Lomesh.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.Lomesh.model.Kmessage;

@Controller
public class MessageController {

	public static ArrayList<Kmessage> listreturn(List<String> trans) {
		ArrayList<Kmessage> messagelist = new ArrayList<Kmessage>();
		String[] words;
		for (int i = 0; i < trans.size(); i++) {
			Kmessage message = new Kmessage();
			words = trans.get(i).split(";");

			message.setName(words[0]);
			message.setImessage(words[1]);
			message.setContact(words[2]);
			messagelist.add(message);
		}
		return messagelist;
	}

	public void deletefile() throws IOException {

		int i=0;
		File file = new File(
				"D:\\Programs\\ImageGallery\\Gallery\\src\\main\\java\\com\\Lomesh\\data\\Messages.txt");

		List<String> trans = new ArrayList<String>();
		trans = readFile(
				"D:\\Programs\\ImageGallery\\Gallery\\src\\main\\java\\com\\Lomesh\\data\\Messages.txt");

		ArrayList<Kmessage> messagelist = new ArrayList<Kmessage>();
		messagelist = listreturn(trans);
		ArrayList<Kmessage> newmessagelist = new ArrayList<Kmessage>();

		BufferedWriter writer = new BufferedWriter(new FileWriter(file));

		for (Kmessage temp : messagelist) {

			if (i<50) {
				i++;
			} else {

				newmessagelist.add(temp);

			}
		}

		int n = 0;
		for (Kmessage temp : newmessagelist) {
			writer.write(temp.getName() + ';' + temp.getImessage() + ';' + temp.getContact());
			if (n != newmessagelist.size() - 1) {
				writer.write(System.getProperty("line.separator"));
			}
			n = n + 1;
		}

		writer.close();
	}

	public void writefile(@Valid Kmessage message) throws IOException {

		File file = new File(
				"D:\\Programs\\ImageGallery\\Gallery\\src\\main\\java\\com\\Lomesh\\data\\Messages.txt");

		BufferedWriter writer = new BufferedWriter(new FileWriter(file, true));
		if (file.length() != 0) {
			writer.append(System.getProperty("line.separator"));
		}

		if(message.getContact()=="") {
			message.setContact("null");
		}
		writer.append(message.getName() + ';' + message.getImessage() + ';' + message.getContact());

		writer.close();
	}



	public static List<String> readFile(String filename) {
		List<String> records = new ArrayList<String>();
		try {
			BufferedReader reader = new BufferedReader(new FileReader(filename));
			String line;
			while ((line = reader.readLine()) != null) {
				records.add(line);
			}
			reader.close();
			return records;
		} catch (Exception e) {
			System.err.format("Exception occurred trying to read '%s'.", filename);
			e.printStackTrace();
			return null;
		}
	}

	@RequestMapping(value = "/messagelist")
	public ModelAndView Messagelist() throws IOException {

		List<String> trans = new ArrayList<String>();
		trans = readFile(
				"D:\\Programs\\ImageGallery\\Gallery\\src\\main\\java\\com\\Lomesh\\data\\Messages.txt");

		ArrayList<Kmessage> messagelist = new ArrayList<Kmessage>();
		messagelist = listreturn(trans);

		ModelAndView mv = new ModelAndView("adminpage");
		mv.addObject("listmes", 0);
		mv.addObject("messageList", messagelist);
		return mv;
	}


	
	
	
	

	@RequestMapping(value = "/Messagereg", method = RequestMethod.POST)
	public ModelAndView Messageregister(@Valid @ModelAttribute("kmessage") Kmessage kmessage, BindingResult result)
			throws IOException {

		ModelAndView mv = new ModelAndView("Home");
		 
		
		if (result.hasErrors()) {
		} else {
			if(kmessage.getImessage()=="") {}else
			{
				writefile(kmessage);}

		}

		

		return mv;
	}

	

	@RequestMapping(value = "/Deletemessage")
	public ModelAndView deleteMessage() throws IOException{

		List<String> trans = new ArrayList<String>();
		ArrayList<Kmessage> messagelist = new ArrayList<Kmessage>();

		deletefile();

		trans = readFile(
				"D:\\Programs\\ImageGallery\\Gallery\\src\\main\\java\\com\\Lomesh\\data\\Messages.txt");

		messagelist = listreturn(trans);
		ModelAndView mv = new ModelAndView("adminpage");
		mv.addObject("messageList", messagelist);
		mv.addObject("listmes", 0);
		return mv;
	}

}
