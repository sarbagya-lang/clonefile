<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mayvue.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mayvue Test</title>
    

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Mayvue Test</h1>
            <h4>Developer: Suresh Mohan Poudel</h4>
            <h4>Email: sureshmohanpoudel@gmail.com</h4>
            <p>Type something:</p>
            <input type="text" id="txtFun" name="txtFun" onkeypress="syncText();" />
            <br />
            <br />
            <p>Magic happens here</p>
            <input type="text" id="lblFun" name="lblFun" />
            <br />
            <p>
                Number of clicks=
            <asp:Label ID="lblClicks" runat="server"></asp:Label>
            </p>
            <br />
            <input type="button" id="btnClick" value="Click me" onclick="CountClick();" />
        </div>


    </form>

</body>
<script>
    var counter = 0;
    function CountClick() {
        lblClicks.innerHTML = counter++;
    }
    function syncText() {
        // I have impleted only for keypress not for keydown and keyup due to lack of time.
        var t1 = document.getElementById('txtFun');
        var t2 = document.getElementById('lblFun');
        t2.value = t1.value;
        //change boarder color
        if (t1.value.length + 1 > 2) {
            t1.style.borderColor = "red";
        }


    }
</script>
</html>
