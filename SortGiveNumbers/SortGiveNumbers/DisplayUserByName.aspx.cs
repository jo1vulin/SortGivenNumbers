using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SortGiveNumbers.BLL;

namespace SortGiveNumbers
{
    public partial class DisplayUserByName : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitClick(object sender, EventArgs e)
        {
            string userName = inputUserName.Value;
            UserBLL users = new UserBLL();
            lblUser.Text = users.getUserByName(userName);

        }
    }
}