<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SortingPage.aspx.cs" Inherits="SortGiveNumbers.SortingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <p>Insert numbers for sorting in the below field:</p>
        <input type="text" id="inputValues" runat="server" required="required" pattern="\d*"  title="Only numbers allowed"/>
        <input type="submit" id="submitButton" runat="server" onserverclick="btnSubmitClick" />
        
        <br />

        <asp:Label ID="lblResult" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
