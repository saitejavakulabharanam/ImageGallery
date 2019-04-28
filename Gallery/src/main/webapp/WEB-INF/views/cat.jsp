<%@ include file="header.jsp"%>
<center>
<br><br><br><br><br>



<div class="container shadow" style="background-color:white;width:80%">

<p style="margin-top: 9px">
					<b style="font-size: 17px">Paintings Of ${catname} Category </b>
				</p>



<table align="left" class="table table-hover container" style="width:90%;margin:10px 0px">
    									
	
<c:forEach items="${productList}" var="prod">
					<tr>
							
							<td style="height:50%;width:50%">
				  			<a href = "oneview${prod.id}" class = "thumbnail shadow" style="text-decoration:none;background-color:white;margin:0px 10px;color:black">
							
							
         <img src = "resources/images/${prod.name}.jpg" class="img-rounded" style="height:300px;width:500px">
</a>
							</td>
							
							<td>
							<a style="text-decoration: none" href="<c:url value='oneview${prod.id}'/>">
							
							<p>${prod.name}</p>
							<p>${prod.description}</p>
	
						</a>						
							</td>
							
						</tr>
	
					</c:forEach>
	</table>	
	
</div>

</center>

<br>
<%@ include file="footer.jsp"%>