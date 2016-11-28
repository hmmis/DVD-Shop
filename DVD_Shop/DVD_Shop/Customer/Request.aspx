<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="DVD_Shop.Customer.Request" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/Customer/CustomerHome.aspx">Customer Home</asp:HyperLink>
        <br />
        <br />
        Submit A Request<br />
        <br />
        Title::<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Description::<asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="ButtonRequest" runat="server" onclick="ButtonRequest_Click" 
            Text="Request" />
        <br />
        <br />
        <asp:Label ID="LabelSuccess" runat="server" ForeColor="#009900" 
            Text="Request Successfully Submitted" Visible="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
