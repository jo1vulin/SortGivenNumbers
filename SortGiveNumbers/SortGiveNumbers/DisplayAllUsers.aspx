<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayAllUsers.aspx.cs" Inherits="SortGiveNumbers.DisplayAllUsers" MasterPageFile="~/SortGivenNumbers.Master" %>

<asp:Content ID="DisplayAllUsers" ContentPlaceHolderID="content" runat="server">
    <div>
        <h2>Display all users:</h2>

        <article>
            <asp:Label ID="lblAllUsers" runat="server"></asp:Label>
        </article>

    </div>
    <br />
    <h5>Use of repeater</h5>
    <asp:Repeater ID="rptAllUsers" runat="server">
        <ItemTemplate>
            <asp:Label ID="lblFirstName" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
            <asp:Label ID="lblLastName" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
            <br />
        </ItemTemplate>
    </asp:Repeater>
    <br />
    <h5>Use of data grid</h5>
    <asp:GridView ID="grdAllUsers"
        DataKeyNames="UserID"
        runat="server"
        AutoGenerateColumns="False"
        OnRowDeleting="grdAllUsers_RowDeleting"
        OnRowEditing="grdAllUsers_RowEditing"
        OnRowUpdating="grdAllUsers_RowUpdating">
        <Columns>
            <asp:BoundField DataField="UserId" HeaderText="User ID" />
            <asp:TemplateField HeaderText="First name">
                <ItemTemplate>
                    <%# Eval("FirstName")%>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox runat="server" ID="txtFirstName" Text='<%# Eval("FirstName")%>' />
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="LastName">
                <ItemTemplate>
                    <%# Eval("LastName")%>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox runat="server" ID="txtLastName" Text='<%# Eval("LastName")%>' />
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:CommandField ShowDeleteButton="True"
                ShowEditButton="True" />
        </Columns>

    </asp:GridView>

</asp:Content>
