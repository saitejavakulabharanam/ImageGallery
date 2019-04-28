<%@ include file="header.jsp"%>
<br><br><br><br><br>
<center>
<c:if test="${!empty aboutList}">
			<div class="container shadow"
				style="background-color: white;min-width: 600px;max-width:700px">
				<p style="margin-top: 10px">
					<b style="font-size: 17px">ABOUT</b>
				</p>
				<hr class="style14">
				<div style="margin-left:80px;text-align:left">
					<c:forEach items="${aboutList}" var="abt">
							${abt}<br>
					</c:forEach>
			</div>
			<br><br>
			</div>
		</c:if>
		
	</center>	
<br>

<%@ include file="footer.jsp"%>