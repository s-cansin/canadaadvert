<html>
<head>
<meta http-equiv="Content-Language" content="tr">
<meta name="robots" content="noindex,nofollow">
</head>
<body></body></html>
<%
if Request.QueryString("pass_word")="dsfsdfor6i95çfTÝfsç.dfk4460;4-ahbsxndcmcxvc" or session("jbhjdkjas!wkel2398y98jnöcmnöm")="'^+dsfsdfor6ý95çf;Ýfsç.dfk4460ý4uahbsxndcmöxvc" then

if session("jbhjdkjas!wkel2398y98jnöcmnöm")<>"'^+dsfsdfor6ý95çf;Ýfsç.dfk4460ý4uahbsxndcmöxvc" then
session("jbhjdkjas!wkel2398y98jnöcmnöm")="'^+dsfsdfor6ý95çf;Ýfsç.dfk4460ý4uahbsxndcmöxvc"
response.redirect "classified_list.asp"
end if

strAid=Request.QueryString("delid")
strEdit=Request.QueryString("task_id")
strEditOk=Request.QueryString("edit")
strEmail= Request.QueryString("sendmail")   
strRes= Request.QueryString("research")   

if strRes<>"" then call research
if strEmail<>"" then call sendmail
if strEdit<>"" or strEditOk="ok" then call edit
if strAid <> "" then call delete
if strAid ="" and strEdit="" and strEditOk="" then call list

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
sub research

ResID= Request.QueryString("research")  


   
  Dim strFile  
  strFile = Server.MapPath("../xml/adverts.xml") 
  
  Dim msg
  msg = ""

 
  Set objXML = Server.CreateObject("Microsoft.XMLDOM") 
  

            
  objXML.async = False 
  objXML.Load (strFile) 
  Set AllItems = objXML.selectNodes("//advert")   
  Set objRoot = objXML.documentElement  


 Set objNode = objRoot.SelectSingleNode("advert[id='" & ResID & "']")


 
  Set label_str = objnode.selectNodes("label")
  Set province_str = objnode.selectNodes("province")
  Set country_str =objnode.selectNodes("country")
  Set city_district_str = objnode.selectNodes("city_district")
  Set price_str = objnode.selectNodes("price")
  Set expression_str= objnode.selectNodes("expression")
  Set name_str= objnode.selectNodes("name")
  Set email_str= objnode.selectNodes("email")
  Set phone_str= objnode.selectNodes("phone")
 
     
label=label_str(0).text
name=name_str(0).text
email=email_str(0).text
price=price_str(0).text
country=country_str(0).text
province=province_str(0).text
phone=phone_str(0).text
city_district=city_district_str(0).text
expression=expression_str(0).text
%>
<div align="center">
<table border="1" width="97%">
	<tr>
		<td width="14%">
		<p align="center"><b><u>Type</u></b></td>
		<td width="53%">
		<p align="center"><b><u>Data</u></b></td>
		<td width="30%">
		<p align="center"><b><u>Research Actions</u></b></td>
	</tr>
	
<tr>
		<td width="14%"><i>&nbsp;Label:</i></td>
		<td width="53%">&nbsp;<%=label%></td>
		<td width="30%">&nbsp;</td>
	</tr>
	<tr>
		<td width="14%"><i>&nbsp;Name:</i></td>
		<td width="53%">&nbsp;<%=name%></td>
		<td width="30%">&nbsp;</td>
	</tr>
	<tr>
		<td width="14%"><i>&nbsp;Email:</i></td>
		<td width="53%">&nbsp;<%=email%></td>
		<td width="30%">&nbsp;</td>
	</tr>
	<tr>
		<td width="14%"><i>&nbsp;Price:</i></td>
		<td width="53%">&nbsp;<%=price%></td>
		<td width="30%">&nbsp;</td>
	</tr>
	<tr>
		<td width="14%"><i>&nbsp;Country:</i></td>
		<td width="53%">&nbsp;<%=country%></td>
		<td width="30%">&nbsp;</td>
	</tr>
<tr>
		<td width="14%"><i>&nbsp;Province:</i></td>
		<td width="53%">&nbsp;<%=province%></td>
		<td width="30%">&nbsp;</td>
	</tr>
<tr>
		<td width="14%"><i>&nbsp;City/District:</i></td>
		<td width="53%">&nbsp;<%=city_district%></td>
		<td width="30%">&nbsp;</td>
	</tr>
	<tr>
		<td width="14%"><i>&nbsp;Phone:</i></td>
		<td width="53%">&nbsp;<%=phone%></td>
		<td width="30%">&nbsp;</td>
	</tr>
	<tr>
		<td width="14%" height="64"><i>&nbsp;Expression:</i></td>
		<td width="53%" height="64" align="left" valign="top">&nbsp;<%=expression%></td>
		<td width="30%" height="64">&nbsp;</td>
	</tr>
