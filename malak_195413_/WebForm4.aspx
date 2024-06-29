<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="malak_195413_.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            margin: 0 auto;
            padding: 20px;
        }

        .gridview {
            width: 100%;
            border-collapse: collapse;
        }

        .gridview th, .gridview td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .gridview th {
            background-color: #4CAF50;
            color: white;
        }

        .gridview tr:hover {
            background-color: #f1f1f1;
        }

        .alt-row {
            background-color: #f9f9f9;
        }

        .header-style {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
        }

        .footer-style {
            background-color: #f9f9f9;
        }

        .pager-style {
            background-color: #4CAF50;
            color: white;
            text-align: center;
        }

        .selected-row-style {
            background-color: #4CAF50;
            color: white;
        }

        .textbox {
            width: 100%;
            padding: 8px;
            margin: 4px 0;
            box-sizing: border-box;
        }

        .fileupload {
            margin: 10px 0;
            width: 100%;
        }

        button, .btn, .LinkButton {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover, .btn:hover, .LinkButton:hover {
            background-color: #45a049;
        }
         @media (max-width: 768px) {
            .gridview th, .gridview td {
                display: block;
                width: 100%;
            }

            .gridview th, .gridview td::before {
                float: left;
                text-align: left;
            }

            .gridview td {
                border: none;
                position: relative;
                padding-left: 50%;
                text-align: right;
            }

            .gridview td::before {
                position: absolute;
                top: 12px;
                left: 12px;
                width: 45%;
                padding-right: 10px;
                white-space: nowrap;
                font-weight: bold;
            }

            .gridview td:nth-of-type(2)::before { content: "Id"; }
            .gridview td:nth-of-type(3)::before { content: "name"; }
            .gridview td:nth-of-type(4)::before { content: "price"; }
            .gridview td:nth-of-type(5)::before { content: "desc"; }
            .gridview td:nth-of-type(6)::before { content: "image"; }
        }
    </style>
    <div class="container">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="gridview" ShowFooter="True">
            <AlternatingRowStyle CssClass="alt-row" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton runat="server" OnClick="Insert_Click" CssClass="btn">Insert</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="name" SortExpression="name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>' CssClass="textbox"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox runat="server" ID="name" CssClass="textbox"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="price" SortExpression="price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("price") %>' CssClass="textbox"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="price" runat="server" CssClass="textbox"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="desc" SortExpression="desc">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("desc") %>' CssClass="textbox"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("desc") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="desc" runat="server" CssClass="textbox"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="image" SortExpression="image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("image") %>' CssClass="textbox"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("image") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:FileUpload ID="image" runat="server" CssClass="fileupload" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:ImageField DataImageUrlField="image" HeaderText="Photo" ControlStyle-Height="100" ControlStyle-Width="100">
                </asp:ImageField>
            </Columns>
            <FooterStyle CssClass="footer-style" />
            <HeaderStyle CssClass="header-style" />
            <PagerStyle CssClass="pager-style" />
            <SelectedRowStyle CssClass="selected-row-style" />
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [products] WHERE [Id] = @Id" 
            InsertCommand="INSERT INTO [products] ([name], [price], [desc], [image]) VALUES (@name, @price, @desc, @image)" 
            SelectCommand="SELECT * FROM [products]" 
            UpdateCommand="UPDATE [products] SET [name] = @name, [price] = @price, [desc] = @desc, [image] = @image WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String"></asp:Parameter>
                <asp:Parameter Name="price" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="desc" Type="String"></asp:Parameter>
                <asp:Parameter Name="image" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String"></asp:Parameter>
                <asp:Parameter Name="price" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="desc" Type="String"></asp:Parameter>
                <asp:Parameter Name="image" Type="String"></asp:Parameter>
                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
