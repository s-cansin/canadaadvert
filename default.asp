<!-- #include file="metatags.asp" -->
<LINK REL=STYLESHEET TYPE="text/css" HREF="style/style.css">
<script type="text/javascript" src="style/fade.js"></script>
<script language="JavaScript">
function popup(address){
window.open(address, 'popup', 'width=500, height=400, menubar=no, scrollbars=yes, toolbar=no, location=no, resizable=no, top=0, left=0');
}
function map(location)
{
window.open('map.asp?' + location,'popup','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no, resizable=no,width=377,height=297')
}
</script>


<%
query=request.querystring

if len(query)>0 then
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
querylen=instr(1,query,"/")

if querylen=0 then 
query=query & "/"
querylen=len(query)
end if

province=left(query,querylen-1)
category=right(query, len(query)-querylen)

if right(category,1)="/" then category=left(category,len(category)-1)



provinces=array("AB","BC","MB","NB","NL","NT","NS","NU","ON","PE","QC","SK","YK","Outside_Canada")

p_ok="false"

for i= 0 to UBOUND(provinces)

if province=provinces(i) then
p_ok="true"
end if

next















if p_ok="false" then

categories=array("Vehicle","Computer_Electronics","Real_Estate","Employment_Career","Other","Journey_Vacation","Internet","Software","Financial","Services")
c_ok="false"










for q=0 to UBOUND(categories)

if province=categories(q) then

c_ok="true"
end if

next

if c_ok="true" then
category=province
province=""

else

category=""
province=""
end if





end if















''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
end if
%>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" height="694" style="border-bottom-width: 0">
<tr>
<td width="100%" align="left" valign="top" style="border-bottom-style: none; border-bottom-width: medium" height="694">

<div style="border-left: 4px solid #f1f1f1;border-right: 4px solid #f1f1f1;">
<div style="border-left: 1px solid #dadada;border-right: 1px solid #dadada;">


<div style="border-left: 1px solid #597DC3;border-right: 1px solid #597DC3;margin: 0;padding: 0; width: 100%">
<div style="background: #FFFFFF url('images/bg/hdr_back.gif') ;width: 100%;height: 90px;margin: 0;padding: 0 ">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
  <tr>
    <td width="37%"><img border="0" src="images/logo/logo.gif"></td>
    <td width="63%" valign="top">&nbsp;<P align=center>
    <span style="letter-spacing: -1pt">
    <FONT color=#454545 face="Georgia" size="4">
    <code>Free Classified Ad Service for Canadian People</code></FONT></span></P>
</td>
  </tr>
</table>
</div>
<div style="background: #b0c4e8 url('images/bg/mid_hdr_back.gif');width: 100%;height: 14px;margin: 0;padding: 0 "></div>
</div>
<div style="background: #FCFCFC url('images/bg/nav_back.gif');width: 100%;height: 29px">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="24">
  <tr>
    <td width="61%" height="24">
    <p align="center">
    <a href="post/<%if province<>"" or category<>"" then response.write "?"%><%if province<>"" then response.write province & "/"%><%if category<>"" then response.write category & "/"%>">Post your Classified AD for FREE</a></td>
    <td width="20%" height="24">
    <p align="center">
    <%if province="" and category="" then%><font color="#808080">Mainpage</font>
    <%else
    response.write "<a href=default.asp>Mainpage</a>"
    end if%> <font color="#333333">|</font> <a href="policy.asp">
    Policy</a> <font color="#333333">|</font> <a href="contact.asp">ContactUs</a> </td>
  </tr>
</table></div>
<table align="center" cellpadding="3" cellspacing="1" border="0" width="692" height="598">
<tr>

<td width="759" height="591" valign="top">
<table style="background: #eeeeee;" cellpadding="3" cellspacing="1" border="0" width="758" height="168">
<tr>
  <td style="background: #ffffff; border-left: 1px solid #ffffff;" width="748" height="161">
	<p align="center"><b>&nbsp;</b></p>
	<p align="center">
	<a href="post/<%if province<>"" or category<>"" then response.write "?"%><%if province<>"" then response.write province & "/"%><%if category<>"" then response.write category & "/"%>"><img border="0" src="images/logo/post.jpg" width="487" height="211" alt="Post your Classified AD for Free - Rapid"></a></p>
	<p>&nbsp;</p>
