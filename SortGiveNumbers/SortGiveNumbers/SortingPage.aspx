<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SortingPage.aspx.cs" Inherits="SortGiveNumbers.SortingPage" MasterPageFile="~/SortGivenNumbers.Master" %>

<asp:Content ID="SortingPage" ContentPlaceHolderID="content" runat="server">
    <div>
         <h2>Sort given numbers: </h2>
        <p>Insert numbers for sorting in the below field:</p>
        <input type="text" id="inputValues" runat="server" required="required" pattern="\d*" title="Only numbers allowed" />
        <input type="submit" id="Submit" runat="server" onserverclick="btnSubmitClick" />

        <br />
        <article>
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </article>

    </div>

</asp:Content>
