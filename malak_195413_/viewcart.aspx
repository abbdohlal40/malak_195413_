<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewcart.aspx.cs" Inherits="malak_195413_.viewcart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="container mt-5">
        <div class="row mb-4 text-center">
            <div class="col">
                <img src="images/cart.jpg" class="img-fluid mb-3" alt="Cart Image" />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="cart_click" CssClass="btn btn-outline-primary">Your cart is</asp:LinkButton>
            </div>
        </div>

        <div class="row mb-3 text-center">
            <div class="col">
                <asp:Label ID="countlbl" runat="server" Text="" CssClass="h5"></asp:Label>
            </div>
        </div>

        <div class="row mb-4 text-center">
            <div class="col">
                <asp:Label ID="pricelbl" runat="server" Text="" CssClass="h5"></asp:Label>
                <br /><br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" CssClass="btn btn-success mb-3" />
                <br />
                <asp:Label ID="namelbl" runat="server" Font-Bold="True" Text="Enter your name :" Visible="False" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="nametxt" runat="server" Visible="False" CssClass="form-control mb-3 mx-auto" style="width: 50%;" />
                <asp:Label ID="countrylbl" runat="server" Font-Bold="True" Text="Choose your country :" Visible="False" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="countrydp" runat="server" Visible="False" CssClass="form-select mb-3 mx-auto" style="width: 50%;">
                    <asp:ListItem>Syria</asp:ListItem>
                    <asp:ListItem>Egypt</asp:ListItem>
                    <asp:ListItem>Iraq</asp:ListItem>
                    <asp:ListItem>Morocco</asp:ListItem>
                    <asp:ListItem>Algeria</asp:ListItem>
                    <asp:ListItem>Tunisia</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Do it" Visible="False" CssClass="btn btn-secondary" />
            </div>
        </div>

        <asp:Repeater ID="rep" runat="server">
            <HeaderTemplate>
                <div class="row mb-4 text-center">
                    <div class="col">
                        <h2> products</h2>
                    </div>
                </div>
                <div class="row">
            </HeaderTemplate>
            <ItemTemplate>
                <div class="col-md-3 col-sm-6 mb-4">
                    <div class="card h-100 text-center">
                        <img src='<%#Eval("image") %>' class="card-img-top img-fluid" alt='<%#Eval("name") %>' />
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("name") %></h5>
                            <p class="card-text"><%#Eval("price") %></p>
                            <a class="btn btn-danger" href="WebForm5.aspx?id=<%#Eval("Id") %>">Delete</a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
            <FooterTemplate>
                </div>
            </FooterTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