<p align="right" style="margin-top: 0; margin-bottom: 0">
<%
if category="" then%> </p>
    
    <p style="margin-top: 0; margin-bottom: 0" align="right">

   </p>
    
      <center>

    <table style="border-collapse:collapse" cellpadding="6" cellspacing="0" border="1" width="732" style="border-collapse: collapse" bordercolor="#C0C0C0" height="232">

	<tr>
		<td style="	background: #f9f9f9 url('images/bg/cat_back.gif') repeat-x top left;	color: #4d4d4d;	font-style:normal; font-variant:normal; font-weight:bold; font-size:10pt; font-family:Tahoma; border-bottom-style:none; border-bottom-width:medium" colspan="6" width="718" height="15">
        <p align="center" style="margin-top: 0; margin-bottom: 0">CLASSIFIED CATEGORIES</td>
	</tr>
	<tr>
		<td style="	background: #ffffff;	color: #626262;	border-top: medium none #ffffff;; font-style:normal; font-variant:normal; font-weight:Bold; font-size:16px; font-family:Arial" colspan="6" width="718" height="202" valign="top">
			<br>
			
			<table border="0" width="100%">
	<tr>
		<td>
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-width: 0" bordercolor="#C0C0C0" width="100%" height="101">
  <tr>
    <td width="99" height="101" style="border-left-style: none; border-left-width: medium; border-right-style: solid; border-right-width: 0; border-top: medium none #808080; border-bottom: medium none #808080" align="center">&nbsp;</td>
    <td class="category" onclick="window.location.href=('default.asp?<%if province<>"" then response.write province & "/"%>Vehicle/');" width="150" height="101" style="border-bottom:1px solid #C0C0C0; border-top:1px solid #C0C0C0; " align="center" bgcolor="#FCFCFC" onmouseover="style.background='#F1F1F1';" onmouseout="style.background='#FCFCFC';">
    <p style="margin-top: 0; margin-bottom: 0">
            <img border="0" src="images/cat/cat_car.gif" width="60" height="60"></p>
    <p style="margin-top: 0; margin-bottom: 0">
    Vehicle
    </td>
    <td width="35" height="101" style="border-top: 1px none #C0C0C0; border-bottom: 1px none #C0C0C0; " align="center">&nbsp;</td>
    <td class="category" onclick="window.location.href=('default.asp?<%if province<>"" then response.write province & "/"%>Computer_Electronics/');" width="150" height="101" style="border-bottom:1px solid #C0C0C0; border-top:1px solid #C0C0C0; " align="center" bgcolor="#FCFCFC"  onmouseover="style.background='#F1F1F1';" onmouseout="style.background='#FCFCFC';">
    <p style="margin-top: 0; margin-bottom: 0">
            <img border="0" src="images/cat/cat_comp.gif" width="60" height="60"></p>
    <p style="margin-top: 0; margin-bottom: 0">
    Computer Electronics</td>
    <td width="35" height="101" style="border-top: 1px none #C0C0C0; border-bottom: 1px none #C0C0C0; " align="center">&nbsp;</td>
    <td class="category" onclick="window.location.href=('default.asp?<%if province<>"" then response.write province & "/"%>Real_Estate/');" width="150" height="101" style="border-bottom:1px solid #C0C0C0; border-top:1px solid #C0C0C0; " align="center" bgcolor="#FCFCFC"  onmouseover="style.background='#F1F1F1';" onmouseout="style.background='#FCFCFC';">
    <p style="margin-top: 0; margin-bottom: 0">
            <img border="0" src="images/cat/cat_rest.gif" width="60" height="60"></p>
    <p style="margin-top: 0; margin-bottom: 0">
 
    Real Estate</td>
    <td width="35" height="101" style="border-top: 1px none #C0C0C0; border-bottom: 1px none #C0C0C0; " align="center">&nbsp;</td>
    <td class="category" onclick="window.location.href=('default.asp?<%if province<>"" then response.write province & "/"%>Employment_Career/');" width="150" height="101" style="border-bottom:1px solid #C0C0C0; border-top:1px solid #C0C0C0; " align="center" bgcolor="#FCFCFC" onmouseover="style.background='#F1F1F1';" onmouseout="style.background='#FCFCFC';">
    <p style="margin-top: 0; margin-bottom: 0">
    <img border="0" src="images/cat/cat_emp.jpg" width="60" height="60"></p>
    <p style="margin-top: 0; margin-bottom: 0">
    
    Employment</p>
    <p style="margin-top: 0; margin-bottom: 0">    
    Career</td>
    <td width="35" height="101" style="border-top: 1px none #C0C0C0; border-bottom: 1px none #C0C0C0; " align="center">&nbsp;</td>
    <td class="category" onclick="window.location.href=('default.asp?<%if province<>"" then response.write province & "/"%>Other/');" width="150" height="101" style="border-bottom:1px solid #C0C0C0; border-top:1px solid #C0C0C0; " align="center" bgcolor="#FCFCFC" onmouseover="style.background='#F1F1F1';" onmouseout="style.background='#FCFCFC';">
    <p style="margin-top: 0; margin-bottom: 0">
            <img border="0" src="images/cat/cat_oth.PNG" width="60" height="60"></p>
    <p style="margin-top: 0; margin-bottom: 0">    
    Other</td>
    <td width="99" height="101" style="border-top: 1px none #C0C0C0; border-bottom: 1px none #C0C0C0; border-right-style:none; border-right-width:medium" align="center">&nbsp;</td>
  </tr>
