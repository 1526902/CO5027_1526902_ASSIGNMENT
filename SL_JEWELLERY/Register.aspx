<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SL_JEWELLERY.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   
	
       

    <div id="content7">

    <h3 style="height: 27px">REGISTER NOW!</h3>


       <p><asp:Label ID="LabelName" runat="server" Text="Name " AssociatedControlID="TextName"></asp:Label>
       <asp:TextBox ID="Textname" runat="server" Width="145px"></asp:TextBox></p>

        <p><asp:Label ID="LabelUserName" runat="server" Text="Username  " AssociatedControlID="TextUsername"></asp:Label>
        <asp:TextBox ID="TextUsername" runat="server" Width="111px"></asp:TextBox></p>

        <p><asp:Label ID="LabelPassword" runat="server" Text="Password  " AssociatedControlID="TextPassword"></asp:Label>
        <asp:TextBox ID="TextPassword" runat="server" Width="117px"></asp:TextBox></p>

        <p><asp:Label ID="LabelEmail" runat="server" Text="Email  " AssociatedControlID="TextEmail"></asp:Label>
        <asp:TextBox ID="TextEmail" runat="server" Width="147px"></asp:TextBox></p>

        <p><asp:Button ID="ButtonRegister" runat="server" Text=" REGISTER" OnClick="ButtonRegister_Click" /></p>

        <p> <asp:Literal ID="LitError" runat="server"></asp:Literal> </p>

        <br />
        <br />

        
       </div>
</asp:Content>
