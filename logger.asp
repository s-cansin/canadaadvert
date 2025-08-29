<%if logpath<>"" then

set FSOconnection = CreateObject("Scripting.FileSystemObject")
set filepath = FSOconnection.GetFile(Server.MapPath(""&logpath&""))
set data = filepath.OpenAsTextStream(8,0)

str_referer = request.ServerVariables("HTTP_REFERER")

if str_referer<>"" and str_referer<>" " then
referesite="-" & str_referer
else
referesite=""
end if
browser=Request.ServerVariables("HTTP_USER_AGENT" ) & "~" & Server.CreateObject("MSWC.BrowserType" ).Browser

'''''''IP FUNCTION
if request.servervariables("HTTP_X_FORWARDED_FOR")<>"" then IPNumber=request.servervariables("HTTP_X_FORWARDED_FOR")
if request.servervariables("REMOTE_ADDR")<>"" then IPNumber=request.servervariables("REMOTE_ADDR")
if request.servervariables("HTTP_X_FORWARDED_FOR")<>"" and request.servervariables("REMOTE_ADDR")<>"" then IPNumber=request.servervariables("HTTP_X_FORWARDED_FOR") & "/" & request.servervariables("REMOTE_ADDR")
'''''''''''''''''''''''''''''''



data.WriteLine id & IPNumber &  "-" & browser & referersite

data.close 
set data = nothing

 Set objRoot = Nothing
  Set AllItems = Nothing
  Set objXML = Nothing
    strFile=""


end if%>