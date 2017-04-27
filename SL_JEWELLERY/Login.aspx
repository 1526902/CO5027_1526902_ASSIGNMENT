<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SL_JEWELLERY.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div id="content5">

    <h3>LOGIN</h3>

    <asp:label ID="LabelUsername" runat="server" text="Username " AssociatedControlID="Textusername"></asp:label>
    <asp:textbox ID="TextUsername" runat="server" Width="181px"></asp:textbox>

        <br />
        <br />

    <asp:label ID="LabelPassword" runat="server" text="Password   " AssociatedControlID="TextPassword"></asp:label>
    <asp:textbox ID="TextPassword" runat="server" Width="181px"></asp:textbox>

        <br />
        <br />
       
        <div id="content6">
       
            <asp:Button ID="ButtonLogin" runat="server" Text="LOGIN" Height="25px" OnClick="ButtonLogin_Click"/>
            <asp:Literal ID="LiteraLogin" runat="server"></asp:Literal>
            <p style="height: 37px">New to SL JEWELLERY? <a href="Register.aspx">REGISTER</a></p>
        
    </div>

    </div>

  
</asp:Content>
