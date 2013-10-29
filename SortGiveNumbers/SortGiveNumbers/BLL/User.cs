using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SortGiveNumbers.BLL
{
    public class User
    {
        public User(int UserId, string FirstName, string Lastname)
        {
            this.UserID = UserId;
            this.FirstName = FirstName;
            this.LastName = LastName;
        }

        public int UserID { get; set; }
        public string FirstName { get; set;}
        public string LastName { get; set; }
    }
}