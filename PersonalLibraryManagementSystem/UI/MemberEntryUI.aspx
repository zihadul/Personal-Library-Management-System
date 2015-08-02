<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberEntryUI.aspx.cs" Inherits="PersonalLibraryManagementSystem.UI.MemberEntryUI" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<meta charset="UTF-8">
<title>Member Entry</title>
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper">
        <header><h1>Member Entry</h1></header>
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
        <asp:Label ID="Label1" runat="server" Text="Number" Font-Size="12" Font-Bold="true" ForeColor="#000099"></asp:Label>
        <asp:TextBox ID="numberMemberEntryTextBox" runat="server" Font-Size="12" Font-Bold="true" ForeColor="red" Height="28px" Width="211px"></asp:TextBox><br/><br/>
         <asp:Label ID="Label2" runat="server" Text="Name" Font-Size="12" Font-Bold="true" ForeColor="#000099"></asp:Label>
        <asp:TextBox ID="nameMemberEntryTextBox" runat="server" Font-Size="12" Font-Bold="true" ForeColor="red" Height="30px" Width="225px"></asp:TextBox><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" Font-Size="12" Font-Bold="true" ForeColor="#006600" Height="40px" Width="76px"/><br/><br/>
        <asp:Label ID="mesMemberLabel" runat="server" Text="" Font-Size="12" Font-Bold="true" ForeColor="red"></asp:Label>
    </div>
            <asp:GridView ID="memberEntryGridView" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="SerialNo" HeaderText="Serial No" />
                    <asp:BoundField DataField="Name" HeaderText="Member Name" />
                    <asp:BoundField DataField="Number" HeaderText="Member Number (Code)" />
                </Columns>
            </asp:GridView>
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
                     numberMemberEntryTextBox: "required",
                     nameMemberEntryTextBox: {
                         required: true
                     }
                    

                 },
                 messages: {
                     numberMemberEntryTextBox: "Please enter numbe!",
                     nameMemberEntryTextBox: {
                         required: "Please enter name!"

                     }

                 }
             });
         });
    </script>
</body>
</html>
