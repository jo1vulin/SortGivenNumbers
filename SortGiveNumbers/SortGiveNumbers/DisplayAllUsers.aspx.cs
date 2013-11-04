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



        protected void Page_Load(object sender, EventArgs e)
        {


            UserBLL users = new UserBLL();
            IEnumerable<User> allUsers = users.getAllUsers();


            //data grid, repeater
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
}
