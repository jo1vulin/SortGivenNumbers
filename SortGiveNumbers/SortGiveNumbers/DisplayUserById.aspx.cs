using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SortGiveNumbers.BLL;

namespace SortGiveNumbers
{
    public partial class DisplayUser : System.Web.UI.Page
    {
        private const string notFound = "User was not found";

        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void btnSubmitClick(object sender, EventArgs e)
        {
            int UserId = Int32.Parse(inputUserId.Value);
            UserBLL users = new UserBLL();
            User foundUser = users.getUserNameById(UserId);
            if (foundUser != null)
            {
                lblUser.Text = foundUser.FirstName + foundUser.LastName;
            }
            else
            {
                lblUser.Text = DisplayUser.notFound;
            }

            int i = Math.Abs(386792);
            while (i >= 10)
                i %= 10;

            lblUser.Text = i.ToString();
        }
    }
}
