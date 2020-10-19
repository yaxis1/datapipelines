<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version='1.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        
        <html>
            <head>
                <title>client</title>
                <style>
                    table, th, td {border: 1px solid black;}
                    th,td{text-align:center}
                    th, td {padding: 7px;}
                </style>
            </head>
            <body>
                <h1>CLIENT</h1>
                
                <table style="width:100%;" border="2">
                    <tr bgcolor="9acd32">
                        <th>FIRST NAME</th>
                        <th>LAST NAME</th>
                        <th>DATE OF BIRTH</th>
                        <th>AGE</th>
                    </tr>
                    <xsl:for-each select="/clientinfo">
                        <tr>
                            <td> <xsl:value-of select="firstname"/> </td>
                            <td> <xsl:value-of select="lastname"/> </td>
                            <td> <xsl:value-of select="DOB"/> </td>
                            <td> <xsl:value-of select="age"/> </td>
                        </tr>
                    </xsl:for-each>
                </table>
                
                <h2>INSURANCE INFORMATION</h2>
                <table style="width:100%;" border="1">
                    <tr bgcolor="9acd32">
                        <th>CLIENT ID</th>
                        <th>INSURANCE GRANTED</th>
                        <th>INSURANCE TYPE</th>
                    </tr>
                    <xsl:for-each select="/clientinfo/insuranceinfo">
                        <tr>
                            <td> <xsl:value-of select="clientid"/> </td>
                            <td> <xsl:value-of select="insurance_granted"/> </td>
                            <td> <xsl:value-of select="insurance_type"/> </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
        
    </xsl:template>
</xsl:stylesheet>