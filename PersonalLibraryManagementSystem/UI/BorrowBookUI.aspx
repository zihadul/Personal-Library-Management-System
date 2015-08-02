<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BorrowBookUI.aspx.cs" Inherits="PersonalLibraryManagementSystem.UI.BorrowBookUI" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<meta charset="UTF-8">
<title>Borrow Book</title>
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper">
        <header><h1>Borrow Book</h1></header>
        <nav>
            <ul>
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="BookEntry.aspx">Book Entry</a></li>
                <li><a href="MemberEntryUI.aspx">Member Entry</a></li>
                <li><a href="BorrowBookUI.aspx">Borrow Book(s)</a></li>
                <li><a href="ReturnBookUI.aspx">Return Book(s)</a></li>
            </ul>
        </nav>
        <div class="container">
            <div class="content1">
        <asp:Label ID="Label1" runat="server" Text="Enter member no."  Font-Size="12" Font-Bold="true" ForeColor="#000099"></asp:Label>
        <asp:TextBox ID="numberBorrowBookTextBox" runat="server" Height="27px" Width="183px"  Font-Size="12" Font-Bold="true" ForeColor="red"></asp:TextBox><br/><br/>
        <asp:Label ID="Label2" runat="server" Text="Select a book"  Font-Size="12" Font-Bold="true" ForeColor="#000099"></asp:Label>
        <asp:DropDownList ID="borrowBookDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="borrowBookDropDownList_SelectedIndexChanged" Height="22px" Width="216px"  Font-Size="12" Font-Bold="true" ForeColor="red"></asp:DropDownList><br/><br/>
        <asp:Label ID="Label3" runat="server" Text="Author"  Font-Size="12" Font-Bold="true" ForeColor="#000099"></asp:Label>
        <asp:TextBox ID="authorBorrowBookTextBox" runat="server" Height="23px" Width="256px"  Font-Size="12" Font-Bold="true" ForeColor="#ff5050"></asp:TextBox><br/><br/>
        <asp:Label ID="Label4" runat="server" Text="Publisher"  Font-Size="12" Font-Bold="true" ForeColor="#000099"></asp:Label>
        <asp:TextBox ID="publisherBorrowBookTextBox" runat="server" Height="23px" Width="238px"  Font-Size="12" Font-Bold="true" ForeColor="#ff5050"></asp:TextBox><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="borrowButton" runat="server" Text="Borrow" OnClick="borrowButton_Click" Height="36px" Width="79px"  Font-Size="12" Font-Bold="true" ForeColor="#006600"/><br/><br/>
        <asp:Label ID="mesBorrowBookLabe" runat="server" Text=""  Font-Size="12" Font-Bold="true" ForeColor="red"></asp:Label>
    </div>
            <div style='overflow-x:auto;overflow-y:auto;width:940px'>
            <asp:GridView ID="borrowBookGridView" runat="server" AutoGenerateColumns="False" AllowPaging="true" PageSize="10" OnPageIndexChanging="OnPaging" >
                <Columns>
                    <asp:BoundField DataField="SerialNo" HeaderText="Serial No." />
                    <asp:BoundField DataField="Title" HeaderText="Book Title" />
                    <asp:BoundField DataField="Author" HeaderText="Author" />
                    <asp:BoundField DataField="Publisher" HeaderText="Publisher" />
                    <asp:BoundField DataField="AMember.Name" HeaderText="Borrowed by" />
                </Columns>
            </asp:GridView>
                </div>
             </div>
         </div>
    </form>
</body>
</html>
