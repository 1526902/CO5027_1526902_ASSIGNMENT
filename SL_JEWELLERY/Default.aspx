<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SL_JEWELLERY.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="img1">

          <img src="images/24-Karlie-Kloss-Swarovski.w710.h473.2x.jpg" alt="Karlie Kloss" style="height: 409px; width: 843px" />

        <div class="container">

        <table>

                <tr> 

                <td>

                    <a href="/Necklace.aspx"><img src="Images/NECKLACEPS.jpg" alt="NECKLACE" /></a>
    
                <td>

                    <a href="/Bracelet.aspx"><img src="Images/BRACELETPS.jpg" alt="BRACELET"/></a>

                </td>

                <td>

                    <a href="/Earring.aspx"><img src="Images/earringPS.jpg" alt="EARRING"/></a>

                </td>

                </tr>

                <tr>

                <td>

                   
                    <a href="/Ring.aspx"><img src="Images/RINGPS.jpg" alt="RING"/></a>

                </td>

                <td>

                    <a href="/Tiara.aspx"><img src="Images/TIARA%20PS.jpg" alt="TIARA" /></a>

                </td>

                <td>

                    <a href="/Watch.aspx"><img src="Images/WATCHPS.jpg" alt="WATCH"/></a>


                </td>

                </tr>

                </table>
            
            </div>

            
    </div>

      <div id ="content9">

    <a href="https://validator.w3.org/nu/?doc=http%3A%2F%2F1526902.studentwebserver.co.uk%2FCO5027%2FDefault.aspx" >HTML VALIDATION</a>
    
      </div>

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate><table></HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><a href="<%# Eval ("ProductID", "productdetails.aspx?Id={0}") %>"> <%#Eval("ProductName") %></a></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1526902_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [Products]">
    </asp:SqlDataSource>

</asp:Content>