</table>

			<p style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
			<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-width: 0" bordercolor="#C0C0C0" width="100%" height="101">
  <tr>
    <td width="99" height="101" style="border-left-style: none; border-left-width: medium; border-right-style: solid; border-right-width: 0; border-top: medium none #808080; border-bottom: medium none #808080" align="center">&nbsp;</td>
    <td class="category" onclick="window.location.href=('default.asp?<%if province<>"" then response.write province & "/"%>Financial/');" width="150" height="101" style="border-bottom:1px solid #C0C0C0; border-top:1px solid #C0C0C0; " align="center" bgcolor="#FCFCFC" onmouseover="style.background='#F1F1F1';" onmouseout="style.background='#FCFCFC';">
    <p style="margin-top: 0; margin-bottom: 0">
            <img border="0" src="images/cat/cat_fin.PNG" width="60" height="60"></p>
    <p style="margin-top: 0; margin-bottom: 0">
    Financial
    </td>
    <td width="35" height="101" style="border-top: 1px none #C0C0C0; border-bottom: 1px none #C0C0C0; " align="center">&nbsp;</td>
    <td class="category" onclick="window.location.href=('default.asp?<%if province<>"" then response.write province & "/"%>Services/');" width="150" height="101" style="border-bottom:1px solid #C0C0C0; border-top:1px solid #C0C0C0; " align="center" bgcolor="#FCFCFC"  onmouseover="style.background='#F1F1F1';" onmouseout="style.background='#FCFCFC';">
    <p style="margin-top: 0; margin-bottom: 0">
            <img border="0" src="images/cat/cat_serv.gif" width="46" height="46"></p>
    <p style="margin-top: 0; margin-bottom: 0">Services</td>
    <td width="35" height="101" style="border-top: 1px none #C0C0C0; border-bottom: 1px none #C0C0C0; " align="center">&nbsp;</td>
    <td class="category" onclick="window.location.href=('default.asp?<%if province<>"" then response.write province & "/"%>Software/');" width="150" height="101" style="border-bottom:1px solid #C0C0C0; border-top:1px solid #C0C0C0; " align="center" bgcolor="#FCFCFC"  onmouseover="style.background='#F1F1F1';" onmouseout="style.background='#FCFCFC';">
    <p style="margin-top: 0; margin-bottom: 0">
            <img border="0" src="images/cat/cat_soft.png" width="60" height="60"></p>
    <p style="margin-top: 0; margin-bottom: 0">
 
    Software</td>
    <td width="35" height="101" style="border-top: 1px none #C0C0C0; border-bottom: 1px none #C0C0C0; " align="center">&nbsp;</td>
    <td class="category" onclick="window.location.href=('default.asp?<%if province<>"" then response.write province & "/"%>Internet/');" width="150" height="101" style="border-bottom:1px solid #C0C0C0; border-top:1px solid #C0C0C0; " align="center" bgcolor="#FCFCFC" onmouseover="style.background='#F1F1F1';" onmouseout="style.background='#FCFCFC';">
    <p style="margin-top: 0; margin-bottom: 0">
    <img border="0" src="images/cat/cat_inter.JPG" width="60" height="60"></p>
    <p style="margin-top: 0; margin-bottom: 0">Internet</td>
    <td width="35" height="101" style="border-top: 1px none #C0C0C0; border-bottom: 1px none #C0C0C0; " align="center">&nbsp;</td>
    <td class="category" onclick="window.location.href=('default.asp?<%if province<>"" then response.write province & "/"%>Journey_Vacation/');" width="150" height="101" style="border-bottom:1px solid #C0C0C0; border-top:1px solid #C0C0C0; " align="center" bgcolor="#FCFCFC" onmouseover="style.background='#F1F1F1';" onmouseout="style.background='#FCFCFC';">
    <p style="margin-top: 0; margin-bottom: 0">
            <img border="0" src="images/cat/cat_trvl.PNG" width="65" height="67"></p>
    <p style="margin-top: 0; margin-bottom: 0">
   Journey</p>
    <p style="margin-top: 0; margin-bottom: 0">
    Vacation</td>
    <td width="99" height="101" style="border-top: 1px none #C0C0C0; border-bottom: 1px none #C0C0C0; border-right-style:none; border-right-width:medium" align="center">&nbsp;</td>
  </tr>
