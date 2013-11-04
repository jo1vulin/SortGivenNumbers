<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="SortGiveNumbers.HomePage" MasterPageFile="~/SortGivenNumbers.master" %>

<asp:Content ID="ContentHomePage" ContentPlaceHolderID="content" runat="server">
    <div class="wrapper">
        <div class="page">
            <h2>Home page</h2>
            <p>Welcome to the simple web application!</p>
            <asp:Label ID="lbltest" runat="server" />
            <asp:Label ID="lbltest2" runat="server" />
            <input id="HomeSubmit" type="submit" runat="server" />
        </div>
    </div>
</asp:Content>
