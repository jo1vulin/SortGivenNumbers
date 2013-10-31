using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SortGiveNumbers.BLL;
using SortGiveNumbers.ViewUtil;

namespace SortGiveNumbers
{
    public partial class DisplayAllUsers : System.Web.UI.Page,IViewUtil
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserBLL users = new UserBLL();
            var allUsers = users.getAllUsers();
           

            foreach (var s in allUsers)
            {
                lblAllUsers.Text += s + "</br>";
            }
            
        }
    }
}