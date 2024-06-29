<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="malak_195413_.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <asp:Repeater ID="rep" runat="server" OnItemCommand="rep_ItemCommand">
        <HeaderTemplate>
            <div class="row">
					<div class="col-md-12">
						<div class="titlepage">
							<h2>Our products</h2>
						</div>
					</div>
				</div>
            	<div class="row">
        </HeaderTemplate>
        <ItemTemplate>
            <div class="col-md-3 col-sm-6">
						<div class="protien">
							<figure><img src="<%#Eval("image") %>" alt="#" style="height:300px;"/></figure>
							<h3><%#Eval("price") %> $</h3>
							<span> <%#Eval("name") %> </span>
							<a class="read_more mar_top" href="WebForm3.aspx?id=<%# Eval("Id") %>">
								read_more</a
							>
						</div>
					</div>
        </ItemTemplate>
        <FooterTemplate>
            </div>
        </FooterTemplate>
    </asp:Repeater>


</asp:Content>
