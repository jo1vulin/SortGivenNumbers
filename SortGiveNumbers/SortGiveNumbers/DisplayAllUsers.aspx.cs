using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SortGiveNumbers.BLL;


namespace SortGiveNumbers
{
    public partial class DisplayAllUsers : System.Web.UI.Page
    {
        UserBLL users = new UserBLL();
        



        protected void Page_Load(object sender, EventArgs e)
        {


            IEnumerable<User> allUsers = users.getAllUsers();
            grdAllUsers.DataSource = UserBLL.testListOfUsers;

            if (!IsPostBack)
            {
               
                foreach (var user in allUsers)
                {
                    lblAllUsers.Text += user.FirstName + " " + user.LastName + "</br>";
                }

                rptAllUsers.DataSource = allUsers;
                rptAllUsers.DataBind();

                grdAllUsers.DataSource = allUsers;
                grdAllUsers.DataBind();
            }


        }

        protected void grdAllUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int categoryID = (int)grdAllUsers.DataKeys[e.RowIndex].Value;
            users.deleteUserFromList(categoryID);
            grdAllUsers.DataSource = UserBLL.testListOfUsers;
            grdAllUsers.DataBind();
        }

        protected void grdAllUsers_RowEditing(object sender, GridViewEditEventArgs e)
        
        {
            grdAllUsers.EditIndex = e.NewEditIndex;
            grdAllUsers.DataSource = UserBLL.testListOfUsers;
            grdAllUsers.DataBind();

        }

        protected void grdAllUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int userid = (int)grdAllUsers.DataKeys[e.RowIndex].Value;
            

            GridViewRow row = grdAllUsers.Rows[e.RowIndex];
            TextBox txtFirstName = (TextBox)row.FindControl("txtFirstName");
            TextBox txtLastName = (TextBox)row.FindControl("txtLastName");
            users.editUserFromList(userid, txtFirstName.Text, txtLastName.Text);

            grdAllUsers.EditIndex = -1;
            grdAllUsers.DataSource = UserBLL.testListOfUsers;
            grdAllUsers.DataBind();
        }
    }
}
