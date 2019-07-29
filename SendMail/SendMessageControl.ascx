<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SendMessageControl.ascx.cs" Inherits="SendMail.SendMessageControl" %>

<asp:Label ID="LabelHead" CssClass="labelHead" runat="server" Text="<%$ Resources:Head %>" />
<asp:Label ID="LabelEmail" CssClass="labels" runat="server" Text="<%$ Resources:Mail %>" />
<asp:TextBox ID="TextEmail" CssClass="TextMail" Width="60%" runat="server" OnTextChanged="TextEmail_TextChanged" placeholder="Email address of the recipient.."> </asp:TextBox>
<asp:Label ID="IsValidMail" runat="server" Text="" />
<asp:Label ID="LabelMessage" CssClass="labels" runat="server" Text="<%$ Resources:Message %>" />
<asp:TextBox ID="TextMessage" CssClass="TextMessage" runat="server" Width="100%" Rows="10" TextMode="MultiLine" placeholder="Please input your message.."></asp:TextBox>

<asp:Button ID="Send" CssClass="Send" runat="server" Font-Bold="False" OnClick="Send_Click" Width="140px" Text="<%$ Resources:Send %>" />


<script>
 (function(){
        var input = document.querySelector('.TextMessage');
        if (localStorage.hasOwnProperty('inputMessage')) {
            input.value = localStorage.inp; 
        }
        input.onchange = function() {
            localStorage.setItem('inputMessage', this.value); 
        }
        })();

        (function(){
        var inputm = document.querySelector('.TextMail');
        if (localStorage.hasOwnProperty('inputMail')) {
            inputm.value = localStorage.inpm; 
        }
        inputm.onchange = function() {
            localStorage.setItem('inputMail', this.value); 
        }
        })();
</script>
