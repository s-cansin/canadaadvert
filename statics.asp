<%
if session("visitor" )="" then
strFile = Server.MapPath("xml/statics.xml") 
  Set objXML = Server.CreateObject("Microsoft.XMLDOM") 
 
  objXML.async = False 
  objXML.Load (strFile) 
  Set AllItems= objXML.selectNodes("//statics")   
  Set objRoot = objXML.documentElement 

  I=0
  
  
singular=AllItems(I).selectNodes("singular")(0).text
historical=AllItems(I).selectNodes("historical")(0).text
staff=AllItems(I).selectNodes("staff")(0).text



if singular="" then
singular=0
end if

if historical="" then
historical=0
end if

if staff="" then
staff=0
end if



if not request.Cookies("saskatchewansecurity" )("administrator" )="8',;X>z.%78/+345754*j+j/k&%fwe4$½hs84£k2w!exd" then

if request.Cookies("saskatchewansecurity" )("visitor" )<>"" then
AllItems(I).selectNodes("historical")(0).text=historical+1

else
AllItems(I).selectNodes("singular")(0).text=singular+1
end if


else

AllItems(I).selectNodes("staff")(0).text=staff+1
end if


Response.Cookies("saskatchewansecurity")("visitor")=now
Response.Cookies("saskatchewansecurity").expires = now() + 365
session("visitor" )=now



   objXML.save strFile
   updateXMLField = True 

logpath = "log/visit.dat"
%>
<!--#include file="logger.asp" -->
<%
 Set objRoot = Nothing
  Set AllItems = Nothing
  Set objXML = Nothing
    strFile=""

end if
%>