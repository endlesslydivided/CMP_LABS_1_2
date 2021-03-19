<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="1.0"/>
<xsl:template match="/">
<html>
<body>
<h2> Список универсистетов по проходным баллам </h2>
 <table border="2" style ="border-color:black">
 <tr >
 <th style="text-align:center">Имя университета</th>
 <th style="text-align:center">Проходной балл</th>
 <th style="text-align:center">План набора</th>
 <th style="text-align:center">Город</th>
 </tr>
<xsl:for-each select="myDocument/UNIVERSITIES/UNIVERSITY">
 <tr style = "text-align:center" >
 <td><xsl:value-of select="UNIVERSITY_NAME"/></td>
 <td><xsl:value-of select="PASS_POINT"/></td>
 <td><xsl:value-of select="PLAN"/></td>
 <td><xsl:value-of select="CITY"/></td>
 </tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>