<!-- @author: Vijayendra Mudigal -->

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<table>
	<tr>
		<td><div class="pageTitle">Scramble with Friends</div></td>
	</tr>
	<tr>
		<td colspan="2">Scramble With Friends is the fast, fun game of
			finding words in a jumbled grid. Quickly slide your finger over
			adjacent letters to form words forwards, backwards, sideways... any
			way you can! <br /> <br /> To generate the set of possible words,
			please do fill in the scramble board with the data you have when you
			start the game. Just take a screenshot, pause the game and get this
			hack.<br />
		<br /> <br />
		<br />
		</td>
	</tr>
	<tr align="center">
		<td valign="top"><img width="65%"
			src="<c:url value="/resources/images/swf.jpg"/>" /></td>
		<td><c:url var="swf" value="/swf" /> <form:form method="POST"
				action="${swf}" modelAttribute="swfTO">
				<table border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td><form:input type="text" size="1" maxlength="1"
									path="i00" class="tableBox" onclick="clearError();" /></td>
							<td><form:input type="text" size="1" maxlength="1"
									path="i01" class="tableBox" onclick="clearError();" /></td>
							<td><form:input type="text" size="1" maxlength="1"
									path="i02" class="tableBox" onclick="clearError();" /></td>
							<td><form:input type="text" size="1" maxlength="1"
									path="i03" class="tableBox" onclick="clearError();" /></td>
						</tr>
						<tr>
							<td><form:input type="text" size="1" maxlength="1"
									path="i10" class="tableBox" onclick="clearError();" /></td>
							<td><form:input type="text" size="1" maxlength="1"
									path="i11" class="tableBox" onclick="clearError();" /></td>
							<td><form:input type="text" size="1" maxlength="1"
									path="i12" class="tableBox" onclick="clearError();" /></td>
							<td><form:input type="text" size="1" maxlength="1"
									path="i13" class="tableBox" onclick="clearError();" /></td>
						</tr>
						<tr>
							<td><form:input type="text" size="1" maxlength="1"
									path="i20" class="tableBox" onclick="clearError();" /></td>
							<td><form:input type="text" size="1" maxlength="1"
									path="i21" class="tableBox" onclick="clearError();" /></td>
							<td><form:input type="text" size="1" maxlength="1"
									path="i22" class="tableBox" onclick="clearError();" /></td>
							<td><form:input type="text" size="1" maxlength="1"
									path="i23" class="tableBox" onclick="clearError();" /></td>
						</tr>
						<tr>
							<td><form:input type="text" size="1" maxlength="1"
									path="i30" class="tableBox" onclick="clearError();" /></td>
							<td><form:input type="text" size="1" maxlength="1"
									path="i31" class="tableBox" onclick="clearError();" /></td>
							<td><form:input type="text" size="1" maxlength="1"
									path="i32" class="tableBox" onclick="clearError();" /></td>
							<td><form:input type="text" size="1" maxlength="1"
									path="i33" class="tableBox" onclick="clearError();" /></td>
						</tr>
						<tr>
							<td colspan="4"><table width="100%">
									<tr>

										<td id="errorblock" colspan=2 class="errorblock" style="width: 70%;"
											align="left">${error}</td>

										<td align="right" style="padding-top: 5px;"><input
											type="submit" value="Submit"></td>
									</tr>
								</table></td>
						</tr>
					</tbody>
				</table>
			</form:form></td>
	</tr>
</table>
<script type="text/javascript">
	function clearError() {
		document.getElementById('errorblock').innerHTML = '';
	}
</script>