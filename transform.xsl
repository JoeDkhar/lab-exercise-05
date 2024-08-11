<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns="http://www.arenaaccess.com">
    <xsl:template match="/">
        <html>
        <body>
            
            <table>
                <tr>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Phone</th>
                </tr>
                <xsl:for-each select="ns:ArenaAccess/ns:SportsComplex">
                    <tr>
                        <td><xsl:value-of select="ns:Name"/></td>
                        <td><xsl:value-of select="ns:Address"/></td>
                        <td><xsl:value-of select="ns:Phone"/></td>
                    </tr>
                </xsl:for-each>
            </table>

            <h2>Facilities</h2>
            <table>
                <tr>
                    <th>Name</th>
                    <th>Type</th>
                    <th>Capacity</th>
                </tr>
                <xsl:for-each select="ns:ArenaAccess/ns:Facilities/ns:Facility">
                    <tr>
                        <td><xsl:value-of select="ns:Name"/></td>
                        <td><xsl:value-of select="ns:Type"/></td>
                        <td><xsl:value-of select="ns:Capacity"/></td>
                    </tr>
                </xsl:for-each>
            </table>

            <h2>Equipment</h2>
            <table>
                <tr>
                    <th>Name</th>
                    <th>Available Quantity</th>
                    <th>Rental Price</th>
                    <th>Currency</th>
                </tr>
                <xsl:for-each select="ns:ArenaAccess/ns:Equipment/ns:Item">
                    <tr>
                        <td><xsl:value-of select="ns:Name"/></td>
                        <td><xsl:value-of select="ns:AvailableQuantity"/></td>
                        <td><xsl:value-of select="ns:RentalPrice"/></td>
                        <td><xsl:value-of select="ns:Currency"/></td>
                    </tr>
                </xsl:for-each>
            </table>

            <h2>Customers</h2>
            <table border="1">
                <tr>
                    <th>CustomerID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Membership Level</th>
                </tr>
                <xsl:for-each select="ns:ArenaAccess/ns:Customers/ns:Customer">
                    <tr>
                        <td><xsl:value-of select="ns:CustomerID"/></td>
                        <td><xsl:value-of select="ns:Name"/></td>
                        <td><xsl:value-of select="ns:Email"/></td>
                        <td><xsl:value-of select="ns:MembershipLevel"/></td>
                    </tr>
                </xsl:for-each>
            </table>

            <h2>Prices</h2>
            <table border="1">
                <tr>
                    <th>Facility Name</th>
                    <th>Hourly Rate</th>
                </tr>
                <xsl:for-each select="ns:ArenaAccess/ns:Prices/ns:Price">
                    <tr>
                        <td><xsl:value-of select="ns:FacilityName"/></td>
                        <td><xsl:value-of select="ns:HourlyRate"/></td>
                    </tr>
                </xsl:for-each>
            </table>

            <h2>Schedule</h2>
            <table border="1">
                <tr>
                    <th>Event Name</th>
                    <th>Facility Name</th>
                    <th>Date</th>
                    <th>Start Time</th>
                    <th>End Time</th>
                </tr>
                <xsl:for-each select="ns:ArenaAccess/ns:Schedule/ns:Event">
                    <tr>
                        <td><xsl:value-of select="ns:Name"/></td>
                        <td><xsl:value-of select="ns:FacilityName"/></td>
                        <td><xsl:value-of select="ns:Date"/></td>
                        <td><xsl:value-of select="ns:StartTime"/></td>
                        <td><xsl:value-of select="ns:EndTime"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>