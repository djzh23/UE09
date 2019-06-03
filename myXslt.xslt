<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes" encoding="utf-8"/>
<xsl:template match="/">
<html> 
<head>
<style>
table, th, td {
  border: 2px solid rgb(228, 240, 245);;
  border-collapse: collapse;
  font-family: 'Muli', sans-serif;
    font-size:12px;
}
.header {
    width:1300px;
    height:100px;
    background:white;
}
._1{
    width: 20%;
    display:inline-block;
    box-sizing: border-box;
    padding: 1%;
}
<!-- .header_links{
margin-top: 10px;
}
.header_mitte{    
       margin: 0 auto;
    max-width: 1160px;
    position: relative;
}

.header_recht{
position: absolute;
right: 5px;
top: 8px;
} -->
#container {
    //border: 2px dashed #444;
    height: 70px;
    
    text-align: justify;
    -ms-text-justify: distribute-all-lines;
    text-justify: distribute-all-lines;
    
    /* just for demo */
    min-width: 612px;
    
     
}


.header_links, .header_mitte, .header_recht {
    width: 441px;
    height: 125px;
    vertical-align: top;
    display: inline-block;
    *display: inline;
    zoom: 1;
    padding-top:15px;
    //text-align: center ;
    font-family: 'Muli', sans-serif;
    font-size:12px;

} 
.header_mitte,a{
    text-align: center ;
    
 }

.header_recht > a{
position: absolute;
right: 15px;
 }

 <!-- tr {
  background-color: rgb(228, 240, 245);
} -->

th{
  background:rgb(228, 240, 245);
  overflow: hidden;
  border: 0px solid black;
}
td{
    width:10%;
}
</style>

</head> 
<body>
<xsl:for-each select="notes/infos">
<div id="container">
 <div class="header_links">
    <a> Name: <xsl:value-of select="fullname"/> </a>
    <br />
    <a> Matr.Num: <xsl:value-of select="matrikelnr"/></a>
    <br />
    <a> Fachsemeter: <xsl:value-of select="fachsemester"/></a>
 </div>

 <div class="header_mitte" >
    <a>Studiengang</a><br />
    <a><xsl:value-of select="studiengang"/></a>
</div>
 <div class="header_recht">
 <a style="font-weight:bold;font-size:16px;">HS-FLENSBURG </a><br />
 <a><xsl:value-of select="stand"/></a>
</div>
</div>
</xsl:for-each>
<hr width="100%" />
<p>Leistungen :</p>
 <table>
    <tr>
        <th>Fachnummer</th>
        <th>Bezeichnung</th>
        <th>Art</th>
        <th>Zeitraum 1</th>
        <th>Note</th>
        <th>Zeitraum 2</th>
        <th>Note</th>
        <th>Zeitraum 3</th>
        <th>Note</th>
    </tr>
    <xsl:for-each select="notes/note">
        <tr style="text-align:center;background:white; ">
            <td><xsl:value-of select="fachnr"/></td>
            <td><xsl:value-of select="bezeichnung"/></td>
            <td><xsl:value-of select="art"/></td>
            <td><xsl:value-of select="Zeitraum1"/></td>
            <td><xsl:value-of select="nt1"/></td>
            <td><xsl:value-of select="Zeitraum2"/></td>
            <td><xsl:value-of select="nt2"/></td>
            <td><xsl:value-of select="Zeitraum3"/></td>
            <td><xsl:value-of select="nt3"/></td>
        </tr>
    </xsl:for-each>
    </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>