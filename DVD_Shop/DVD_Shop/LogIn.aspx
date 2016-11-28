<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="DVD_Shop.LogIn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Username::<asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>
        <br />
        <br />
        Password::<asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="ButtonLogIn" runat="server" onclick="ButtonLogIn_Click" 
            Text="Log In" />
        <asp:Label ID="labelLoginError" runat="server" ForeColor="Red" 
            Text="Log In Failed" Visible="False"></asp:Label>
    
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/Customer/CustomerRegistration.aspx">Register As A New Customer</asp:HyperLink>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
