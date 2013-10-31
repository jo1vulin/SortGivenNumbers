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
            var allUsers = users.getAllUsers();

            foreach (var user in allUsers)
            {
                lblAllUsers.Text += user + "</br>";
            }
            
        }
    }
}