<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SendMail.Default" %>

<%@ Register Src="~/SendMessageControl.ascx" TagName="SendMessageControl" TagPrefix="smc" %>


<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="ContentBody" ContentPlaceHolderID="body" runat="server">
    <smc:SendMessageControl ID="Main" runat="server"></smc:SendMessageControl>
</asp:Content>