</table></td>
	</tr>
</table>


			<p align="right">&nbsp;		<a href="http://co.mments.com/track?url=http://www.canadaadvert.com&title=Canada Advert - Classified ADs for Canadians">
		<img border="0"  alt="co.mments" src="images/external/co.gif" width="16" height="16"></a>&nbsp;
		<a href="http://del.icio.us/post?url=http://www.canadaadvert.com&title=Canada Advert - Classified ADs for Canadians">
		<img border="0"  alt="del.icio.us" src="images/external/delicious.png"></a>&nbsp;
		<a href="http://digg.com/submit?phase=2&url=http://www.canadaadvert.com&title=Canada Advert - Classified ADs for Canadians">
		<img border="0"  alt="digg" src="images/external/digg.png"></a>&nbsp;
		<a href="http://www.furl.net/storeIt.jsp?u=http://www.canadaadvert.com&t=Canada Advert - Classified ADs for Canadians">
		<img border="0"  alt="Furl" src="images/external/furl.png"></a>&nbsp;
		<a href="http://www.newsvine.com/_tools/seed&save?u=http://www.canadaadvert.com&h=Canada Advert - Classified ADs for Canadians">
		<img border="0"  alt="NewsVine" src="images/external/newsvine.png"></a>&nbsp;
		<a href="http://reddit.com/submit?url=http://www.canadaadvert.com&title=Canada Advert - Classified ADs for Canadians">
		<img border="0"  alt="Reddit" src="images/external/reddit.png"></a>&nbsp;
		<a href="http://www.spurl.net/spurl.php?url=http://www.canadaadvert.com&title=Canada Advert - Classified ADs for Canadians">
		<img border="0"  alt="Spurl" src="images/external/spurl.png"></a>&nbsp;
		<a href="http://tailrank.com/share/?text=&link_href=http://www.canadaadvert.com&title=Canada Advert - Classified ADs for Canadians">
		<img border="0"  alt="TailRank" src="images/external/tailrank.png"></a>&nbsp;
		<a href="http://wists.com/r.php?c=&r=http://www.canadaadvert.com&title=Canada Advert - Classified ADs for Canadians">
		<img border="0"  alt="Wists" src="images/external/wists.png"></a>&nbsp; 

</p>


</td>
	</tr></table>
	   </center>
 
	<%end if%>
	

   
	
<p align="center">

