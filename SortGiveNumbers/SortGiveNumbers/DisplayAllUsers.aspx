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
            <asp:Label ID="lblUser" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
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
            <asp:BoundField DataField="FirstName" HeaderText="First name" />
            <asp:BoundField DataField="LastName" HeaderText="Last name" />
            <asp:CommandField ShowDeleteButton="True"
                ShowEditButton="True" />
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TxtRejectReason"
                        runat="server" Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black"
                        Height="20px" Text='<%# Eval("FirstName")%>' Enabled="true" Visible="true" Width="100px"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

        </Columns>

    </asp:GridView>

</asp:Content>
