<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version='2.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:template match="/">
        <html>
            <head>
                <title>insurance</title>
                <style>
                 table, th, td {border: 1px solid black;}
                    th, td {padding: 7px;}
                th,td{text-align:center}
                </style>
            </head>
            <body>
               <h1>INSURANCE</h1>
                <table style="width:100%;" border="2" >
                    <tr bgcolor="9acd32">
                            <th>CONTRACT ID</th>
                            <th>CLIENT ID</th>
                            <th>EMPLOYEE ID</th>
                            <th>BEGIN CONTRACT DATE</th>
                            <th>END CONTRACT DATE</th>
                            <th>INSURANCE TYPE</th>
                        </tr>
                    
                    <xsl:for-each select="/insurances/insurance">
                        
                        <xsl:if test="end_contract_date = '2020-10-18' " >
                            
                            <xsl:value-of select="end_contract_date = '2020-10-18'"/>
                            <tr bgcolor='RED' >
                        
                        
                            
                        
                            <td> <xsl:value-of select="contract_id"/> </td>
                            <td> <xsl:value-of select="clientid"/> </td>
                            <td> <xsl:value-of select="employeeid"/> </td>
                            <td> <xsl:value-of select="begin_contract_date"/> </td>
                            <td> <xsl:value-of  select="end_contract_date"/> </td>
                            <td> <xsl:value-of select="insurance_type"/> </td>
                        </tr>
                        </xsl:if>
                        <xsl:if test="not(end_contract_date = '2020-10-18' )" >
                            <tr>
                                
                                
                                
                                
                                <td> <xsl:value-of select="contract_id"/> </td>
                                <td> <xsl:value-of select="clientid"/> </td>
                                <td> <xsl:value-of select="employeeid"/> </td>
                                <td> <xsl:value-of select="begin_contract_date"/> </td>
                                <td> <xsl:value-of  select="end_contract_date"/> </td>
                                <td> <xsl:value-of select="insurance_type"/> </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
                