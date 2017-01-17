<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CRUD.aspx.cs" Inherits="CRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            font-weight: 700;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="FIRST NAME" TabIndex="9"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" ToolTip="Enter FirstName" Width="144px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" TabIndex="5" Text="NEW" Width="75px" OnClick="Button1_Click" />
    </div>
        <br />
        <asp:Label ID="Label2" runat="server" Text="LAST NAME" TabIndex="10"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" ToolTip="Enter LastName" Width="144px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" TabIndex="6" Text="INSERT" Width="78px" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="MOBILE" TabIndex="11"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" ToolTip="Enter MobileNo" Width="144px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" TabIndex="7" Text="DELETE" OnClick="Button3_Click" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="EMAIL" TabIndex="12"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" ToolTip="Enter Email" Width="144px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" TabIndex="8" Text="UPDATE" OnClick="Button4_Click" />
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="PASSWORD" TabIndex="12"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" ToolTip="Enter Email" Width="144px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="CATEGORY" TabIndex="13"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" TabIndex="4">
            <asp:ListItem>HOME</asp:ListItem>
            <asp:ListItem>OFFICE</asp:ListItem>
            <asp:ListItem>FRIENDS</asp:ListItem>
            <asp:ListItem>FAMILY</asp:ListItem>
        </asp:DropDownList>
        <br />
        `<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Mobile" >
            <Columns>
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" ReadOnly="True" SortExpression="Mobile" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            </Columns>
        </asp:GridView>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </form>
</body>
</html>
