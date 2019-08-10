<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SendMessageControl.ascx.cs" Inherits="SendMail.SendMessageControl" %>

<asp:Label ID="LabelHead" CssClass="labelHead" runat="server" Text="<%$ Resources:Head %>" />
<asp:Label ID="LabelEmail" CssClass="labels" runat="server" Text="<%$ Resources:Mail %>" />
<asp:TextBox ID="TextEmail" CssClass="TextMail" Width="60%" runat="server" OnTextChanged="TextEmail_TextChanged" onkeyup="SaveEmail()" onfocus="RemoveWarning()" placeholder="Email address of the recipient.."> </asp:TextBox>
<asp:Label ID="IsValidMail" runat="server" Text="" />
<asp:Label ID="LabelMessage" CssClass="labels" runat="server" Text="<%$ Resources:Message %>" />
<asp:TextBox ID="TextMessage" CssClass="TextMessage" runat="server" Width="100%" Rows="10" TextMode="MultiLine" onkeyup="SaveMessage()" placeholder="Please input your message.."></asp:TextBox>

<asp:Button ID="Send" CssClass="Send" runat="server" Font-Bold="False" OnClick="Send_Click" Width="140px" Text="<%$ Resources:Send %>" />

<script>
 function SaveEmail(){
        var input = document.getElementById("body_Main_TextEmail").value;

        if (typeof (Storage) !== "undefined") {
		    localStorage.setItem('inputMail', input);
	    }
	    else {
		    input = "Sorry, your browser does not support web storage. Check your browser version, it must be greater than Chrome:4.0+, Opera:11.5+, Internet Explorer:8.0+, Mozilla FireFox:3.5+, Safari:4.0+";
	    }
        RemoveWarning();
        };

 function SaveMessage(){
        var input = document.getElementById("body_Main_TextMessage").value;

        if (typeof (Storage) !== "undefined") {
		    localStorage.setItem('inputMessage', input);
	    }
	    else {
		    input = "Sorry, your browser does not support web storage. Check your browser version, it must be greater than Chrome:4.0+, Opera:11.5+, Internet Explorer:8.0+, Mozilla FireFox:3.5+, Safari:4.0+";
	    }
        };

function RemoveWarning(){
        document.getElementById('body_Main_IsValidMail').innerHTML = "";
}
 window.onload = function TextRecovery() {
	    if (typeof (Storage) !== "undefined") {
		    if (localStorage.inputMail) {
			    document.getElementById("body_Main_TextEmail").value = localStorage.inputMail;
		    }
		    if (localStorage.inputMessage) {
			    document.getElementById("body_Main_TextMessage").value = localStorage.inputMessage;
		    }
	}
}
</script>