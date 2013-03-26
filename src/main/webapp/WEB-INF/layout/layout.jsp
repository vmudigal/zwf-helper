<!-- @author: Vijayendra Mudigal -->

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>
</head>
<body style="height: 100%; width: 100%;">
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<table border="0" style="height: 100%; width: 100%;">
		<tr class="global-nav">
			<td height="40px" colspan="4" align="center"><table width="82%">
					<tr>
						<td><tiles:insertAttribute name="header" /></td>
						<td align="right"><table>
								<tr>
									<td><div class="fb-like"
											data-href="http://zwf-helper.appspot.com" data-send="false"
											data-layout="button_count" data-width="400"
											data-show-faces="true" data-colorscheme="dark"></div></td>
									<td style="padding-left: 10px;">
										<!-- Place this tag where you want the +1 button to render. -->
										<div class="g-plusone" data-size="medium"
											data-href="http://zwf-helper.appspot.com"></div> <!-- Place this tag after the last +1 button tag. -->
										<script type="text/javascript">
											(function() {
												var po = document
														.createElement('script');
												po.type = 'text/javascript';
												po.async = true;
												po.src = 'https://apis.google.com/js/plusone.js';
												var s = document
														.getElementsByTagName('script')[0];
												s.parentNode
														.insertBefore(po, s);
											})();
										</script>
									</td>
								</tr>
							</table></td>
					</tr>
				</table></td>
		</tr>
		<tr valign="top">
			<td width="15%"></td>
			<td width="10%" height="85%" style="border-right: 1px solid grey;"
				align="center"><tiles:insertAttribute name="menu" /></td>
			<td width="60%" style="padding: 25px"><tiles:insertAttribute
					name="body" /></td>
			<td width="15%"></td>
		</tr>
		<tr class="global-nav">
			<td style="height: 20px; font-size: 11px" colspan="4"><tiles:insertAttribute
					name="footer" /></td>
		</tr>
	</table>
</body>
</html>
