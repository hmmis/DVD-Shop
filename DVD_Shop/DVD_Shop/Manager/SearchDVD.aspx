<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchDVD.aspx.cs" Inherits="DVD_Shop.Manager.SearchDVD" %>

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
    
        Search::<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        By::<asp:Button ID="Button1" runat="server" Text="Movie Name" 
            onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Director Name" 
            onclick="Button2_Click" />
        <asp:Button ID="Button3Actor" runat="server" Text="Actor Name" 
            onclick="Button3Actor_Click" />
        <asp:Button ID="Button4" runat="server" Text="Actress Name" 
            onclick="Button4_Click" />
        <asp:Button ID="Button5" runat="server" Text="Release Year" 
            onclick="Button5_Click" />
        <br />
        <br />
        <br />
        Search By Genre::<asp:RadioButtonList ID="RadioButtonList1" 
            runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem>Action</asp:ListItem>
            <asp:ListItem>Adventure</asp:ListItem>
            <asp:ListItem>Comedy</asp:ListItem>
            <asp:ListItem>Crime</asp:ListItem>
            <asp:ListItem>Horror</asp:ListItem>
            <asp:ListItem>Romantic</asp:ListItem>
            <asp:ListItem>Thriller</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="Button6Search" runat="server" onclick="Button6Search_Click" 
            Text="Search" />
        <br />
        <hr/>
        <asp:Label ID="LabelSearchInfo" runat="server" ForeColor="#009900" 
            Text="Search Info::"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" ForeColor="Black">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
    
    </div>
    </form>
</body>
</html>