<%if province="" then%>
<img border="0" src="images/map/MAP.jpg" USEMAP="#map">
<MAP NAME="map">
<AREA title="British Columbia" SHAPE=POLY COORDS="66, 213, 28, 200, 17, 179, 16, 161, 24, 148, 21, 124, 25, 115, 70, 138, 61, 161, 54, 177, 70, 207, 68, 211" href="default.asp?BC/<%if category<>"" then response.write category & "/"%>" >
<AREA title="Alberta" SHAPE=POLY COORDS="90, 219, 109, 146, 73, 140, 68, 146, 57, 177, 69, 202, 67, 215, 88, 219" href="default.asp?AB/<%if category<>"" then response.write category & "/"%>" >
<AREA title="Saskatchewan" SHAPE=POLY COORDS="137, 226, 140, 152, 109, 148, 92, 221, 125, 226, 134, 227" href="default.asp?SK/<%if category<>"" then response.write category & "/"%>" >
<AREA title="Manitoba" SHAPE=POLY COORDS="168, 227, 168, 202, 196, 175, 189, 171, 180, 174, 177, 165, 169, 161, 169, 154, 141, 152, 139, 191, 136, 228" href="default.asp?MB/<%if category<>"" then response.write category & "/"%>" >
<AREA title="Yukon Territory" SHAPE=POLY COORDS="58, 128, 58, 123, 49, 119, 50, 92, 52, 75, 51, 65, 56, 59, 51, 51, 6, 97, 13, 108, 25, 115, 41, 122, 54, 127" href="default.asp?YK/<%if category<>"" then response.write category & "/"%>" >
<AREA title="Nortwest Territories" SHAPE=POLY COORDS="133, 121, 93, 97, 110, 88, 104, 81, 90, 71, 78, 63, 56, 61, 55, 76, 54, 92, 50, 106, 54, 115, 60, 131, 101, 145, 125, 150, 136, 150, 142, 148, 140, 124" href="default.asp?NT/<%if category<>"" then response.write category & "/"%>" >
<AREA title="Ontario" SHAPE=POLY COORDS="254, 245, 244, 241, 231, 240, 222, 231, 213, 228, 202, 228, 196, 232, 184, 231, 171, 229, 170, 203, 173, 199, 196, 175, 212, 181, 225, 188, 233, 201, 242, 205, 246, 211, 252, 233, 282, 241, 274, 253, 260, 260, 247, 270, 250, 253, 257, 248" href="default.asp?ON/<%if category<>"" then response.write category & "/"%>" >
<AREA title="Nunavut" SHAPE=POLY COORDS="167, 153, 196, 107, 174, 86, 153, 102, 105, 92, 96, 96, 142, 125, 144, 151" href="default.asp?NU/<%if category<>"" then response.write category & "/"%>" >
<AREA title="Quebec" SHAPE=POLY COORDS="233, 128, 249, 126, 264, 131, 273, 144, 283, 141, 284, 133, 304, 160, 295, 163, 288, 163, 289, 173, 304, 182, 314, 182, 318, 177, 339, 165, 342, 170, 334, 180, 310, 193, 307, 200, 301, 208, 298, 223, 301, 235, 285, 240, 268, 239, 252, 232, 249, 213, 248, 200, 246, 190, 241, 184, 251, 172, 239, 154, 236, 146" href="default.asp?QC/<%if category<>"" then response.write category & "/"%>" >
<AREA title="Nova Scotia" SHAPE=POLY COORDS="332, 228, 340, 239, 371, 240, 371, 202, 352, 205, 336, 215" href="default.asp?NS/<%if category<>"" then response.write category & "/"%>" >
<AREA title="New Brunswick" SHAPE=POLY COORDS="322, 209, 309, 211, 306, 228, 307, 247, 331, 247, 334, 238, 326, 227, 331, 220, 332, 211" href="default.asp?NB/<%if category<>"" then response.write category & "/"%>" >
<AREA title="Newfoundland and Labrador" SHAPE=POLY COORDS="344, 149, 350, 194, 371, 183, 386, 184, 374, 149, 348, 139" href="default.asp?NL/<%if category<>"" then response.write category & "/"%>" >
<AREA title="Prince Edward Island" SHAPE=POLY COORDS="327, 208, 344, 208, 354, 202, 343, 189, 323, 192" href="default.asp?PE/<%if category<>"" then response.write category & "/"%>" >
</MAP>

<p align="center">
<a href="default.asp?Outside_Canada/<%if category<>"" then response.write category & "/"%>">
Outside Canada</a><%
end if
%>
<br><br>  
<%

category=replace(category,"_"," ")

