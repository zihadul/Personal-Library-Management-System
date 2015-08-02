<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PersonalLibraryManagementSystem.UI.Home" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<meta charset="UTF-8">
<title>Home</title>
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="wrapper">
        <header><h1>Personal Library Management System</h1></header>
        <nav>
            <ul>
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="BookEntry.aspx">Book Entry</a></li>
                <li><a href="MemberEntryUI.aspx">Member Entry</a></li>
                <li><a href="BorrowBookUI.aspx">Borrow Book(s)</a></li>
                <li><a href="ReturnBookUI.aspx">Return Book(s)</a></li>
            </ul>
        </nav>
         </div>
    </form>
</body>
</html>
