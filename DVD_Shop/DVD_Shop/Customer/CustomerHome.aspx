<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerHome.aspx.cs" Inherits="DVD_Shop.Customer.CustomerHome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: x-large">
    
        <asp:Label ID="Label1" runat="server" Text="Welcome To Out DVD Shop"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/Manager/SearchDVD.aspx">Show Movie List</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/Customer/Request.aspx">New Request</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="~/Manager/ViewRequest.aspx">Old Request</asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:Button ID="ButtonLogOut" runat="server" onclick="ButtonLogOut_Click" 
            Text="Log Out" />
        <br />
    
    </div>
    </form>
</body>
</html>