select case province
case "AB"
province="Alberta"
case "BC"
province="British Columbia"
case "MB"
province="Manitoba"
case "NB"
province="New Brunswick"
case "NL"
province="Newfoundland and Labrador"
case "NT"
province="Northwest Territories"
case "NS"
province="Nova Scotia"
case "NU"
province="Nunavut"
case "ON"
province="Ontario"
case "PE"
province="Prince Edward Island"
case "QC"
province="Quebec"
case "SK"
province="Saskatchewan"
case "YK"
province="Yukon Territory"
case "Outside_Canada"
province="Outside Canada"
end select



if province<>"" then
    
if province="Outside Canada" then
inwhere=" " & UCASE(province)
else
inwhere=" IN " & UCASE(province)
end if


end if
%>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="110">
  <tr>
    <td width="78%" height="110"><p align="center">
<b><font color="#515151" face="Trebuchet MS" size="4">
<%if category<>"" then 
response.write UCASE(category) 
else 
response.write "LAST" 
end if%> CLASSIFIEDS<%=inwhere%>
</font>
</b>
</p>
</td>
<%
if len(inwhere)<>0 and not province="Outside Canada" then
%>

    <td width="22%" height="110"><p style="margin-top: 0; margin-bottom: 0" align="center">
<img src="images/flag/<%=replace(province," ","_")%>.gif" width="120" height="76"></p>
<p style="margin-top: 0; margin-bottom: 0" align="center"><u>
<font size="2" color="#3333CC"><%=province%></font></u></p></td>

<%end if%>

  </tr>
</table>





<%

set xml = Server.CreateObject("Microsoft.XMLDOM")
xml.async = false
xml.load(Server.MapPath("xml/adverts.xml"))

set xsl = Server.CreateObject("Microsoft.XMLDOM")
xsl.async = false
xsl.load(Server.MapPath("style/adverts.xsl"))




Set variableNode = xsl.SelectSingleNode("//*[@name='province']")
if province="Outside Canada" then
variableNode.text ="-"
else
variableNode.text = province
end if


Set variableNode2 = xsl.SelectSingleNode("//*[@name='category']")
variableNode2.text = category


xmldata=xml.transformNode(xsl)


if len(xmldata)=0 then

if province<>"" and category="" then
ifvar="province"
end if

if category<>"" and province="" then
ifvar="category"
end if

if category<>"" and province<>"" then
ifvar="category and province"
end if

%>
<p align="center">There is no classified ad on this <%=ifvar%>...
<%else
response.write xmldata
end if%>
<br><br><br>
<%if category<>"" or province<>"" then%><p align="right">
<a href="javascript: history.back(-1)" align="right">
<span style="vertical-align: super;">
<font color="#597DC3">Go Back</font></span><img border="0" src="images/arrows.gif">
</a> </p>
<%end if%>
</td>
</tr>
</table>

</td>


&nbsp;<p>



</td>
</tr>
</table>







</p>


<div style="background: #FFFFFF;color: #4d4d4d;" style="width:100%; text-align:right">
<div style="width: 100%; height:80; padding-left:25px; padding-right:25px; padding-top:0px; padding-bottom:0px">

<p style="text-align: center; margin-top:0; margin-bottom:0">
&nbsp;</p>



<p style="text-align: center; margin-top:0; margin-bottom:0">

<a href="javascript: popup('advice.asp');" title="Advise site to your friend">
<img border="0" src="images/advice.gif"></a>
<a href="javascript:window.print()" title="Print this page">
<img border="0" src="images/print.gif"></a></p>


<p style="text-align: center; margin-top:0; margin-bottom:0">

&nbsp;</p>



<p style="text-align: center; margin-top:0; margin-bottom:0">

</p>


<p style="text-align: center; margin-top:0; margin-bottom:0">

&nbsp;
<font face="Arial" style="font-size: 1pt;" color="#FFFFFF">
  <%=description%>  <%=replace(keywords,","," ")%> Regina Advert Saskatchewan Advert vacation homes find a home Free Classified Ad Service for Canadian People
  </font>
  <br>
</p>



</td>
  </tr>
</table>

</div>
</div>












<p align="center"><!-- #include file="footer.asp" --><!-- #include file="statics.asp" -->