<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="SL_JEWELLERY.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FileUpload ID="FileUpload1" runat="server" />

    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />

    <asp:Image ID="Image1" runat="server" />
</asp:Content>
