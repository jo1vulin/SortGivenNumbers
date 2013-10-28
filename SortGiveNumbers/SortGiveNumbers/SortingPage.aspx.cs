using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SortGiveNumbers
{
    public partial class SortingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnSubmitClick(object sender, EventArgs e)
        {
           
            string numbers = inputValues.Value;
            
            List<int> intList = numbers.Select(digit => int.Parse(digit.ToString())).ToList();
            intList.Sort();

            lblResult.Text = string.Join(" ", intList);
        } 
    }
}