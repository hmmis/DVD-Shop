<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDVDList.aspx.cs" Inherits="DVD_Shop.Manager.ViewDVDList" %>

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
        <asp:GridView ID="GridView1" runat="server" 
            onrowcancelingedit="GridView1_RowCancelingEdit2" 
            onrowdatabound="GridView1_RowDataBound1" onrowdeleting="GridView1_RowDeleting1" 
            onrowupdating="GridView1_RowUpdating" 
            onselectedindexchanged="GridView1_SelectedIndexChanged1">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="MovieId" 
                    DataNavigateUrlFormatString="EditDVD.aspx?id={0}" HeaderText="Edit" 
                    Text="Edit" />
                <asp:HyperLinkField HeaderText="Delete" 
                    Text="Delete" DataNavigateUrlFields="MovieId" 
                    DataNavigateUrlFormatString="DeleteDVD.aspx?id={0}" />
            </Columns>
        </asp:GridView>
        <br />
    
    </div>
    </form>
</body>
</html>
