<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditDVD.aspx.cs" Inherits="DVD_Shop.Manager.EditDVD" %>

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
        <asp:Label ID="Label1" runat="server" BorderStyle="Dotted" Text="Edit DVD"></asp:Label>
        <br />
        <br />
        Movie Name::<asp:TextBox ID="TextBoxMovieName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBoxMovieName" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Movie Director ::<asp:TextBox ID="TextBoxDirector" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBoxDirector" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Movie Actor::<asp:TextBox ID="TextBoxActor" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBoxActor" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Moive Actress::<asp:TextBox ID="TextBoxActress" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBoxActress" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Release Year::<asp:TextBox ID="TextBoxYear" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBoxYear" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Reselect
        Movie Genre::<asp:CheckBoxList ID="CheckBoxListGener" runat="server" 
            RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem>Action</asp:ListItem>
            <asp:ListItem>Adventure</asp:ListItem>
            <asp:ListItem>Comedy</asp:ListItem>
            <asp:ListItem>Crime</asp:ListItem>
            <asp:ListItem>Horror</asp:ListItem>
            <asp:ListItem Value="Romantic"></asp:ListItem>
            <asp:ListItem>Thriller</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="Button1" runat="server" Height="31px" onclick="Button1_Click" 
            Text="Edit" />
        <asp:Label ID="LabelSuccess" runat="server" BackColor="Blue" BorderStyle="None" 
            ForeColor="Lime" Text="New Movie Add Successfully in Database" Visible="False"></asp:Label>
    
        <br />
    
    </div>
    </form>
</body>
</html>