<tr>
		<td colspan="3">
		<table border="0" width="100%">
			<tr>
				<td width="794">
				<p align="center">
				<input type="button" value="Flag as not Canada Located">&nbsp;
				<input type="button" value="Flag as Canada Located"> </td>
				<td>
				<p align="center"><input type="button" value="Cancel"></td>
			</tr>
		</table>
		</td>
	</tr>

</table>
</div>
<%
response.end
end sub

sub sendmail
if request.form("emailfrom")="" or request.form("emailto")="" then
%>
<style>


.bdrtext {border:1px;
         border-style: solid; 
         border-top-width: 1px; 
         border-right-width: 1px;
         border-bottom-width: 1px; 
         border-left-width: 1px;
         width:300;
         font-family: Verdana, Arial, Helvetica, sans-serif;
         background-color: #FFFFFF;}

</style>

<form method="post" action="classified_list.asp?sendmail=<%=Request.QueryString("sendmail")%>">

<table align="center" border="1" width="90%" height="309">
	<tr>
		<td colspan="2">
		<p align="center"><b>EMAIL SENDER</b></p></td>
	</tr>
	<tr>
		<td width="17%">&nbsp;To:</td>
		<td width="80%">
<p align="center">
<input type="text" class=bdrtext name="emailto" size="20" value="<%=Request.QueryString("sendmail")%>"></td>
	</tr>
	<tr>
		<td width="17%">&nbsp;From:</td>
		<td width="80%">
<p align="center">
<input type="text" class=bdrtext name="emailfrom" size="20" value="canadaadvert@aim.com"></td>
	</tr>
	<tr>
		<td width="17%">&nbsp;Subject:</td>
		<td width="80%">
<p align="center">
<input type="text" class=bdrtext name="subject" size="20"></td>
	</tr>
	<tr>
		<td width="17%">&nbsp;Message:</td>
		<td width="80%">
		<p align="center"><textarea class=bdrtext rows="10" name="message" cols="43"> Dear <%=Request.QueryString("sendmailname")%>,</textarea></td>
	</tr>
	<tr>
		<td width="96%" colspan="2" height="37">
		<p align="center">
<input type="submit" class=bdrtext value="Send Mail"></td>
	</tr>
</table>

</form>
<%response.end
else
     
   Set objMail = Server.CreateObject("CDONTS.Newmail")  
 

      objMail.BodyFormat = html  
      objMail.MailFormat = html  
      objMail.To = request.form("emailto")  
      objMail.Subject = request.form("subject")
      objMail.From = request.form("emailfrom")  
      objMail.Body = request.form("message")
      objMail.Send  


   Set objNewMail = Nothing  
     
%>
<body onload="window.close();" />
<%

end if
end sub




sub delete
    strAid=Request.QueryString("delid")
    
strXMLFile=server.MapPath("../xml/adverts.xml")

 set objXML = Server.CreateObject("Microsoft.XMLDOM")

 objXML.async = false

 objXML.load strXMLFile

 Set objRoot = objXML.documentElement

 Set objNode = objRoot.SelectSingleNode("advert[id='" & strAid & "']")
 
 objRoot.removeChild(objNode)

 objXML.save strXMLFile
 
 response.redirect "classified_list.asp"

end sub
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

sub edit

    strEdit=Request.QueryString("task_id")
    
  Dim strFile  
  strFile = Server.MapPath("../xml/adverts.xml") 
  
  Dim msg
  msg = ""

 
  Set objXML = Server.CreateObject("Microsoft.XMLDOM") 
  
  TASK_ID=Trim(request("task_id"))
name = Trim(Request("name"))
email = Trim(Request("email"))
phone = Trim(Request("phone"))
addition_date=Trim(Request("addition_date"))
expression= Trim(Request("expression"))
expiration= Trim(Request("expiration"))
price= Trim(Request("price"))
city_district= Trim(Request("city_district"))
country = Trim(Request("country"))
province = Trim(Request("province"))
label= Trim(Request("label"))
category = Trim(Request("category"))
      


  
if request.querystring("task_id")="" then

            
  objXML.async = False 
  objXML.Load (strFile) 
  Set AllItems = objXML.selectNodes("//advert")   
  Set objRoot = objXML.documentElement  


 Set objNode = objRoot.SelectSingleNode("advert[id='" & TASK_ID & "']")


 Set category_str = objnode.selectNodes("category")
 Set label_str = objnode.selectNodes("label")
 Set province_str = objnode.selectNodes("province")
 Set country_str =objnode.selectNodes("country")
 Set city_district_str = objnode.selectNodes("city_district")
 Set price_str = objnode.selectNodes("price")
 Set expiration_str= objnode.selectNodes("expiration")
 Set expression_str= objnode.selectNodes("expression")
 Set name_str= objnode.selectNodes("name")
 Set email_str= objnode.selectNodes("email")
 Set phone_str= objnode.selectNodes("phone")
 Set addition_date_str= objnode.selectNodes("addition_date")
           

name_str(0).text=name
email_str(0).text=email
phone_str(0).text=phone
addition_date_str(0).text=addition_date
expression_str(0).text=expression
expiration_str(0).text=expiration
price_str(0).text=price
city_district_str(0).text=city_district
country_str(0).text=country
province_str(0).text=province
label_str(0).text=label
category_str(0).text=category


    objXML.save Server.MapPath("../xml/adverts.xml") 
    updateXMLField = True

    Set objField = Nothing 
    response.redirect "classified_list.asp"




  end if

  
 
       
  objXML.async = False 
  objXML.Load (strFile) 
  Set AllItems = objXML.selectNodes("//advert")   
  Set objRoot = objXML.documentElement  
  
  

  If (Task_ID<>"") Then  
  task=Task_ID
  
  Dim I 
  If task="0" Then task=""
  
  
  For I = 0 to (AllItems.Length - 1)         
      Set id = AllItems(I).selectNodes("id")
      If ((id(0).text) = trim(task)) Then
  

     Set category = AllItems(I).selectNodes("category")
       Set label = AllItems(I).selectNodes("label")
        Set province = AllItems(I).selectNodes("province")
       Set country = AllItems(I).selectNodes("country")
       Set city_district = AllItems(I).selectNodes("city_district")
      Set price = AllItems(I).selectNodes("price")
       Set expiration= AllItems(I).selectNodes("expiration")
        Set expression= AllItems(I).selectNodes("expression")
      Set name= AllItems(I).selectNodes("name")
           Set email= AllItems(I).selectNodes("email")
           Set phone= AllItems(I).selectNodes("phone")
           Set addition_date= AllItems(I).selectNodes("addition_date")
             
            
            
name = name(0).text
email = email(0).text
phone = phone(0).text
addition_date=addition_date(0).text
expression=expression(0).text
expiration=expiration(0).text
price=price(0).text
city_district=city_district(0).text
country =country(0).text
province =province(0).text
label=label(0).text
category =category(0).text
  
        EXIT FOR 
      End If  		
  Next
 %>
    <style>
.bdrtext {width:300;}
    </style>
    <script>
function delete_record(aid,label)
{
var conf; 
conf=window.confirm('Do you want to delete this record?  ' + label);
if (conf==true){
window.location.href='classified_list.asp?delid=' + aid
}
}
function popup()
{
window.open('http://mobile.seslisozluk.com/','popup','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no, resizable=no,width=500,height=500');
}
</script>


  <form action=classified_list.asp?edit=ok method=POST id=form1 name=form1>
  <table class=bdr width=412 cellspacing=0 cellpadding=2 border=0>
  
  <tr valign=top><td align=left width=100>ID:
  </td><td colspan="2">
    <input class=bdrtext type=text name=disabled_id value="<%=Task%>" disabled>
  </td></tr>
  
  <tr>
	<td align=left width=100>
  Country:
  </td><td colspan="2">
  <input class=bdrtext type=text name=country  value="<%=country%>">
  </td>
	</tr>
  
  <tr>
	<td align=left width=100>
  Province:
  </td><td colspan="2">
  <input class=bdrtext type=text name=province value="<%=province%>">
  </td>
	</tr>
	<tr>
		<td align=left width=100>
  City / District:
  </td><td colspan="2">
  <input class=bdrtext type=text name=city_district value="<%=city_district%>">
  </td>
	</tr>
  
  <tr valign=top><td align=left width=100>
  Name:
  </td><td colspan="2">
  <input class=bdrtext type=text name=name value="<%=Name%>">
  </td></tr>
  
  
  <tr valign=top><td align=left width=100>
  Email:
  </td><td colspan="2">
  <input class=bdrtext type=text name=email value="<%=email%>">
  </td></tr>
  
    <tr valign=top>
		<td align=left width=100 style="border-bottom-style: solid; border-bottom-width: 1px">
  Phone:
  </td><td style="border-bottom-style: solid; border-bottom-width: 1px" colspan="2">
  <input class=bdrtext type=text name=phone value="<%=phone%>">
  </td></tr>
  
    <tr>
		<td align=left width=100 style="border-top-style: solid; border-top-width: 1px">
  Label:
  </td><td style="border-top-style: solid; border-top-width: 1px" colspan="2">
  <input class=bdrtext type=text name=label value="<%=label%>">
  </td>
	</tr>
	<tr>
		<td align=left width=100>
  Category :
  </td><td colspan="2">
  <input class=bdrtext type=text name=category  value="<%=category %>">
  </td>
	</tr>
  
    <tr valign=top><td align=left width=100>
  Expression:
  </td><td colspan="2">
  <textarea name=expression class=bdrtext rows="9" cols="46"><%=expression%></textarea>
  </td></tr>
  
      <tr>
		<td align=left width=100>
  Price:
  </td><td colspan="2">
  <input class=bdrtext type=text name=price value="<%=price%>">
  </td>
	</tr>
	<tr>
		<td align=left width=100>
  Addition Date:
  </td><td colspan="2">
  <input class=bdrtext type=text name=addition_date value="<%=addition_date%>">
  </td>
	</tr>
	<tr>
		<td align=left width=100>
  Expiration:
  </td><td colspan="2">
  <input class=bdrtext type=text name=expiration value="<%=expiration%>">
  </td>
	</tr>
  
  
  <tr valign=top><td align=left width=100>
  </td><td width="217">
  <input class=btn type=submit value=Update>
  
  <input class=btn type=button value=Remove onclick="delete_record('<%=Task%>');">
  

   <input class=btn type=button value=Cancel onclick="window.location.href='classified_list.asp'"><input type=text size="1" name=task_id value="<%=Task%>" style="visibility:hidden;"><br> 
  </td><td width="81" valign="baseline">
  <p align="center"><a href="javascript: popup();">Translator</a></td></tr>
  
  </table>     
  </form>      
  
<%
  End If       
  
  Set objRoot = Nothing
  Set AllItems = Nothing
  Set objXML = Nothing
  response.end
end sub
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

sub list


 Dim strFile  
  strFile = Server.MapPath("../xml/adverts.xml") 
  on error resume next
  Dim msg
  msg = ""

 
  Set objXML = Server.CreateObject("Microsoft.XMLDOM") 

  

  objXML.async = False 
  objXML.Load (Server.MapPath("../xml/adverts.xml")) 
  Set AllItems = objXML.selectNodes("//advert")   
  Set objRoot = objXML.documentElement  
  

%>
<style>

body    {font-family: Verdana, Arial, Helvetica, sans-serif;
         font-size: 8pt;
         text-align: left;
         background-color: #FFFFFF;}
td      {font-family: Verdana, Arial, Helvetica, sans-serif;
         font-size: 8pt;
         background-color: #FFFFFF}
p       {font-family: Verdana, Arial, Helvetica, sans-serif;
         font-size: 8pt;
         background-color: #FFFFFF}
h4      {font-family: Verdana, Arial, Helvetica, sans-serif;
         font-size: 12pt;
         font-weight: bold;
         color: #000000;}
th      {font-family: Verdana, Arial, Helvetica, sans-serif;
         font-size: 8pt;
         font-weight: bold;
         background-color: #FFFFFF;}
         
.bdr    {border:1px;
         font-family: Verdana, Arial, Helvetica, sans-serif;
         font-size: 8pt;
         border-style: solid; 
         border-top-width: 1px; 
         border-right-width: 1px;
         border-bottom-width: 1px; 
         border-left-width: 1px;
         font-size: 8pt; 
         background-color: #FFFFFF;}
         
.bdrtext {border:1px;
         border-style: solid; 
         border-top-width: 1px; 
         border-right-width: 1px;
         border-bottom-width: 1px; 
         border-left-width: 1px;
         width:300;
         font-family: Verdana, Arial, Helvetica, sans-serif;
         font-size: 8pt;
         font-size: 8pt; 
         background-color: #FFFFFF;}

hr       {width:550;height:1;color: lightgrey;}


.inpradio {  
    font-family: Verdana, Arial; 
    font-size: 11px; 
    color: #000000;
    width: 40px;
    background-color: white;
    border: none;
}
.btn {  
    font-family: Verdana, Arial; 
    font-size: 10px; 
    width: 60px;
    color: #000000;
    background-color: lightgrey;

}

</style>

<script>
function delete_record(aid)
{
var conf; 
conf=window.confirm('Do you want to delete this record?');
if (conf==true){
window.location.href='classified_list.asp?delid=' + aid
}
}
function sendmail(email, name)
{
window.open('classified_list.asp?sendmail=' + email + '&sendmailname=' + name,'popup','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no, resizable=no,width=500,height=350');
}
function research(id)
{
window.open('classified_list.asp?research=' + id,'popup','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no, resizable=no,width=750,height=500');

}
</script>

<div align="center"> 
  <h2><font color="#990000" face="Georgia, Times New Roman, Times, serif"> CLASSIFIED AD CONTROL PANEL </font></h2>
  <p><a href="../post/">Add new Classified Ad</a>&nbsp;&nbsp;&nbsp;
	<a href="../">Main site</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a target="_blank" href="http://www.flatcast.com/de/VideoProducer.aspx?pk=364184">
	Manage Radio Canada Advert</a>&nbsp;&nbsp;&nbsp;
	<a target="_blank" href="http://www.flatcast.com/de/Player.aspx?sid=364184"> 
	Listen Radio Canada Advert</a>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a target="_blank" href="../xml/adverts.xml">
	<img title="Download XML DataBase" border="0" src="../images/download.PNG" width="71" height="63"></a></p>
  <table width="85%" border="1" bordercolor="#E3E7E8">
    <tr> 
      <td width="16%" bgcolor="#FF9933">
		<p align="center"><font color="#000080"><strong>Options</strong></font></td>
      <td width="8%" bgcolor="#FF9933">
		<p align="center">
		<font color="#000080" size="2" face="Georgia, Times New Roman, Times, serif"><strong>
		ID</strong></font></td>
      <td width="42%" bgcolor="#FF9933">
		<strong>
		<font face="Georgia, Times New Roman, Times, serif" size="2" color="#000080">
		&nbsp; Label</font></strong></td>
      <td width="31%" bgcolor="#FF9933">
		<font color="#000080" size="2" face="Georgia, Times New Roman, Times, serif"><strong>&nbsp; 
		Category</strong></font></td>
    </tr>
    <tr> 
      <td colspan="4" style="background-color: #F9F9F9">&nbsp;Total Classified Ads: <%=AllItems.Length%> </td>
    </tr>
    
    
    
    
    <%
  For I = (AllItems.Length - 1) to 0 step -1        
      Set id = AllItems(I).selectNodes("id")
      
      
 
  
  

     Set category = AllItems(I).selectNodes("category")
       Set label = AllItems(I).selectNodes("label")
        Set province = AllItems(I).selectNodes("province")
       Set country = AllItems(I).selectNodes("country")
       Set city_district = AllItems(I).selectNodes("city_district")
      Set price = AllItems(I).selectNodes("price")
       Set expiration= AllItems(I).selectNodes("expiration")
        Set expression= AllItems(I).selectNodes("expression")
      Set name= AllItems(I).selectNodes("name")
           Set email= AllItems(I).selectNodes("email")
           Set phone= AllItems(I).selectNodes("phone")
           Set addition_date= AllItems(I).selectNodes("addition_date")
             
            
id = id(0).text     
name = name(0).text
email = email(0).text
phone = phone(0).text
addition_date=addition_date(0).text
expression=expression(0).text
expiration=expiration(0).text
price=price(0).text
city_district=city_district(0).text
country =country(0).text
province =province(0).text
label=label(0).text
category =category(0).text
  

%>
    
    
    
    
    
    
    
    
    
    
  
    <tr> 
      <td><center>
		<a href="javascript: delete_record('<%=id%>','<%=label%>');"><img border="0" src="../images/trash.gif" title="Delete" align="texttop"></a>
		<a href="classified_list.asp?task_id=<%=id%>">
		<img border="0" src="../images/sticky.gif" width="12" height="12" title="Edit" align="texttop"></a>
		<%if email<>"" then%><a href="javascript:sendmail('<%=email%>','<%=name%>');"><img border="0" src="../images/email.gif" width="18" height="12" align="texttop" title="Send email to this publisher"></a><%end if%>
		<a target="_blank" href="../default.asp#<%=id%>">
		<img border="0" src="../images/go.gif" width="15" height="15" align="absbottom" title="View"></a>
		<a href="javascript:research('<%=id%>');">
		<img border="0" src="../images/research.GIF" width="13" height="13"></a></center></td>
      <td><center><%=id%></center></td>
      <td>&nbsp;<%=label%></td>
      <td>&nbsp;<%=category%></td>
    </tr>
    
    
    <% next %>
    
  
  </table>
 
<%
end sub

end if
%>