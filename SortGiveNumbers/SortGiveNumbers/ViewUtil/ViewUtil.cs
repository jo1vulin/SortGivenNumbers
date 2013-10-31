using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SortGiveNumbers.BLL;
using System.Web.UI.WebControls;

namespace SortGiveNumbers.ViewUtil
{
    public class ViewUtil
    {
        public void displayResult(IEnumerable<User> list,Label label)
        {
            foreach (var s in list)
            {
                label.Text += s + "</br>";
            }
        }
    }
}