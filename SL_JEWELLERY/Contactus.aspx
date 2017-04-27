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

        <br />
        <br />

        <asp:Label ID="LabelEmail" runat="server" Text="Email "></asp:Label>
        <asp:TextBox ID="TextEmail" runat="server" Width="245px"></asp:TextBox>

        <br />

        <br />

        <asp:Label ID="LabelSubject" runat="server" Text="Subject "></asp:Label>
        <asp:TextBox ID="TextSubject" runat="server" Width="226px"></asp:TextBox>

        <br />

        <br />
          
        <asp:Label ID="LabelMessage" runat="server" Text="Your Message"></asp:Label>
        &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextYourMessage" runat="server" Height="64px" Width="157px"></asp:TextBox>
           
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

</asp:Content>
