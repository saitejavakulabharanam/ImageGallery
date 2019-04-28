<center>
<div class="container shadow" style="background-color:white">

<c:choose>
<c:when test="${add == 0}">
<c:choose>
<c:when test="${edit == 1}">
<p style="margin-top:10px"><b style="font-size:17px">Edit Category Details</b></p>


<form:form method="POST" action="categoryupdate" modelAttribute="category">
<table style="width:400px;height:250px">
<tr><td>Category Id:</td><td><form:input type="text" path="id" value="${cat.id}" readonly="true"/></td></tr>
<tr><td>Category Name:</td><td><form:input type="text" path="name" value="${cat.name}" /></td></tr>
<tr><td>Description:</td><td><textarea name="description" rows="4" cols="30">${cat.description}</textarea></td></tr>

</table><br>
<input type="submit" value="Update" class="btn btn-primary shadow" style="height:38px"/>
</form:form>

</c:when>
<c:otherwise>

<p style="margin-top:10px"><b style="font-size:17px">ADD Category</b></p>
<form:form method="POST" action="Categoryreg" modelAttribute="category">
<table style="width:400px;height:250px;">
<tr><td>Category Id:</td><td><form:input type="text" path="id" autofocus="autofocus"/><form:errors path="id" /></td></tr>
<tr><td>Category Name:</td><td><form:input type="text" path="name" /><form:errors path="name" /></td></tr>
<tr><td>Description:</td><td><form:textarea path="description" rows="4" cols="30"/></td></tr>

</table>
<br>
<input type="submit" value="Add" class="btn btn-primary shadow" style="height:38px"/><input type="reset" value="Reset" class="btn btn-danger shadow" style="margin-left:80px;height:38px"/>
</form:form>
</c:otherwise>
</c:choose>
<hr class="style14">
</c:when>


<c:when test="${add == 1}">
<c:choose>
<c:when test="${edit == 1}">
<p style="margin-top:10px"><b style="font-size:17px">Edit Product Details</b></p>
<form:form method="POST" action="Updateproduct" modelAttribute="product" enctype="multipart/form-data">
<table style="width:400px;height:580px">
<tr><td>Product Id:</td><td><form:input type="text" path="id" value="${prod.id}" readonly="true"/></td></tr>
<tr><td>Product Name:</td><td><form:input type="text" path="name" value="${prod.name}"/><form:errors path="name" /></td></tr>
<tr><td>Description:</td><td><textarea name="description" rows="4" cols="30">${prod.description}</textarea></td></tr>
<tr><td>Medium:</td><td><form:input path="medium" type="text" value="${prod.medium}"/><form:errors path="medium" /></td></tr>
<tr><td>Size in length:</td><td><form:input path="sizel" type="number" step="any" value="${prod.sizel}"/><form:errors path="sizel" /></td></tr>
<tr><td>Size in width:</td><td><form:input path="sizew" type="number" step="any" value="${prod.sizew}"/><form:errors path="sizew" /></td></tr>
<tr><td>price:</td><td><form:input path="price" type="number" value="${prod.price}"/><form:errors path="price" /></td></tr>
<tr><td>Image:</td><td><form:input path="image" type="file" /></td></tr>
<tr><td>Category Name:</td>
<td><form:select path="cat_Id">


<form:option value="${prod.cat_Id}" label="${prod.cat_Id}"/>
<c:forEach items="${categoryList}" var="cat">
   <form:option value="${cat.name}" label="${cat.name}"/>

</c:forEach>

</form:select>



</td></tr>

<tr><td>Sold:</td><td>
<form:select path="sold">
   <form:option value="${prod.sold}" label="${prod.sold}"/>
   <form:option value="yes" label="Yes"/>
   <form:option value="no" label="No"/>
   </form:select>
</td></tr>
<tr><td>Show on corossol:</td><td>
<form:select path="corshow">
<form:option value="${prod.corshow}" label="${prod.corshow}"/>
   <form:option value="yes" label="Yes"/>
   <form:option value="no" label="No"/>
   </form:select>
</td></tr>
<tr><td>Top Image:</td><td>
<form:select path="topshow">
<form:option value="${prod.topshow}" label="${prod.topshow}"/>
   <form:option value="yes" label="Yes"/>
   <form:option value="no" label="No"/>
   </form:select>
</td></tr>

</table><br>
<input type="submit" value="Update" class="btn btn-primary shadow" style="height:38px"/>
</form:form>
</c:when>

<c:otherwise>
<p style="margin-top:10px"><b style="font-size:17px">ADD Product</b></p>
<form:form method="POST" action="Productreg" modelAttribute="product" enctype="multipart/form-data">
<table style="width:400px;height:580px">
<tr><td>Product Id:</td><td><form:input type="text" path="id" autofocus="autofocus"/><form:errors path="id" /></td></tr>
<tr><td>Product Name:</td><td><form:input type="text" path="name" /><form:errors path="name" /></td></tr>
<tr><td>Description:</td><td><form:textarea path="description" rows="4" cols="30" /></td></tr>
<tr><td>Medium:</td><td><form:input path="medium" type="text"/><form:errors path="medium" /></td></tr>
<tr><td>Size in length:</td><td><form:input path="sizel" type="number" step="any" /><form:errors path="sizel" /></td></tr>
<tr><td>Size in width:</td><td><form:input path="sizew" type="number" step="any" /><form:errors path="sizew" /></td></tr>

<tr><td>Price:</td><td><form:input path="price" type="number" /><form:errors path="price" /></td></tr>
<tr><td>Image:</td><td><form:input path="image" type="file" /></td></tr>
<tr><td>Category Name:</td>
<td><form:select path="cat_Id" items="${categoryList}" itemValue="name" itemLabel="name"></form:select></td></tr>

<tr><td>Sold:</td><td>
<form:select path="sold">
   <form:option value="yes" label="Yes"/>
   <form:option value="no" label="No"/>
   </form:select>
</td></tr>


<tr><td>Show on corossol:</td><td>
<form:select path="corshow">
   <form:option value="yes" label="Yes"/>
   <form:option value="no" label="No"/>
   </form:select>
</td></tr>
<tr><td>Top Image:</td><td>
<form:select path="topshow">
   <form:option value="yes" label="Yes"/>
   <form:option value="no" label="No"/>
   </form:select>
</td></tr>

</table><br>
<input type="submit" value="Add" class="btn btn-primary shadow" style="height:38px"/><input type="reset" value="Reset" class="btn btn-danger shadow" style="margin-left:80px;height:38px"/>
</form:form>
</c:otherwise>
</c:choose>
<hr class="style14">
</c:when>


<c:when test="${add == 2}">
<p style="margin-top:10px"><b style="font-size:17px">Edit About Details</b></p>


<form method="POST" action="Updatedetails">

 
 <textarea name="about" rows="40" cols="100">
${aboutList}
</textarea>
 
  <br><br>
<input type="submit" value="Submit" class="btn btn-primary shadow" style="height:38px"/></form> 
<br>

</c:when>


</c:choose>

</div>
</center>