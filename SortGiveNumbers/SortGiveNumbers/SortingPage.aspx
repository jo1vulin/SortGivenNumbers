<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SortingPage.aspx.cs" Inherits="SortGiveNumbers.SortingPage" MasterPageFile="~/SortGivenNumbers.Master" %>

<asp:content id="SortingPage" contentplaceholderid="content" runat="server">
    <div>
        
        <p>Insert numbers for sorting in the below field:</p>
        <input type="text" id="inputValues" runat="server" required="required" pattern="\d*"  title="Only numbers allowed"/>
        <input type="submit" id="Submit" runat="server" onserverclick="btnSubmitClick" />
        
        <br />

        <asp:Label ID="lblResult" runat="server"></asp:Label>
    
    </div>

</asp:content>
