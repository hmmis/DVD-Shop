<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchCustomer.aspx.cs" Inherits="DVD_Shop.Manager.SearchCustomer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/Manager/WebFormManagerHome.aspx">Manager Home</asp:HyperLink>
        <br />
        <br />
        Search Customer::<asp:TextBox 
            ID="TextBoxSearch" runat="server"></asp:TextBox>
&nbsp;By
        <asp:Button ID="ButtonUsername" runat="server" Text="Username" 
            onclick="ButtonUsername_Click" />
        <asp:Button ID="Button2" runat="server" Text="Name" onclick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Email" onclick="Button3_Click" 
            style="height: 26px" />
        <asp:Button ID="Button4" runat="server" Text="Mobile" onclick="Button4_Click" />
        <br />
        <hr/>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br/>
    
    </div>
    </form>
</body>
</html>
