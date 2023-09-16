<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="E_Commerce.detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex flex-column mx-auto w-50 text-center detailContainer">
        <h2 id="nome" runat="server" class="my-2"></h2>
        <asp:Image ID="image" runat="server" CssClass="w-50 mx-auto my-2"/>
        <asp:Label ID="description" runat="server" class="my-2 fw-bold"></asp:Label>
        <asp:Label ID="price" runat="server" class="my-2 fw-bold"></asp:Label>
        <asp:Button ID="addToCart" runat="server" Text="Aggiungi al Carrello" class="btn btn-success my-2 mx-auto" OnClick="addToCart_Click" />
    </div>
</asp:Content>
