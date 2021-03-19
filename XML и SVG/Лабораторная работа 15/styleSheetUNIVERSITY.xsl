<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="1.0"/>
<xsl:template match="/">
<html>
<body>
<h2>Список студентов 4-ой группы</h2>
<table border="2" style="border-color:black;">
<tr>
<th style="text-align:center;">Имя</th>
<th style="text-align:center">Фамилия</th>
<th style="text-align:center">Отчество</th>
<th style="text-align:center">Средняя оценка</th>
<th style="text-align:center">Год рождения</th>
</tr>
<xsl:for-each select="GROUP_FIVE/STUDENT">
 <xsl:sort select="BIRTH_YEAR" order="descending"/>

<tr style="text-align:center">
<td><xsl:value-of select="NAME"/></td>
<td><xsl:value-of select="SURNAME"/></td>
<td><xsl:value-of select="MIDDLE_NAME"/></td>
<xsl:choose> 
<xsl:when test="GRADE&lt;'6'">
<td bgcolor="red"><xsl:value-of select="GRADE"/></td>
</xsl:when>
<xsl:when test="GRADE='6'">
<td bgcolor="green"><xsl:value-of select="GRADE"/></td>
</xsl:when>
 <xsl:otherwise>
   <td>
     <xsl:value-of select="GRADE"/>
   </td>
 </xsl:otherwise>
</xsl:choose> 
<td><xsl:value-of select="BIRTH_YEAR"/></td>
</tr>	
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>