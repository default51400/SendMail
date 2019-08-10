<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SendMessageControl.ascx.cs" Inherits="SendMail.SendMessageControl" %>

<asp:Label ID="LabelHead" CssClass="labelHead" runat="server" Text="<%$ Resources:Head %>" />
<asp:Label ID="LabelEmail" CssClass="labels" runat="server" Text="<%$ Resources:Mail %>" />
<asp:TextBox ID="TextEmail" CssClass="TextMail" Width="60%" runat="server" OnTextChanged="TextEmail_TextChanged" onkeyup="SaveEmail()" onfocus="RemoveWarning()" placeholder="Email address of the recipient.."> </asp:TextBox>
<asp:Label ID="IsValidMail" runat="server" Text="" />
<asp:Label ID="LabelMessage" CssClass="labels" runat="server" Text="<%$ Resources:Message %>" />
<asp:TextBox ID="TextMessage" CssClass="TextMessage" runat="server" Width="100%" Rows="10" TextMode="MultiLine" onkeyup="SaveMessage()" placeholder="Please input your message.."></asp:TextBox>

<asp:Button ID="Send" CssClass="Send" runat="server" Font-Bold="False" OnClick="Send_Click" Width="140px" Text="<%$ Resources:Send %>" />

