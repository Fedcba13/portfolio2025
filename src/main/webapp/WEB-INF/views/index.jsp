<%@ include file="header.jsp"%>
<table>
	<thead>
		<th>CATEGORY_ID</th>
		<th>PARENT_ID</th>
		<th>CATEGORY_NAME</th>
		<th>LEVEL</th>
	</thead>
	<tbody>
		<c:forEach var="item" items="${menuList}">
			<tr>
				<td>${item.category_id }</td>
				<td>${item.category_name }</td>
				<td>${item.parent_id }</td>
				<td>${item.level }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<%@ include file="footer.jsp"%>