<%server.execute "../metatags.asp" %>

<LINK REL=STYLESHEET TYPE="text/css" HREF="../style/style.css">
<script type="text/javascript" src="../style/fade.js"></script>
<script language="JavaScript">
function popup(address){
window.open(address, 'popup', 'width=500, height=400, menubar=no, scrollbars=yes, toolbar=no, location=no, resizable=no, top=0, left=0');
}


function overlimit(){
alert("Please do not over text limits on form areas!");
window.history.back(2);
}


function ismaxlength(obj){
var mlength=obj.getAttribute? parseInt(obj.getAttribute("maxlength")) : ""
if (obj.getAttribute && obj.value.length>mlength)
obj.value=obj.value.substring(0,mlength)
}


function province_locker()
{

if (document.getElementById('country').value!=38)
{
document.getElementById('province').disabled=true
}
else{
document.getElementById('province').disabled=false
}

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
<body onload="province_locker();">

<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" height="694" style="border-bottom-width: 0">
<tr>
<td width="100%" align="left" valign="top" style="border-bottom-style: none; border-bottom-width: medium" height="694">

<div style="border-left: 4px solid #f1f1f1;border-right: 4px solid #f1f1f1;">
<div style="border-left: 1px solid #dadada;border-right: 1px solid #dadada;">


<div style="border-left: 1px solid #597DC3;border-right: 1px solid #597DC3;margin: 0;padding: 0; width: 100%">
<div style="background: #FFFFFF url('../images/bg/hdr_back.gif') ;width: 100%;height: 90px;margin: 0;padding: 0 ">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
  <tr>
    <td width="37%"><img border="0" src="../images/logo/logo.gif"></td>
    <td width="63%" valign="top">&nbsp;<P align=center>
    <span style="letter-spacing: -1pt">
    <FONT color=#454545 face="Georgia" size="4">
    <code>Free Classified Ad Service for Canadian People</code></FONT></P>
</td>
  </tr>
</table>
</div>
<div style="background: #b0c4e8 url('../images/bg/mid_hdr_back.gif');width: 100%;height: 14px;margin: 0;padding: 0 "></div>
</div>
<div style="background: #FCFCFC url('../images/bg/nav_back.gif');width: 100%;height: 29px">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="24">
  <tr>
    <td width="61%" height="24">
    <p align="center">
    <font color="#808080">Post your Classified AD for FREE</font></td>
    <td width="20%" height="24">
    <p align="center">
    <a href="../">Mainpage</a>
    <font color="#333333">|</font> <a href="../policy.asp">
    Policy</a> <font color="#333333">|</font> <a href="../contact.asp">ContactUs</a> </td>
  </tr>
</table></div>
<table align="center" cellpadding="3" cellspacing="1" border="0" width="692" height="598">
<tr>

<td width="759" height="591" valign="top">

<%if request.querystring<>"add" then%>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-style: dotted; border-width: 1" bordercolor="#C0C0C0" width="748" height="365" bgcolor="#FBFBFB">
  <tr>
    <td width="745" height="365" valign="top">
    <p style="margin-top: 0; margin-bottom: -10">&nbsp;</p>
    <p style="margin-top: 0; margin-bottom: -10">&nbsp;<img border="0" src="../images/boxes.png" width="14" height="15"><b><font face="Trebuchet MS" color="#515151"> POST YOUR 
CLASSIFIED AD FOR FREE</font></b></p>
    <p style="margin-top: 0; margin-bottom: -10">&nbsp;</p>
<form method="post" action="default.asp?add">
      <center>
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="92%" height="92">
      <tr>
        <td width="1%" height="25" align="center"><font color="#FF0000">*</font></td>
        <td width="21%" height="25">&nbsp;Province:</td>
        <td width="32%" height="25">   
        
        
        <select size="1" id="province" name="province">
        <option selected id="AB" value="1">Alberta</option>
        <option id="BC" value="2">British Columbia</option>
        <option id="MB" value="3">Manitoba</option>
        <option id="NB" value="4">New Brunswick</option>
        <option id="NL" value="5">Newfoundland and Labrador</option>
        <option id="NT" value="6">Nortwest Territories</option>
        <option id="NS" value="7">Nova Scotia</option>
        <option id="NU" value="8">Nunavut</option>
        <option id="ON" value="9">Ontario</option>
        <option id="PE" value="10">Prince Edward Island</option>
        <option id="QC" value="11">Quebec</option>
        <option id="SK" value="12">Saskatchewan</option>
        <option id="YK" value="13">Yukon Territory</option>
        </select>&nbsp;
               
<%if province<>"" or province="Outside_Canada" then%>&nbsp;
<script>

document.getElementById('<%=replace(province," ","_")%>').selected=true;
        </script> 
<%
end if%>
        
        <select id="country" name="country" onchange="province_locker();">
	<option value="1">Afghanistan</option>
	<option value="2">Albania</option>
	<option value="3">Algeria</option>
	<option value="5">Andorra</option>
	<option value="6">Angola</option>
	<option value="7">Anguilla</option>
	<option value="8">Antarctica</option>
	<option value="9">Antigua &amp; Barbuda</option>
	<option value="10">Argentina</option>
	<option value="11">Armenia</option>
	<option value="12">Aruba</option>
	<option value="13">Australia</option>
	<option value="14">Austria</option>
	<option value="15">Azerbaijan</option>
	<option value="16">Bahamas</option>
	<option value="17">Bahrain</option>
	<option value="18">Bangladesh</option>
	<option value="19">Barbados</option>
	<option value="20">Belarus</option>
	<option value="21">Belgium</option>
	<option value="22">Belize</option>
	<option value="23">Benin</option>
	<option value="24">Bermuda</option>
	<option value="25">Bhutan</option>
	<option value="26">Bolivia</option>
	<option value="27">Bosnia-Herzg'na</option>
	<option value="28">Botswana</option>
	<option value="30">Brazil</option>
	<option value="32">Brunei</option>
	<option value="33">Bulgaria</option>
	<option value="34">Burkina Faso</option>
	<option value="35">Burundi</option>
	<option value="36">Cambodia</option>
	<option value="37">Cameroon</option>
	<option selected="selected" value="38">Canada</option>
	<option value="39">Cape Verde</option>
	<option value="40">Cayman Islands</option>
	<option value="41">Central African Rep.</option>
	<option value="42">Chad</option>
	<option value="43">Chile</option>
	<option value="44">China</option>
	<option value="47">Christmas Island</option>
	<option value="48">Cocos (Keeling) Is.</option>
	<option value="49">Colombia</option>
	<option value="50">Comoros</option>
	<option value="51">Congo</option>
	<option value="52">Congo (Zaire)</option>
	<option value="53">Cook Islands</option>
	<option value="54">Costa Rica</option>
	<option value="55">Cote D'Ivoire</option>
	<option value="56">Croatia (Hrvatska)</option>
	<option value="58">Cyprus</option>
	<option value="59">Czech Rep.</option>
	<option value="60">Denmark</option>
	<option value="61">Djibouti</option>
	<option value="62">Dominica</option>
	<option value="63">Dominican Rep.</option>
	<option value="64">East Timor</option>
	<option value="65">Ecuador</option>
	<option value="66">Egypt</option>
	<option value="67">El Salvador</option>
	<option value="68">Equatorial Guinea</option>
	<option value="69">Eritrea</option>
	<option value="70">Estonia</option>
	<option value="71">Ethiopia</option>
	<option value="72">Falkland Is.</option>
	<option value="73">Faroe Islands</option>
	<option value="74">Fiji Islands</option>
	<option value="75">Finland</option>
	<option value="76">France</option>
	<option value="77">French Guiana</option>
	<option value="78">French Polynesia</option>
	<option value="79">French So. Terr.</option>
	<option value="80">Gabon</option>
	<option value="81">Gambia</option>
	<option value="82">Georgia</option>
	<option value="83">Germany</option>
	<option value="84">Ghana</option>
	<option value="85">Gibraltar</option>
	<option value="86">Greece</option>
	<option value="87">Greenland</option>
	<option value="88">Grenada</option>
	<option value="89">Guadeloupe</option>
	<option value="91">Guatemala</option>
	<option value="92">Guinea</option>
	<option value="93">Guinea-Bissau</option>
	<option value="94">Guyana</option>
	<option value="95">Haiti</option>
	<option value="97">Honduras</option>
	<option value="45">Hong Kong (China)</option>
	<option value="98">Hungary</option>
	<option value="99">Iceland</option>
	<option value="100">India</option>
	<option value="101">Indonesia</option>
	<option value="104">Ireland</option>
	<option value="105">Israel</option>
	<option value="106">Italy</option>
	<option value="107">Jamaica</option>
	<option value="108">Japan</option>
	<option value="109">Jordan</option>
	<option value="110">Kazakhstan</option>
	<option value="111">Kenya</option>
	<option value="112">Kiribati</option>
	<option value="113">Korea, South</option>
	<option value="115">Kuwait</option>
	<option value="116">Kyrgyzstan</option>
	<option value="117">Laos</option>
	<option value="118">Latvia</option>
	<option value="119">Lebanon</option>
	<option value="120">Lesotho</option>
	<option value="123">Liechtenstein</option>
	<option value="124">Lithuania</option>
	<option value="125">Luxembourg</option>
	<option value="46">Macau (China)</option>
	<option value="126">Macedonia</option>
	<option value="127">Madagascar</option>
	<option value="128">Malawi</option>
	<option value="129">Malaysia</option>
	<option value="130">Maldives</option>
	<option value="131">Mali</option>
	<option value="132">Malta</option>
	<option value="134">Martinique</option>
	<option value="135">Mauritania</option>
	<option value="136">Mauritius</option>
	<option value="137">Mayotte</option>
	<option value="138">Mexico</option>
	<option value="140">Moldova</option>
	<option value="141">Monaco</option>
	<option value="142">Mongolia</option>
	<option value="143">Montserrat</option>
	<option value="144">Morocco</option>
	<option value="145">Mozambique</option>
	<option value="146">Myanmar</option>
	<option value="147">Namibia</option>
	<option value="148">Nauru</option>
	<option value="149">Nepal</option>
	<option value="151">Netherlands</option>
	<option value="150">Netherlands Ant.</option>
	<option value="152">New Caledonia</option>
	<option value="153">New Zealand</option>
	<option value="154">Nicaragua</option>
	<option value="155">Niger</option>
	<option value="156">Nigeria</option>
	<option value="157">Niue</option>
	<option value="158">Norfolk Island</option>
	<option value="160">Norway</option>
	<option value="161">Oman</option>
	<option value="162">Pakistan</option>
	<option value="164">Panama</option>
	<option value="165">Papua new Guinea</option>
	<option value="166">Paraguay</option>
	<option value="167">Peru</option>
	<option value="168">Philippines</option>
	<option value="169">Pitcairn Is.</option>
	<option value="170">Poland</option>
	<option value="171">Portugal</option>
	<option value="173">Qatar</option>
	<option value="174">Reunion</option>
	<option value="175">Romania</option>
	<option value="176">Russia</option>
	<option value="177">Rwanda</option>
	<option value="178">Saint Helena</option>
	<option value="179">Saint Kitts &amp; Nevis</option>
	<option value="180">Saint Lucia</option>
	<option value="184">San Marino</option>
	<option value="196">Sandwich Islands</option>
	<option value="185">Sao Tome &amp; Prin.</option>
	<option value="186">Saudi Arabia</option>
	<option value="187">Senegal</option>
	<option value="188">Seychelles</option>
	<option value="189">Sierra Leone</option>
	<option value="190">Singapore</option>
	<option value="191">Slovakia</option>
	<option value="192">Slovenia</option>
	<option value="193">Solomon Islands</option>
	<option value="194">Somalia</option>
	<option value="195">South Africa</option>
	<option value="197">Spain</option>
	<option value="198">Sri Lanka</option>
	<option value="181">St. Pierre &amp; Miq'n</option>
	<option value="182">St. Vincent &amp; Gred's.</option>
	<option value="199">Sudan</option>
	<option value="200">Suriname</option>
	<option value="201">Svalbard &amp; J. May'n</option>
	<option value="202">Swaziland</option>
	<option value="203">Sweden</option>
	<option value="204">Switzerland</option>
	<option value="205">Syria</option>
	<option value="206">Taiwan</option>
	<option value="207">Tajikistan</option>
	<option value="208">Tanzania</option>
	<option value="209">Thailand</option>
	<option value="228">The Vatican</option>
	<option value="210">Togo</option>
	<option value="211">Tokelau</option>
	<option value="212">Tonga</option>
	<option value="213">Trinidad &amp; Tobago</option>
	<option value="214">Tunisia</option>
	<option value="215">Turkey</option>
	<option value="216">Turkmenistan</option>
	<option value="217">Turks &amp; Caicos Is.</option>
	<option value="218">Tuvalu</option>
	<option value="221">UAE</option>
	<option value="219">Uganda</option>
	<option value="220">Ukraine</option>
	<option value="222">United Kingdom</option>
	<option value="225">Uruguay</option>
	<option value="223">USA</option>
	<option value="226">Uzbekistan</option>
	<option value="227">Vanuatu</option>
	<option value="229">Venezuela</option>
	<option value="230">Vietnam</option>
	<option value="231">Virgin Islands (UK)</option>
	<option value="233">Wallis &amp; Futuna Is.</option>
	<option value="234">Western Sahara</option>
	<option value="235">Yemen</option>
	<option value="236">Yugoslavia</option>
	<option value="237">Zambia</option>
	<option value="238">Zimbabwe</option>

</select>
        

        
        <img border="0" src="../images/arrow.gif" width="16" height="16"></td>
        </tr>
      <tr>
        <td width="1%" height="25" align="center">&nbsp;</td>
        <td width="21%" height="25">&nbsp;City / District:</td>
        <td width="32%" height="25"> 
        <input type="text" maxlength="30" name="city_district" size="20" value=""> <i>
        <font size="2" color="#454545">Max. 30 Char</font></i></td>
        </tr>
		<tr>
        <td width="1%" height="25" align="center"><font color="#FF0000">*</font></td>
        <td width="21%" height="25">&nbsp;Product Label:</td>
        <td width="32%" height="25">
        <input type="text" maxlength="50" name="label" size="20"> <i>
        <font size="2" color="#454545">Max. 50 Char</font></i></td>
        </tr>
		<tr>
        <td width="1%" height="25" align="center"><font color="#FF0000">*</font></td>
        <td width="21%" height="25">&nbsp;Product Category:</td>
        <td width="32%" height="25">
        
        <select size="1" name="category">
        <option selected id="Computer_Electronics" value="Computer Electronics">Computer Electronics</option>
        <option id="Internet" value="Internet">Internet</option>
		<option id="Software" value="Software">Software</option>
        <option id="Employment_Career" value="Employment Career">Employment Career</option>
        <option id="Journey_Vacation" value="Journey Vacation">Journey Vacation</option>
        <option id="Real_Estate" value="Real Estate">Real Estate</option>
        <option id="Vehicle" value="Vehicle">Vehicle</option>
        <option id="Financial" value="Financial">Financial</option>
		<option id="Services" value="Services">Services</option>
        <option id="Other" value="Other">Other</option>
        </select>
        
<%if category<>"" then%>
<script>
document.getElementById('<%=replace(category," ","_")%>').selected=true;
        </script>    
<%end if%>

        </td>
        </tr>
      <tr>
        <td width="1%" height="25" align="center">&nbsp;</td>
        <td width="21%" height="25">&nbsp;Price:</td>
        <td width="32%" height="25"> <input maxlength="30" type="text" name="price" size="20">
        <i><font size="2" color="#454545">Max. 30 Char</font></i></td>
        </tr>
      <tr>
        <td width="1%" height="25" align="center"><font color="#FF0000">*</font></td>
        <td width="21%" height="25">&nbsp;Expiration Date:</td>
        <td width="32%" height="25"> 
        
        <select size="1" name="month_form">
        <option value="" selected>month</option>
        <option value="1">January</option>
        <option value="2">February</option>
        <option value="3">March</option>
        <option value="4">April</option>
        <option value="5">May</option>
        <option value="6">June</option>
        <option value="7">July</option>
        <option value="8">August</option>
        <option value="9">September</option>
        <option value="10">October</option>
        <option value="11">November</option>
        <option value="12">December</option>
        </select>
        
        <select size="1" name="day_form">
        <option value="" selected>Day</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
        <option value="13">13</option>
        <option value="14">14</option>
        <option value="15">15</option>
        <option value="16">16</option>
        <option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select> <select size="1" name="year_form">
        <option value="" selected>Year</option>
        <option value="2007">2007</option>
        <option value="2008">2008</option>
        <option value="2009">2009</option>
        <option value="2010">2010</option>

</select>

</td>
        </tr>
      <tr>
        <td width="1%" height="71" align="center">&nbsp;</td>
        <td width="21%" height="71">&nbsp;Your Expression:</td>
        <td width="32%" height="71"><p style="margin-top: 0; margin-bottom: 0">
        <textarea rows="4" name="expression" cols="37" maxlength="250" onkeyup="return ismaxlength(this)"></textarea><i><font size="2" color="#454545"> Max. 
        250 Char</font></i></td>
        </tr>
      <tr>
        <td width="1%" height="25" align="center"><font color="#FF0000">*</font></td>
        <td width="21%" height="25">&nbsp;Your Name:</td>
        <td width="32%" height="25">
        <input type="text" name="name" size="20" maxlength="25"> <i>
        <font size="2" color="#454545">Max. 25 Char</font></i></td>
        </tr>
      <tr>
        <td width="1%" height="25" align="center"><span lang="tr">
        <font color="#FF0000">-</font></span></td>
        <td width="21%" height="25"><p>&nbsp;Contact (Email Address):</p>
        </td>
        <td width="32%" height="25">
        <input type="text" name="email" size="20" maxlength="45"> <i>
        <font size="2" color="#454545">Max. 45 Char</font></i></td>
        </tr>
      <tr>
        <td width="1%" height="25" align="center"><span lang="tr">
        <font color="#FF0000">-</font></span></td>
        <td width="21%" height="25">
		<table border="0" width="100%">
			<tr>
				<td width="175">Contact (Phone Number):</td>
				<td>
				<p align="right"><font color="#606060">+</font>
				
				<select name="AREACODES" size="1">
<option selected>1</option>
<option>93</option>
<option>355</option>
<option>213</option>
<option>684</option>
<option>376</option>
<option>244</option>
<option>809</option>
<option>268</option>
<option>54</option>
<option>374</option>
<option>297</option>
<option>247</option>
<option>61</option>
<option>672</option>
<option>43</option>
<option>994</option>
<option>242</option>
<option>246</option>
<option>973</option>
<option>880</option>
<option>375</option>
<option>32</option>
<option>501</option>
<option>229</option>
<option>809</option>
<option>975</option>
<option>284</option>
<option>591</option>
<option>387</option>
<option>267</option>
<option>55</option>
<option>284</option>
<option>673</option>
<option>359</option>
<option>226</option>
<option>257</option>
<option>855</option>
<option>237</option>
<option>238</option>
<option>345</option>
<option>236</option>
<option>235</option>
<option>56</option>
<option>86</option>
<option>886</option>
<option>57</option>
<option>269</option>
<option>242</option>
<option>682</option>
<option>506</option>
<option>385</option>
<option>53</option>
<option>357</option>
<option>420</option>
<option>45</option>
<option>246</option>
<option>767</option>
<option>809</option>
<option>253</option>
<option>593</option>
<option>20</option>
<option>503</option>
<option>240</option>
<option>291</option>
<option>372</option>
<option>251</option>
<option>500</option>
<option>298</option>
<option>679</option>
<option>358</option>
<option>33</option>
<option>596</option>
<option>594</option>
<option>241</option>
<option>220</option>
<option>995</option>
<option>49</option>
<option>233</option>
<option>350</option>
<option>30</option>
<option>299</option>
<option>473</option>
<option>671</option>
<option>502</option>
<option>224</option>
<option>245</option>
<option>592</option>
<option>509</option>
<option>504</option>
<option>852</option>
<option>36</option>
<option>354</option>
<option>91</option>
<option>62</option>
<option>98</option>
<option>964</option>
<option>353</option>
<option>972</option>
<option>39</option>
<option>225</option>
<option>876</option>
<option>81</option>
<option>962</option>
<option>7</option>
<option>254</option>
<option>855</option>
<option>686</option>
<option>82</option>
<option>850</option>
<option>965</option>
<option>996</option>
<option>371</option>
<option>856</option>
<option>961</option>
<option>266</option>
<option>231</option>
<option>370</option>
<option>218</option>
<option>423</option>
<option>352</option>
<option>853</option>
<option>389</option>
<option>261</option>
<option>265</option>
<option>60</option>
<option>960</option>
<option>223</option>
<option>356</option>
<option>692</option>
<option>596</option>
<option>222</option>
<option>230</option>
<option>269</option>
<option>52</option>
<option>691</option>
<option>373</option>
<option>33</option>
<option>976</option>
<option>473</option>
<option>212</option>
<option>258</option>
<option>95</option>
<option>264</option>
<option>674</option>
<option>977</option>
<option>31</option>
<option>599</option>
<option>869</option>
<option>687</option>
<option>64</option>
<option>505</option>
<option>227</option>
<option>234</option>
<option>683</option>
<option>850</option>
<option>1 670</option>
<option>47</option>
<option>968</option>
<option>92</option>
<option>680</option>
<option>507</option>
<option>675</option>
<option>595</option>
<option>51</option>
<option>63</option>
<option>48</option>
<option>351</option>
<option>1 787</option>
<option>974</option>
<option>262</option>
<option>40</option>
<option>7</option>
<option>250</option>
<option>670</option>
<option>378</option>
<option>239</option>
<option>966</option>
<option>221</option>
<option>381</option>
<option>248</option>
<option>232</option>
<option>65</option>
<option>421</option>
<option>386</option>
<option>677</option>
<option>252</option>
<option>27</option>
<option>34</option>
<option>94</option>
<option>290</option>
<option>869</option>
<option>508</option>
<option>249</option>
<option>597</option>
<option>268</option>
<option>46</option>
<option>41</option>
<option>963</option>
<option>689</option>
<option>886</option>
<option>7</option>
<option>255</option>
<option>66</option>
<option>228</option>
<option>690</option>
<option>676</option>
<option>1 868</option>
<option>216</option>
<option>90</option>
<option>993</option>
<option>688</option>
<option>256</option>
<option>380</option>
<option>971</option>
<option>44</option>
<option>598</option>
<option>7</option>
<option>678</option>
<option>39</option>
<option>58</option>
<option>84</option>
<option>1 340</option>
<option>681</option>
<option>685</option>
<option>381</option>
<option>967</option>
<option>381</option>
<option>243</option>
<option>260</option>
<option>263</option>
</select>
				
				</td>
			</tr>
		</table>
        </td>
        <td width="32%" height="25">
        <input type="text" name="citycode" size="1" maxlength="4"><input type="text" name="phone" size="20" maxlength="10"> 
        <i><font size="2" color="#454545">Max. 14 Char</font></i></td>
        </tr>
      <tr>
        <td width="53%" height="45" colspan="3" valign="bottom">
        <p align="left" style="margin-top: -5; margin-bottom: -5">
        &nbsp;<p align="left" style="margin-top: -5; margin-bottom: -5">
        <span lang="tr">
        <i><font size="2">&nbsp;You should write at least one of your 
        contact information&nbsp; </font></i><b><font size="2">WARNING! WE DON`T 
		ACCEPT LOAN-CREDIT CLASSIFIEDS!</font></b></span><p align="left" style="margin-top: -5; margin-bottom: -5">
        &nbsp;<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="31">
  <tr>
    <td width="74%" height="31"><p align="right">
        &nbsp;<input type="submit" value="I read Service Agreement and I agree, Post my Classified AD now" name="submit"></td>
    <td width="26%" height="31">
    <p align="center">
      <font size="2"><a target="_blank" href="../policy.asp">
  Service Agreement</a></font></td>
  </tr>
</table>
</td>
        </tr>
      </table>
      </center>
      </form>
      
    </td>
  </tr>
</table>
  </center>

<%else

function provincefunc(var)

select case var
case 1
provincefunc="Alberta"
case 2
provincefunc="British Columbia"
case 3
provincefunc="Manitoba"
case 4
provincefunc="New Brunswick"
case 5
provincefunc="Newfoundland and Labrador"
case 6
provincefunc="Nortwest Territories"
case 7
provincefunc="Nova Scotia"
case 8
provincefunc="Nunavut"
case 9
provincefunc="Ontario"
case 10
provincefunc="Prince Edward Island"
case 11
provincefunc="Quebec"
case 12
provincefunc="Saskatchewan"
case 13
provincefunc="Yukon Territory"

end select
end function



function countryfunc(var)

select case var

	case "1" : countryfunc="Afghanistan"
	case "2" : countryfunc="Albania"
	case "3" : countryfunc="Algeria"
	case "5" : countryfunc="Andorra"
	case "6" : countryfunc="Angola"
	case "7" : countryfunc="Anguilla"
	case "8" : countryfunc="Antarctica"
	case "9" : countryfunc="Antigua &amp; Barbuda"
	case "10" : countryfunc="Argentina"
	case "11" : countryfunc="Armenia"
	case "12" : countryfunc="Aruba"
	case "13" : countryfunc="Australia"
	case "14" : countryfunc="Austria"
	case "15" : countryfunc="Azerbaijan"
	case "16" : countryfunc="Bahamas"
	case "17" : countryfunc="Bahrain"
	case "18" : countryfunc="Bangladesh"
	case "19" : countryfunc="Barbados"
	case "20" : countryfunc="Belarus"
	case "21" : countryfunc="Belgium"
	case "22" : countryfunc="Belize"
	case "23" : countryfunc="Benin"
	case "24" : countryfunc="Bermuda"
	case "25" : countryfunc="Bhutan"
	case "26" : countryfunc="Bolivia"
	case "27" : countryfunc="Bosnia-Herzg'na"
	case "28" : countryfunc="Botswana"
	case "30" : countryfunc="Brazil"
	case "32" : countryfunc="Brunei"
	case "33" : countryfunc="Bulgaria"
	case "34" : countryfunc="Burkina Faso"
	case "35" : countryfunc="Burundi"
	case "36" : countryfunc="Cambodia"
	case "37" : countryfunc="Cameroon"
	case "38" : countryfunc="Canada"
	case "39" : countryfunc="Cape Verde"
	case "40" : countryfunc="Cayman Islands"
	case "41" : countryfunc="Central African Rep."
	case "42" : countryfunc="Chad"
	case "43" : countryfunc="Chile"
	case "44" : countryfunc="China"
	case "47" : countryfunc="Christmas Island"
	case "48" : countryfunc="Cocos (Keeling) Is."
	case "49" : countryfunc="Colombia"
	case "50" : countryfunc="Comoros"
	case "51" : countryfunc="Congo"
	case "52" : countryfunc="Congo (Zaire)"
	case "53" : countryfunc="Cook Islands"
	case "54" : countryfunc="Costa Rica"
	case "55" : countryfunc="Cote D'Ivoire"
	case "56" : countryfunc="Croatia (Hrvatska)"
	case "58" : countryfunc="Cyprus"
	case "59" : countryfunc="Czech Rep."
	case "60" : countryfunc="Denmark"
	case "61" : countryfunc="Djibouti"
	case "62" : countryfunc="Dominica"
	case "63" : countryfunc="Dominican Rep."
	case "64" : countryfunc="East Timor"
	case "65" : countryfunc="Ecuador"
	case "66" : countryfunc="Egypt"
	case "67" : countryfunc="El Salvador"
	case "68" : countryfunc="Equatorial Guinea"
	case "69" : countryfunc="Eritrea"
	case "70" : countryfunc="Estonia"
	case "71" : countryfunc="Ethiopia"
	case "72" : countryfunc="Falkland Is."
	case "73" : countryfunc="Faroe Islands"
	case "74" : countryfunc="Fiji Islands"
	case "75" : countryfunc="Finland"
	case "76" : countryfunc="France"
	case "77" : countryfunc="French Guiana"
	case "78" : countryfunc="French Polynesia"
	case "79" : countryfunc="French So. Terr."
	case "80" : countryfunc="Gabon"
	case "81" : countryfunc="Gambia"
	case "82" : countryfunc="Georgia"
	case "83" : countryfunc="Germany"
	case "84" : countryfunc="Ghana"
	case "85" : countryfunc="Gibraltar"
	case "86" : countryfunc="Greece"
	case "87" : countryfunc="Greenland"
	case "88" : countryfunc="Grenada"
	case "89" : countryfunc="Guadeloupe"
	case "91" : countryfunc="Guatemala"
	case "92" : countryfunc="Guinea"
	case "93" : countryfunc="Guinea-Bissau"
	case "94" : countryfunc="Guyana"
	case "95" : countryfunc="Haiti"
	case "97" : countryfunc="Honduras"
	case "45" : countryfunc="Hong Kong (China)"
	case "98" : countryfunc="Hungary"
	case "99" : countryfunc="Iceland"
	case "100" : countryfunc="India"
	case "101" : countryfunc="Indonesia"
	case "104" : countryfunc="Ireland"
	case "105" : countryfunc="Israel"
	case "106" : countryfunc="Italy"
	case "107" : countryfunc="Jamaica"
	case "108" : countryfunc="Japan"
	case "109" : countryfunc="Jordan"
	case "110" : countryfunc="Kazakhstan"
	case "111" : countryfunc="Kenya"
	case "112" : countryfunc="Kiribati"
	case "113" : countryfunc="Korea, South"
	case "115" : countryfunc="Kuwait"
	case "116" : countryfunc="Kyrgyzstan"
	case "117" : countryfunc="Laos"
	case "118" : countryfunc="Latvia"
	case "119" : countryfunc="Lebanon"
	case "120" : countryfunc="Lesotho"
	case "123" : countryfunc="Liechtenstein"
	case "124" : countryfunc="Lithuania"
	case "125" : countryfunc="Luxembourg"
	case "46" : countryfunc="Macau (China)"
	case "126" : countryfunc="Macedonia"
	case "127" : countryfunc="Madagascar"
	case "128" : countryfunc="Malawi"
	case "129" : countryfunc="Malaysia"
	case "130" : countryfunc="Maldives"
	case "131" : countryfunc="Mali"
	case "132" : countryfunc="Malta"
	case "134" : countryfunc="Martinique"
	case "135" : countryfunc="Mauritania"
	case "136" : countryfunc="Mauritius"
	case "137" : countryfunc="Mayotte"
	case "138" : countryfunc="Mexico"
	case "140" : countryfunc="Moldova"
	case "141" : countryfunc="Monaco"
	case "142" : countryfunc="Mongolia"
	case "143" : countryfunc="Montserrat"
	case "144" : countryfunc="Morocco"
	case "145" : countryfunc="Mozambique"
	case "146" : countryfunc="Myanmar"
	case "147" : countryfunc="Namibia"
	case "148" : countryfunc="Nauru"
	case "149" : countryfunc="Nepal"
	case "151" : countryfunc="Netherlands"
	case "150" : countryfunc="Netherlands Ant."
	case "152" : countryfunc="New Caledonia"
	case "153" : countryfunc="New Zealand"
	case "154" : countryfunc="Nicaragua"
	case "155" : countryfunc="Niger"
	case "156" : countryfunc="Nigeria"
	case "157" : countryfunc="Niue"
	case "158" : countryfunc="Norfolk Island"
	case "160" : countryfunc="Norway"
	case "161" : countryfunc="Oman"
	case "162" : countryfunc="Pakistan"
	case "164" : countryfunc="Panama"
	case "165" : countryfunc="Papua new Guinea"
	case "166" : countryfunc="Paraguay"
	case "167" : countryfunc="Peru"
	case "168" : countryfunc="Philippines"
	case "169" : countryfunc="Pitcairn Is."
	case "170" : countryfunc="Poland"
	case "171" : countryfunc="Portugal"
	case "173" : countryfunc="Qatar"
	case "174" : countryfunc="Reunion"
	case "175" : countryfunc="Romania"
	case "176" : countryfunc="Russia"
	case "177" : countryfunc="Rwanda"
	case "178" : countryfunc="Saint Helena"
	case "179" : countryfunc="Saint Kitts &amp; Nevis"
	case "180" : countryfunc="Saint Lucia"
	case "184" : countryfunc="San Marino"
	case "196" : countryfunc="Sandwich Islands"
	case "185" : countryfunc="Sao Tome &amp; Prin."
	case "186" : countryfunc="Saudi Arabia"
	case "187" : countryfunc="Senegal"
	case "188" : countryfunc="Seychelles"
	case "189" : countryfunc="Sierra Leone"
	case "190" : countryfunc="Singapore"
	case "191" : countryfunc="Slovakia"
	case "192" : countryfunc="Slovenia"
	case "193" : countryfunc="Solomon Islands"
	case "194" : countryfunc="Somalia"
	case "195" : countryfunc="South Africa"
	case "197" : countryfunc="Spain"
	case "198" : countryfunc="Sri Lanka"
	case "181" : countryfunc="St. Pierre &amp; Miq'n"
	case "182" : countryfunc="St. Vincent &amp; Gred's."
	case "199" : countryfunc="Sudan"
	case "200" : countryfunc="Suriname"
	case "201" : countryfunc="Svalbard &amp; J. May'n"
	case "202" : countryfunc="Swaziland"
	case "203" : countryfunc="Sweden"
	case "204" : countryfunc="Switzerland"
	case "205" : countryfunc="Syria"
	case "206" : countryfunc="Taiwan"
	case "207" : countryfunc="Tajikistan"
	case "208" : countryfunc="Tanzania"
	case "209" : countryfunc="Thailand"
	case "228" : countryfunc="The Vatican"
	case "210" : countryfunc="Togo"
	case "211" : countryfunc="Tokelau"
	case "212" : countryfunc="Tonga"
	case "213" : countryfunc="Trinidad &amp; Tobago"
	case "214" : countryfunc="Tunisia"
	case "215" : countryfunc="Turkey"
	case "216" : countryfunc="Turkmenistan"
	case "217" : countryfunc="Turks &amp; Caicos Is."
	case "218" : countryfunc="Tuvalu"
	case "221" : countryfunc="UAE"
	case "219" : countryfunc="Uganda"
	case "220" : countryfunc="Ukraine"
	case "222" : countryfunc="United Kingdom"
	case "225" : countryfunc="Uruguay"
	case "223" : countryfunc="USA"
	case "226" : countryfunc="Uzbekistan"
	case "227" : countryfunc="Vanuatu"
	case "229" : countryfunc="Venezuela"
	case "230" : countryfunc="Vietnam"
	case "231" : countryfunc="Virgin Islands (UK)"
	case "233" : countryfunc="Wallis &amp; Futuna Is."
	case "234" : countryfunc="Western Sahara"
	case "235" : countryfunc="Yemen"
	case "236" : countryfunc="Yugoslavia"
	case "237" : countryfunc="Zambia"
	case "238" : countryfunc="Zimbabwe"
	
	
	end select
	
end function




province=trim(Server.HTMLEncode(request.form("province")))
price=trim(Server.HTMLEncode(request.form("price")))
city_district=trim(Server.HTMLEncode(request.form("city_district")))
expression=Server.HTMLEncode(request.form("expression"))
label=trim(Server.HTMLEncode(request.form("label")))
name=trim(Server.HTMLEncode(request.form("name")))
email=trim(Server.HTMLEncode(request.form("email")))
phone=replace(Server.HTMLEncode(request.form("phone"))," ","")
addition_date=month(now) & "/" & day(now) & "/" & year(now)
category=trim(Server.HTMLEncode(request.form("category")))

month_str=trim(Server.HTMLEncode(request.form("month_form")))
day_str=trim(Server.HTMLEncode(request.form("day_form")))
year_str=trim(Server.HTMLEncode(request.form("year_form")))
country=trim(Server.HTMLEncode(request.form("country")))
areacode=trim(Server.HTMLEncode(request.form("AREACODES")))
citycode=trim(Server.HTMLEncode(request.form("citycode")))


if email=" " or email="-" or email="~" then
email=""
end if

if phone=" " or phone="-" or phone="~" or phone="+" then
phone=""
end if

phone=replace(phone," ","")
phone=replace(phone,"-","")
phone=replace(phone,"+","")
phone=replace(phone,"~","")
phone=replace(phone,"_","")
phone=replace(phone,".","")

citycode=replace(citycode," ","")
citycode=replace(citycode,"-","")
citycode=replace(citycode,"+","")
citycode=replace(citycode,"~","")
citycode=replace(citycode,"_","")
citycode=replace(citycode,".","")


if IsNumeric(province) = False then
province=""

else

If province<0  or province>13 or len(province)>2 Then
province = ""
End If

end if



if (country="38" and province="") or areacode="" or month_str="" or day_str="" or year_str="" or label="" or name="" or (email="" and phone="") or country="" then
%>
<script>
alert("Please fill all the blank areas at least marked red!");
window.history.back(2);
</script>
<%
response.end
end if




If IsNumeric(day_str) = False Then
day_str= 0
End If

if day_str<1 OR day_str>31 or len(day_str)>2 then
day_str= 1
end if



If IsNumeric(month_str) = False Then
month_str= 0
End If

if month_str<1 OR month_str>12 or len(month_str)>2 then
month_str= 1
end if


If IsNumeric(year_str) = False Then
year_str= 0
End If

if year_str<year(now) OR year_str>2010 or len(year_str)>4 then
year_str= year(now)
end if


if len(price)>30 or len(expression)>250 or len(label)>50 or len(name)>25 or  len(city_district)>30 or  len(phone & citycode)>14 or  len(email)>45 then%>
<script>
overlimit();
</script>
<%response.end
end if

if phone<>"" then
phone="(" & areacode & ")" & citycode & phone
end if

expiration=month_str & "/" & day_str  & "/" & year_str
if province<>"" then province=provincefunc(province)
country=countryfunc(country)

if country<>"Canada" then
province="-"
end if


if category<>"Computer Electronics" and category<>"Employment Career" and category<>"Journey Vacation" and category<>"Other"  and category<>"Real Estate" and category<>"Vehicle" and category<>"Internet"  and category<>"Software"  and category<>"Financial"  and category<>"Services" then
category="Other"
end if

  strFile = Server.MapPath("../xml/adverts.xml") 

  Set objXML = Server.CreateObject("Microsoft.XMLDOM") 

  objXML.async = False 
  objXML.Load (strFile) 
  Set AllItems = objXML.selectNodes("//advert")   
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
       
    
          
if len(max_elem_id)<4 then
space_num=""
for i=1 to 5-len(max_elem_id)
space_num=space_num & "0"
next
max_elem_id= space_num &  max_elem_id
end if
      
  

  id=max_elem_id & "~" 
      
      

    Set objTask = objXML.createElement("advert")
    objRoot.appendChild(objTask)  
        
    Set obj = objXML.createElement("id")
    objTask.appendChild(obj)  
    obj.text = max_elem_id  
    
    Set obj = objXML.createElement("label")
    objTask.appendChild(obj)     
    obj.text = label
    
    Set obj = objXML.createElement("province")
    objTask.appendChild(obj)     
    obj.text = province

    Set obj = objXML.createElement("city_district")
    objTask.appendChild(obj)     
    obj.text = city_district
    
    Set obj = objXML.createElement("price")
    objTask.appendChild(obj)     
    obj.text = price

    Set obj = objXML.createElement("expiration")
    objTask.appendChild(obj)     
    obj.text = expiration

    Set obj = objXML.createElement("expression")
    objTask.appendChild(obj)     
    obj.text = expression

    Set obj = objXML.createElement("name")
    objTask.appendChild(obj)     
    obj.text = name

    Set obj = objXML.createElement("email")
    objTask.appendChild(obj)     
    obj.text = email

    Set obj = objXML.createElement("phone")
    objTask.appendChild(obj)     
    obj.text = phone

    Set obj = objXML.createElement("addition_date")
    objTask.appendChild(obj)     
    obj.text = addition_date

    Set obj = objXML.createElement("category")
    objTask.appendChild(obj)     
    obj.text = category

    Set obj = objXML.createElement("country")
    objTask.appendChild(obj)     
    obj.text = country


    objXML.save strFile
    
    insertXMLField = True 
    Set objField = Nothing  
  
  Set objRoot = Nothing
  Set AllItems = Nothing
  Set objXML = Nothing




logpath = "../log/post.dat"

server.execute "../logger.asp"
%>

<script>
alert("Your classified AD has been posted on website successfully! Thank you for your interest...");
window.location.href=('../default.asp'); 
</script>
<%
end if
%>


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
<img border="0" src="../images/advice.gif"></a>
<a href="javascript:window.print()" title="Print this page">
<img border="0" src="../images/print.gif"></a></p>


<p style="text-align: center; margin-top:0; margin-bottom:0">

&nbsp;</p>



<p style="text-align: center; margin-top:0; margin-bottom:0">
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












<p align="center">
<%
server.execute "../footer.asp" 
server.execute "../statics.asp"
%>