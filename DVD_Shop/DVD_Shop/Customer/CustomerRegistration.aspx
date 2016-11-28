<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="DVD_Shop.Customer.CustomerRegistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" ForeColor="Lime" 
            Text="DVD Shop Register As a New User"></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LogIn.aspx">Home</asp:HyperLink>
        <br />
        <br />
        Username::<asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBoxUsername" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Password::<asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBoxPassword" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Confirm Password::<asp:TextBox ID="TextBoxPasswordConfirm" runat="server" 
            TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxPasswordConfirm" 
            ErrorMessage="*Password Not Matched" ForeColor="Red"></asp:CompareValidator>
        <br />
        <br />
        Name::<asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
        <br />
        <br />
        Email::<asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBoxEmail" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBoxEmail" ErrorMessage="*Invalid Email" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        Mobile::<asp:TextBox ID="TextBoxMobile" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBoxMobile" ErrorMessage="*Must Be Number" 
            ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Button ID="ButtonRegister" runat="server" onclick="ButtonRegister_Click" 
            Text="Register" />
        <br />
        <br />
        <br />
        <asp:Label ID="LabelInfo" runat="server" BackColor="Lime" 
            Text="Info:: About Registration" Visible="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
