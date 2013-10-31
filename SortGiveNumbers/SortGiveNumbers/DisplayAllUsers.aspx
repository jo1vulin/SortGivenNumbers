<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayAllUsers.aspx.cs" Inherits="SortGiveNumbers.DisplayAllUsers" MasterPageFile="~/SortGivenNumbers.Master" %>

<asp:Content ID="DisplayAllUsers" ContentPlaceHolderID="content" runat="server">
    <div>
        <h2>Display all users:</h2>
        
        <article>
        <asp:Label ID="lblAllUsers" runat="server"></asp:Label>
        </article>

    </div>

</asp:Content>