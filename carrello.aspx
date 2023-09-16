<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="carrello.aspx.cs" Inherits="E_Commerce.carrello" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mx-2">
     <asp:GridView ID="GridView1" CssClass="table table-bordered" AutoGenerateColumns="false" runat="server" ItemType="E_Commerce.Prodotto" RowStyle-BackColor="Wheat" HeaderStyle-BackColor="WhiteSmoke" BorderColor="DarkBlue">
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <strong>Nome</strong>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <%#Item.Name %>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <strong>Descrizione</strong>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <%#Item.DescrizioneBreve %>.
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <strong>Prezzo</strong>
                            </HeaderTemplate>
                            <ItemTemplate>
                                $<%#Item.Price %>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Remove" runat="server" Text="Rimuovi dal Carrello" CssClass="btn btn-danger" CommandArgument="<%# Item.Id %>" OnClick="Remove_Click"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
        <h3 id="totale" runat="server"></h3>
        </div>
    <div class="d-flex flex-column align-items-center">
    <asp:Label ID="message" runat="server" Text="Non hai nulla nel carrello!" CssClass="fw-bold fs-2"></asp:Label>
    <asp:Button ID="SvuotaCarrello" runat="server" Text="Svuota il Carrello" CssClass="btn btn-danger" OnClick="SvuotaCarrello_Click" />
        </div>
</asp:Content>
