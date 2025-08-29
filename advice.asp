<head>
<title>ADVISE US TO YOUR FRIEND</title>
<meta http-equiv="Content-Language" content="en-ca">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<META http-equiv="Page-Exit" content="blendTrans(Duration=1.0)">
</head>

<LINK REL=STYLESHEET TYPE="text/css" HREF="style/style.css">
<script type="text/javascript" src="style/fade.js"></script>
<script type="text/javascript">
function overlimit(){
alert("Please do not over text limits on form areas!");
window.history.back(2);
}


function ismaxlength(obj){
var mlength=obj.getAttribute? parseInt(obj.getAttribute("maxlength")) : ""
if (obj.getAttribute && obj.value.length>mlength)
obj.value=obj.value.substring(0,mlength)
}
</script>

<%if request.querystring<>"send" then%>
<p align="center"><b><font color="#454545"><span lang="tr">ADVISE US TO YOUR FRIEND</span></font></b></p>
  <center>
  <form method="post" action="advice.asp?send">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-style: dotted; border-width: 1" bordercolor="#C0C0C0" width="457" height="222" bgcolor="#FBFBFB">
  <tr>
    <td width="454" height="222" valign="top">
    <p style="margin-top: 0; margin-bottom: -10">&nbsp;</p>
    <p style="margin-top: 0; margin-bottom: -10">&nbsp;<img border="0" src="images/boxes.png" width="14" height="15"></p>
    <p style="margin-top: 0; margin-bottom: -10">&nbsp;</p>

      <center>
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="97%" height="92">
      <tr>
        <td width="1%" height="25" align="center"><font color="#FF0000">*</font></td>
        <td width="17%" height="25">&nbsp;Your Name:</td>
        <td width="36%" height="25">   
        
        
        <input maxlength="35" type="text" name="name" size="20">
        <i><font size="2" color="#454545">Max. 35 Char</font></i></td>
        </tr>
      <tr>
        <td width="1%" height="25" align="center"><font color="#FF0000">*</font></td>
        <td width="17%" height="25">&nbsp;Your Friend`s Email:</td>
        <td width="36%" height="25"> 
        
        <input maxlength="35" type="text" name="email" size="20">
        <i><font size="2" color="#454545">Max. 35 Char</font></i></td>
        </tr>
      <tr>
        <td width="1%" height="71" align="center">&nbsp;</td>
        <td width="17%" height="71">&nbsp;Your Message:</td>
        <td width="36%" height="71"><p style="margin-top: 0; margin-bottom: 0">
        <textarea rows="4" name="message" cols="23" maxlength="300" onkeyup="return ismaxlength(this)"></textarea><i><font size="2" color="#454545">&nbsp; Max. 
        300 Char</font></i></td>
        </tr>
      <tr>
        <td width="53%" height="45" colspan="3" valign="bottom">
        <p align="left" style="margin-top: -5; margin-bottom: -5">
        &nbsp;<p align="center">
        <input type="submit" value="    Advise Now    " name="submit"></td>
        </tr>
      </table>
      </center>
    </td>
  </tr>
</table>
  </center>      </form>
  
  <%else

strFile = Server.MapPath("xml/statics.xml") 
  Set objXML = Server.CreateObject("Microsoft.XMLDOM") 
 
  objXML.async = False 
  objXML.Load (strFile) 
  Set AllItems= objXML.selectNodes("//statics")   
  Set objRoot = objXML.documentElement 

  I=0
  
  
advice=AllItems(I).selectNodes("advice")(0).text


if advice="" then
advice=0
end if


AllItems(I).selectNodes("advice")(0).text=advice+1


   objXML.save strFile
   updateXMLField = True
   
  Set objRoot = Nothing
  Set AllItems = Nothing
  Set objXML = Nothing
  strFile=""
   
   
   
   
   
   
   
   
   
   
   
   
   
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''ADVICE'''''''''''''''''''''''''''''''''''''''''''''''''
   
   
   
     strFile = Server.MapPath("xml/advices.xml") 

  Set objXML = Server.CreateObject("Microsoft.XMLDOM") 

  objXML.async = False 
  objXML.Load (strFile) 
  Set AllItems = objXML.selectNodes("//advice")   
  Set objRoot = objXML.documentElement  


    elem_id = 1 
    max_elem_id = 1   
    For I = 0 to (AllItems.Length - 1)       
    Set id = AllItems(I).selectNodes("id")     
    elem_id = CINT(id(0).text)
    If (elem_id => max_elem_id) Then
    max_elem_id = elem_id + 1
    End If  	
    Next                         
       
  

    Set objTask = objXML.createElement("advice")
    objRoot.appendChild(objTask)  
        
    Set obj = objXML.createElement("id")
    objTask.appendChild(obj)  
    obj.text = max_elem_id  
    



        Set obj = objXML.createElement("name")
    objTask.appendChild(obj)     
    obj.text = request.form("name")
    
    Set obj = objXML.createElement("email")
    objTask.appendChild(obj)     
    obj.text = request.form("email")

    Set obj = objXML.createElement("message")
    objTask.appendChild(obj)     
    obj.text = request.form("message")





    objXML.save strFile
    
    insertXMLField = True 
    Set objField = Nothing  
  
  Set objRoot = Nothing
  Set AllItems = Nothing
  Set objXML = Nothing

          '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''ADVICE'''''''''''''''''''''''''''''''''''''''''''''''''

   
   
%>
<script>
alert("Your advice has been sent to recipient(<%=request.form("email")%>). Thank you for your interest!")
this.close();</script>
<%
   
  end if
  %>