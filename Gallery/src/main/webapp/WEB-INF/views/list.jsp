<center>
	<c:if test="${listcat == 0}">
		<c:if test="${!empty categoryList}">
			<div class="container shadow"
				style="background-color: white; max-width: 800px">
				<p style="margin-top: 10px">
					<b style="font-size: 17px">CATEGORY LIST</b>
				</p>

				<table class="table table-hover container"
					style="width: 95%; margin-top: 8px">

					<tr style="background-color: #D8D4D4">
						<th>#</th>
						<th>Category Name</th>
						<th>Category Description</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					<c:forEach items="${categoryList}" var="cat">
						<tr>
							<td>${cat.id}</td>
							<td>${cat.name}</td>
							<td>${cat.description}</td>
							<td><a href="<c:url value='Updatecat${cat.id}'/>"><span
									class="glyphicon glyphicon-pencil"></span></a></td>
							<td><a href="<c:url value='Deletecategory${cat.id}'/>"><span
									class="glyphicon glyphicon-trash"></span></a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</c:if>
	</c:if>



	<c:if test="${listprod == 0}">



<c:if test="${!empty productList}">
			<div class="container shadow"
				style="background-color: white;max-width: 1000px;min-width:900px">
				<p style="margin-top: 10px">
					<b style="font-size: 17px">PRODUCT LIST</b>
				</p>

				<table class="table table-hover container"
					style="width: 95%; margin-top: 8px">

					<tr style="background-color: #D8D4D4">
						<th>#</th>
						<th>Name</th>
						<th>Description</th>
						<th>Medium</th>
						<th>Size in length</th>
						<th>Size in width</th>
						<th>Price</th>
						
						<th>Category</th>
						<th>Sold</th>
						
						<th>Image</th>
						
						
						<th>Corossol</th>
						<th>Top Image</th>
						
						
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					<c:forEach items="${productList}" var="prod">
						<tr>
							<td>${prod.id}</td>
							<td>${prod.name}</td>
							<td>${prod.description}</td>
							<td>${prod.medium}</td>
							<td>${prod.sizel}</td>
							<td>${prod.sizew}</td>
							<td>${prod.price}</td>
							<td>${prod.cat_Id}</td>
							
							<td>${prod.sold}</td>
							
							<td></td>
							<td>${prod.corshow}</td>
							<td>${prod.topshow}</td>
							<td><a href="<c:url value='Updateprod${prod.id}'/>"><span
									class="glyphicon glyphicon-pencil"></span></a></td>
							<td><a href="<c:url value='Deleteproduct${prod.id}'/>"><span
									class="glyphicon glyphicon-trash"></span></a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</c:if>



		<br>
	</c:if>





<c:if test="${listmes == 0}">
		<c:if test="${!empty messageList}">
			<div class="container shadow"
				style="background-color: white;width: 80%">
				<p style="margin-top: 10px">
					<b style="font-size: 17px">MESSAGES</b>
				</p>

				<table class="table table-hover container"
					style="width: 95%; margin-top: 8px">

					<tr style="background-color: #D8D4D4">
						<th>Name</th>
						<th>Message</th>
						<th>Contact</th>
					</tr>
					<c:forEach items="${messageList}" var="mes">
						<tr>
							<td>${mes.name}</td>
							<td>${mes.imessage}</td>
							<td>${mes.contact}</td>
							
						</tr>
					</c:forEach>
				</table>
				
				<a href="Deletemessage"><button class="btn btn-primary shadow"
									style="height: 40px" type="button">
									Delete Messages </button></a>
				
				<br><br>
			</div>
		</c:if>
	</c:if>

<c:if test="${listabt == 0}">
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
			<hr class="style14">
				<a href="Editdetails"><button class="btn btn-primary shadow"
									style="height: 40px" type="button">
									Edit</button></a>
				<br><br>
			
				
			
			</div>
		</c:if>
	</c:if>

</center>
