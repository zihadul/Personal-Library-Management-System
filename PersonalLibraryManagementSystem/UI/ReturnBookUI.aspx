<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReturnBookUI.aspx.cs" Inherits="PersonalLibraryManagementSystem.UI.ReturnBookUI" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<meta charset="UTF-8">
<title>Return Book</title>
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper">
        <header><h1>Return Book</h1></header>
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
        <asp:Label ID="Label1" runat="server" Text="Enter member no." Font-Size="12" Font-Bold="true" ForeColor="#0000cc"></asp:Label>
        <asp:TextBox ID="numberReturnBookTextBox" runat="server" Font-Size="12" Font-Bold="true" ForeColor="red" Height="35px" Width="253px"></asp:TextBox><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="showButton" runat="server" Text="Show Borrowed Books" OnClick="showButton_Click" Font-Size="12" Font-Bold="true" ForeColor="#006600" Height="41px" Width="249px"/><br/><br/>
        <asp:Label ID="Label2" runat="server" Text="Borroed booklist" Font-Size="12" Font-Bold="true" ForeColor="#0000cc"></asp:Label>
        <asp:DropDownList ID="returnBookDropDownList" runat="server" AutoPostBack="True" Font-Size="12" Font-Bold="true" ForeColor="red" Height="30px" Width="267px"></asp:DropDownList><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="returnButton" runat="server" Text="Return" OnClick="returnButton_Click" Font-Size="12" Font-Bold="true" ForeColor="#006600" Height="42px" Width="89px"/><br/><br/>
        <asp:Label ID="mesReturnLabel" runat="server" Text="" Font-Size="12" Font-Bold="true" ForeColor="red"></asp:Label>
        </div>
        </div>
        <asp:GridView ID="returnGridView" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Book Title" />
                <asp:BoundField DataField="Author" HeaderText="Author" />
                <asp:BoundField DataField="Publisher" HeaderText="Publisher" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
