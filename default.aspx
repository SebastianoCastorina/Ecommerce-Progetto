<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="E_Commerce._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row row-cols-lg-5 d-flex justify-content-center">
        <asp:Repeater ID="Repeater1" runat="server" ItemType="E_Commerce.Prodotto">
            <ItemTemplate>
                <div class="col-6 my-2">
                    <div class="card h-100 mx-3" style="width: 18rem;">
                       <img src="<%# Item.Image %>"" class="card-img-top" alt="Index">
                        <div class="card-body d-flex flex-column justify-content-between">
                            <h5 class="card-title"><%# Item.Name %></h5>
                            <p class="card-text"><%# Item.DescrizioneBreve %></p>
                            <p class="card-text">$<%# Item.Price %></p>
                            <a href="detail?IdProdotto=<%# Item.Id %>" class="btn btn-warning">Dettagli</a>
                        </div>
                     </div>
                   </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
