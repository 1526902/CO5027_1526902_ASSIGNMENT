<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="SL_JEWELLERY.Contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	 
       <div id="content1">
			    
			  <h3>CONTACT THE SL JEWELLERY ONLINE TEAM</h3>
			
	    </div>	  

       <div id="content4">

        <%--<br />--%>
       <asp:Label ID="LabelName" runat="server" Text="Name "></asp:Label>
       <asp:TextBox ID="TextName" runat="server" Height="17px" Width="244px"></asp:TextBox>

           <asp:RequiredFieldValidator ID="NameValidator" runat="server" ControlToValidate="TextName" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>

        <br />
        <br />

        <asp:Label ID="LabelEmail" runat="server" Text="Email "></asp:Label>
        <asp:TextBox ID="TextEmail" runat="server" Width="245px" TextMode="Email"></asp:TextBox>

           <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ControlToValidate="TextEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>

        <br />

        <br />

        <asp:Label ID="LabelSubject" runat="server" Text="Subject "></asp:Label>
        <asp:TextBox ID="TextSubject" runat="server" Width="226px"></asp:TextBox>

           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextSubject" ErrorMessage="Subject is required" ForeColor="Red"></asp:RequiredFieldValidator>

        <br />

        <br />
          
        <asp:Label ID="LabelMessage" runat="server" Text="Your Message"></asp:Label>
        &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextYourMessage" runat="server" Height="64px" Width="157px"></asp:TextBox>
           
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextYourMessage" ErrorMessage="Insert Message" ForeColor="Red"></asp:RequiredFieldValidator>
           
         <br />
         <br />

         <div id="content8">

         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
               <asp:Literal ID="LitMessage" runat="server"></asp:Literal>

        <br />

        <br />

    </div>
          <div id="map1"></div>

         <script async defer
         src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAAoIckPmF0pLc3s6bOawl_qqpVCyL9KeE&callback=initMap">
         </script>

         <script src="MapJavaScript.js"></script>

   </div>

      <div id ="content9">

    <a href=" https://validator.w3.org/nu/?doc=http%3A%2F%2F1526902.studentwebserver.co.uk%2FCO5027%2FContactus.aspx" >HTML VALIDATION</a>

      </div>
</asp:Content>
