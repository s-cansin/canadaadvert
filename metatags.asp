<%
strFile = Server.MapPath("xml/metatags.xml") 
Set objXML = Server.CreateObject("Microsoft.XMLDOM") 

  objXML.async = False 
  objXML.Load (strFile) 
  Set AllItems= objXML.selectNodes("//metatags")   
  Set objRoot = objXML.documentElement 

For I = (AllItems.Length - 1) to 0 step - 1
	description= AllItems(I).selectNodes("description")(0).text
	keywords= AllItems(I).selectNodes("keywords")(0).text
next

 Set objRoot = Nothing
  Set AllItems = Nothing
  Set objXML = Nothing
  strFile=""
%>
<head>
<title>Canada Advert - Free Classified Ad for North America & Canada</title>
<meta name="description" content="<%=description%>">
<meta name="keywords" content="<%=keywords%>">
<meta name="author" content="Canada Advert">
<meta name="document-state" content="Dynamic">
<meta name="robots" content="all">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta http-equiv="Content-Language" content="en-ca">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
</head>