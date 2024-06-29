<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="malak_195413_.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <style>
        /* تنسيق عام */
        .product-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ddd;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .product-image {
            flex: 0 0 200px; /* قياسات الصورة */
            margin-right: 20px; /* تباعد يسار */
        }

        .product-image img {
            max-width: 450px;
            height: auto;
            display: block;
            border-radius: 5px;
        }

        .product-details {
            flex: 1; /* الانتشار */
        }

        .product-details h2 {
            font-size: 26px;
            margin-bottom: 10px;
        }

        .product-details p {
            font-size: 20px;
            color: #666;
            margin-bottom: 15px;
        }

        .product-price {
            font-size: 25px;
            font-weight: bold;
            color: #333;
        }

        .add-to-cart-button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 10px;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .add-to-cart-button:hover {
            background-color: #45a049;
        }

        /* تنسيق للموبايل */
        @media (max-width: 767px) {
            .product-container {
                flex-direction: column;
            }

            .product-image {
                margin-right: 0;
                margin-bottom: 10px;
            }

            .add-to-cart-button {
                width: 100%;
            }
        }
    </style>

    <asp:Repeater ID="rep" runat="server" OnItemCommand="rep_ItemCommand">
        <HeaderTemplate>
            <h1>Description</h1>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="product-container">
                <div class="product-image">
                    <img src='<%# Eval("image") %>' alt='<%# Eval("name") %>' />
                </div>
                <div class="product-details">
                    <h2><%# Eval("name") %></h2>
                    <p><%# Eval("desc") %></p>
                    <div class="product-price">
                        Price: <%# Eval("price") %>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <FooterTemplate>
        </FooterTemplate>
    </asp:Repeater>
      <asp:Button ID="addtocart" runat="server" OnClick="addtocart_Click" Text="Add To Cart" CssClass="add-to-cart-button" />
</asp:Content>
