<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookEntry.aspx.cs" Inherits="PersonalLibraryManagementSystem.UI.BookEntry" %>

<!DOCTYPE html>
<html>
<head runat="server">
<meta charset="UTF-8">
<title>Book Entry</title>
    <link href="Style.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
     <div class="wrapper">
        <header><h1>Book Entry</h1></header>
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
        <asp:Label ID="Label1" runat="server" Text="Title" Font-Size="12" Font-Bold="true" ForeColor="#000099"></asp:Label>
        <asp:TextBox ID="titleBookEntryTextBox" runat="server" Width="226px" Height="27px" Font-Size="12" Font-Bold="true" ForeColor="red"></asp:TextBox><br/><br/>
        <asp:Label ID="Label2" runat="server" Text="Author" Font-Size="12" Font-Bold="true" ForeColor="#000099"></asp:Label>
        <asp:TextBox ID="authorBookEntryTextBox" runat="server" Width="210px" Height="29px" Font-Size="12" Font-Bold="true" ForeColor="red"></asp:TextBox><br/><br/>
         <asp:Label ID="Label3" runat="server" Text="Publisher" Font-Size="12" Font-Bold="true" ForeColor="#000099"></asp:Label>
        <asp:TextBox ID="publisherBookEntryTextBox" runat="server" Width="193px" Height="28px" Font-Size="12" Font-Bold="true" ForeColor="red"></asp:TextBox><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="saveButton" runat="server" Text="Save" Width="87px" OnClick="saveButton_Click" Height="43px" Font-Size="12" Font-Bold="true" ForeColor="#000099" /><br/>
        <asp:Label ID="messageLabel" runat="server" Text="" Font-Size="12" Font-Bold="true" ForeColor="red"></asp:Label>
    </div>
            <div style="overflow-x:auto; overflow-y:auto; width:960px; ">
            <asp:GridView ID="bookEntryGridView" runat="server" AutoGenerateColumns="False" AllowPaging="true" PageSize="10" OnPageIndexChanging="OnPaging">
                <Columns>
                    <asp:BoundField DataField="SerialNo" HeaderText="Serial No." />
                    <asp:BoundField DataField="Title" HeaderText="Title of Book" />
                    <asp:BoundField DataField="Author" HeaderText="Author" />
                    <asp:BoundField DataField="Publisher" HeaderText="Publisher" />
                </Columns>
            </asp:GridView>
                </div>
            </div>
         </div>
    </form>
    <style> label.error{color:red;}</style>
    <script src="../Scripts/jquery-2.1.4.js"></script>
    <script src="../Scripts/jquery.validate.js"></script>
     <script>
         $(document).ready(function () {
             $("#form1").validate({
                 rules: {
                     titleBookEntryTextBox: "required",
                     authorBookEntryTextBox: {
                         required: true
                     },
                     publisherBookEntryTextBox: {
                         required: true
                     }
                     
                 },
                 messages: {
                     titleBookEntryTextBox: "Please enter Titale of Book!",
                     authorBookEntryTextBox: {
                         required: "Please enter Author!"

                     },
                     publisherBookEntryTextBox: {
                         required: "Please enter the Publisher!"
                     }
                    
                 }
             });
         });
    </script>
</body>
</html>
