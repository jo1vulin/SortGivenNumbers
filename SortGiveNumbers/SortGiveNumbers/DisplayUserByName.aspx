<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayUserByName.aspx.cs" Inherits="SortGiveNumbers.DisplayUserByName" MasterPageFile="~/SortGivenNumbers.Master" %>


<asp:Content ID="FindUserByName" ContentPlaceHolderID="content" runat="server">
    <div>
        <h2>Find user by name: </h2>
        <input type="text" id="inputUserName" runat="server" required="required" pattern="[a-zA-Z]*" title="Only letters allowed" />
        <input id="Submit1" type="submit" runat="server" onserverclick="btnSubmitClick" />
        <article>
        <asp:Label ID="lblUser" runat="server"></asp:Label>
            </article>

    </div>

</asp:Content>