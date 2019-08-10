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
    };