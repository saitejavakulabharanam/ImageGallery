<%@ include file="header.jsp"%>
<br><br><br><br><br>
<center>

<div class="container shadow" style="background-color:white;margin:9px auto 15px;width:90%">

<table style="margin:15px;float:left">
<tr style="text-align:left">
<td>
<img src="resources/images/${oneproduct.name}.jpg" style="height:450px;width:400px">
</td>
<td>
<div style="margin:0px 70px">
<p style="font-size:16px">${oneproduct.name}</p>
<h3>Rs. ${oneproduct.price}</h3>
</div></td>

</tr>
</table>

</div>

</center>
<%@ include file="footer.jsp"%>
