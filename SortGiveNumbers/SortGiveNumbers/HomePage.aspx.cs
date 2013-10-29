using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SortGiveNumbers.BLL;

namespace SortGiveNumbers
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            UserBLL test = new UserBLL();
           

            lblResult.Text = test.getUserNameById(3);
        }
    }
}