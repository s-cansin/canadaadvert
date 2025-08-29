<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">

<xsl:variable name="province"/>
<xsl:variable name="category"/>


<xsl:for-each select="adverts/advert">
<xsl:sort select="id" order="descending"/>

<xsl:if test="province = $province or $province=''">
<xsl:if test="category = $category or $category=''">
<xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="id"/></xsl:attribute></xsl:element>
<table align="center" border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-style: dotted; border-width: 1" bordercolor="#C0C0C0" width="625" height="132" bgcolor="#FBFBFB">
  <tr>
    <td width="622" height="132" valign="top">
    <p style="margin-top: 0; margin-bottom: -10">&#160;</p>

    <p style="margin-top: 0; margin-bottom: -10">&#160;<xsl:element name="img">
<xsl:attribute name="src">images/boxes.png</xsl:attribute>
<xsl:attribute name="title">Addition Date: <xsl:value-of select="addition_date"/> - <xsl:value-of select="category"/><xsl:if test="province != '-'">/<xsl:value-of select="province"/></xsl:if></xsl:attribute>
<xsl:attribute name="class">date</xsl:attribute>
</xsl:element>&#160;<font color="#454545"><xsl:value-of select="label"/></font></p>
       <p style="margin-top: 0; margin-bottom: -10"> <br/> </p>
    <p style="margin-top: 0; margin-bottom: -10"> <br/> </p>

    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="152">
      <tr>
        <td width="47%" valign="top" height="152">&#160;&#160;Province: <b><font color="#454545">
        <xsl:value-of select="province"/> / <xsl:value-of select="country"/></font></b> 
<p> &#160;&#160;Price: <b><font color="#454545"><xsl:value-of select="price"/></font></b></p>
<p>
         &#160;&#160;Expiration Date: <b> <font title="Format: Month/Day/Year" color="#454545">
        <xsl:value-of select="expiration"/></font></b></p>
<p>&#160;&#160;City / District: 

<xsl:if test="city_district != '' "><b><font color="#454545">
<xsl:value-of select="city_district"/></font></b>&#160;
<xsl:element name="img">
<xsl:attribute name="src">images/map.png</xsl:attribute>
<xsl:attribute name="title">Take a look at <xsl:value-of select="city_district"/> on MAP</xsl:attribute>
<xsl:attribute name="onclick">map('<xsl:value-of select="city_district"/>,<xsl:if test="province != '-'">_<xsl:value-of select="province"/>,</xsl:if>_<xsl:value-of select="country"/>');</xsl:attribute>
<xsl:attribute name="style">cursor: hand;</xsl:attribute>
</xsl:element>
</xsl:if>
</p>
</td>
        <td width="53%" valign="top" height="152">
         &#160;Name: <b><font color="#454545">
        <xsl:value-of select="name"/></font></b>
        <p>&#160;Contact:       
 
        <xsl:if test="email != '' ">

<xsl:element name="a">
<xsl:attribute name="href">mailto:<xsl:value-of select="email"/></xsl:attribute>
<xsl:value-of select="email"/>
</xsl:element>
        </xsl:if>&#160;
        <xsl:if test="phone != '' ">
        +<xsl:value-of select="phone"/>
        </xsl:if>
        </p>
        <p style="margin-top: 0; margin-bottom: 0"> &#160;Expression:
        <font size="2" color="#454545"><xsl:value-of select="expression"/></font></p></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<br/>

</xsl:if>
</xsl:if>



</xsl:for-each>
  
</xsl:template>
</xsl:stylesheet>