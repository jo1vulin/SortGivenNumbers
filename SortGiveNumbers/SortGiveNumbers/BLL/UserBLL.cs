using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace SortGiveNumbers.BLL
{
    public class UserBLL
    {
        List<User> testListOfUsers = initializeData();

        public static List<User> initializeData()
        {
            User korisnik = new User(1, "Jovan", "Vulin");
            User korisnik1 = new User(2, "Milan", "Milic");
            User korisnik2 = new User(3, "Goran", "Goric");
            User korisnik3 = new User(4, "Mirko", "Bulic");


            List<User> testListOfUsers = new List<User> { korisnik, korisnik1, korisnik2, korisnik3 };

            return testListOfUsers;
        }

        public string getUserNameById(int UserID)
        {
            var userName = from b in testListOfUsers
                           where b.UserID == UserID
                           select b.FirstName.ToString();

            if (!String.IsNullOrEmpty(userName.FirstOrDefault()))
            {
                return userName.First().ToString();
            }
            return "User not found!";
        }

        public string getUserByName(string userName)
        {

            var user = from b in testListOfUsers
                       where b.FirstName.Contains(userName)
                       select b.FirstName.ToString();

            if (!String.IsNullOrEmpty(user.FirstOrDefault()))
            {
                string allFoundUsers = string.Join(",", user);
                return allFoundUsers;
            }
            return "User not found!";
        }

        public IEnumerable<string> getAllUsers()
        {
            var user = from b in testListOfUsers
                       select b.FirstName + " " + b.LastName;

            if (!String.IsNullOrEmpty(user.ToString()))
            {
                return user;
            }
            return null;
        }


    }
}