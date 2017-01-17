<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 158px;
        }
    </style>
</head>
<body style="height: 173px">
 
    <form id="form1" runat="server">
        <h1>Login Page</h1>
    <div style="margin-left: 40px">
    
        <asp:Label ID="Label1" runat="server" Text="username"></asp:Label>

        &nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
        <br />
        <br />
    
    </div>
       
        <div style="margin-left: 40px; height: 46px;">
            <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>

        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>

        &nbsp;<br />
            <br />
            <br />
        </div>
        <div style="margin-left: 6px">
            <asp:Button ID="Button1" runat="server" Text="LogIn" OnClick="Button1_Click" Width="77px" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" Width="77px" />
            <br />
            <br />
            <a href="Register.aspx">ADD ACCOUNT</a>&nbsp;&nbsp;&nbsp;&nbsp;

            <a href="Forgot.aspx">FORGOT PASSWORD</a>
            
        </div>
      
         </form>

</body>
</html>
