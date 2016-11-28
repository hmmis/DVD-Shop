<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormManagerHome.aspx.cs" Inherits="DVD_Shop.Manager.WebFormManagerHome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: x-large">
    
        Manager Home<br />
        <br />
    
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/Manager/AddNewDVD.aspx">Add New DVD</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/Manager/ViewDVDList.aspx">View DVD List &amp; Edit, Delete</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="~/Manager/SearchDVD.aspx">Search DVD</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink4" runat="server" 
            NavigateUrl="~/Manager/ViewCustomer.aspx">View Customer List</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink5" runat="server" 
            NavigateUrl="~/Manager/SearchCustomer.aspx">Search Customer</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink6" runat="server" 
            NavigateUrl="~/Manager/ViewRequest.aspx">View Request</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink7" runat="server" 
            NavigateUrl="~/Manager/ChangePassword.aspx">Change Password</asp:HyperLink>
    
        <br />
        <br />
        <asp:Button ID="ButtonLogOut" runat="server" onclick="ButtonLogOut_Click" 
            Text="Log Out" />
    
    </div>
    </form>
</body>
</html>
