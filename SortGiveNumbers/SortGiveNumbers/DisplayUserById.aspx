<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayUserById.aspx.cs" Inherits="SortGiveNumbers.DisplayUser" MasterPageFile="~/SortGivenNumbers.Master" %>

<asp:Content ID="FindUserById" ContentPlaceHolderID="content" runat="server">
    <div>
        <h2>Find user by id: </h2>
        <input type="text" id="inputUserId" runat="server" required="required" pattern="\d*" title="Only numbers allowed" />
        <input type="submit" runat="server" onserverclick="btnSubmitClick" />
        <article>
        <asp:Label ID="lblUser" runat="server"></asp:Label>
            </article>

    </div>

</asp:Content>
