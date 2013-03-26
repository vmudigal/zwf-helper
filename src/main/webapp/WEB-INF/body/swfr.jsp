<!-- @author: Vijayendra Mudigal -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Scramble Result</title>
</head>
<body>
	<%
		int count = 0;
		int colorCount = 0;
	%>
	<c:if test="${size == 0 }">
	<div class="pageTitle">Oooops!!</div> No valid words found from the scramble board!! <a class="menuItem" href="<c:url value="/swf" />">RETRY?</a>
	</c:if>
	<c:if test="${size != 0 }">
	<div class="pageTitle">Whoooo!! You got the result. [ ${size} words in ${time} Millis ]</div>
	<table style="width: 90%; border-radius: 5px 5px 5px 5px; border: 3px solid black;" cellpadding="0" cellspacing="0">
		<tr>
			<c:forEach items="${words}" var="word">
				<%
					if (count++ == 5) {
							count = 0;
				%>
				<td align="center" <%if (colorCount == 0) {%>
					style="width: 15%; background: darkgrey; padding: 5px;" <%} else {%>style="width: 15%; padding: 5px;"<%} %>>${word}</td>
		</tr>
		<tr>
			<%
				if (colorCount == 0) {
							colorCount = 1;
						} else {
							colorCount = 0;
						}
					} else {
			%>
			<td align="center" <%if (colorCount == 0) {%>
				style="border-right: 1px solid black; width: 15%; background: darkgrey; padding: 5px;"
				<%} else {%>style="border-right: 1px solid black; width: 15%; padding: 5px;" <%} %>>${word}</td>
			<%
				}
			%>
			</c:forEach>
		</tr>
	</table>
	</c:if>
</body>
</html>