<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="SendMail.Success" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="ContentBody" ContentPlaceHolderID="body" runat="server">
    <asp:Label id="LabelSuccess" Text="<%$ Resources:Success %>" CssClass="labelHead" Runat="server" />
</asp:Content>
