<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SL_JEWELLERY.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="ProductDataSource" ShowFooter="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="ProductID" InsertVisible="False" SortExpression="ProductID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductID") %>'></asp:Label>
                
                </ItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ValidationGroup="INSERT" OnClick="LinkButtonInsert_Click" ID="LinkButtonInsert" runat="server">Insert</asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductStock" SortExpression="ProductStock">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProductStock") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Insert Product Stock" ControlToValidate="TextBox1" Text="*" ForeColor="Purple"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ProductStock") %>'></asp:Label>
                </ItemTemplate>
               <FooterTemplate>
                   <asp:TextBox ID="Txtpdctstock" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="RequiredFieldValidatorEditStock" runat="server" ErrorMessage="Please Insert Product Stock" ControlToValidate="Txtpdctstock" Text="*" ForeColor="purple"></asp:RequiredFieldValidator>
               </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductName" SortExpression="ProductName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="RequiredFieldValidatorEditName" runat="server" ErrorMessage="Please Insert Product Name" ControlToValidate="TextBox4" Text="*" ForeColor="Purple"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductPrice" SortExpression="ProductPrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextProductPrice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="RequiredFieldValidatorEditPrice" runat="server" ErrorMessage="Please Insert Product Price" ControlToValidate="TextProductPrice" Text="*" ForeColor="Purple"></asp:RequiredFieldValidator>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="UploadImage.aspx?={0}" InsertVisible="False" Text="Set images" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>
    <asp:ValidationSummary ValidationGroup="INSERT" ID="ValidationSummary1" runat="server" ForeColor="Purple" />
    <asp:ValidationSummary ID="ValidationSummary2" ForeColor="Purple" runat="server" />
 

<asp:SqlDataSource ID="ProductDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1526902_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @original_ProductID AND (([ProductStock] = @original_ProductStock) OR ([ProductStock] IS NULL AND @original_ProductStock IS NULL)) AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL))" InsertCommand="INSERT INTO [Products] ([ProductStock], [ProductName], [ProductPrice]) VALUES (@ProductStock, @ProductName, @ProductPrice)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProductStock] = @ProductStock, [ProductName] = @ProductName, [ProductPrice] = @ProductPrice WHERE [ProductID] = @original_ProductID AND (([ProductStock] = @original_ProductStock) OR ([ProductStock] IS NULL AND @original_ProductStock IS NULL)) AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_ProductID" Type="Int32" />
        <asp:Parameter Name="original_ProductStock" Type="Int32" />
        <asp:Parameter Name="original_ProductName" Type="String" />
        <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ProductStock" Type="Int32" />
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="ProductPrice" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ProductStock" Type="Int32" />
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="ProductPrice" Type="Decimal" />
        <asp:Parameter Name="original_ProductID" Type="Int32" />
        <asp:Parameter Name="original_ProductStock" Type="Int32" />
        <asp:Parameter Name="original_ProductName" Type="String" />
        <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
    </UpdateParameters>

</asp:SqlDataSource>

     <div id ="content9">

    <a href="https://validator.w3.org/nu/?doc=http%3A%2F%2F1526902.studentwebserver.co.uk%2FCO5027%2FLogin.aspx" >HTML VALIDATION</a>

    </div>

</asp:Content>
