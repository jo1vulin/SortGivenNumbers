using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace SortGiveNumbers.BLL
{
    public class UserBLL
    {
        private static List<User> testListOfUsers = initializeData();

        public static List<User> initializeData()
        {
          
            User korisnik = new User(1, "Jovan", "Vulin");
            User korisnik1 = new User(2, "Milan", "Milic");
            User korisnik2 = new User(3, "Goran", "Goric");
            User korisnik3 = new User(4, "Mirko", "Bulic");
            User korisnik4 = new User(5, "Jovan", "Vulin");
            User korisnik5 = new User(6, "Milan", "Milic");
            User korisnik6 = new User(7, "Goran", "Goric");
            User korisnik7 = new User(8, "Mirko", "Bulic");
            User korisnik8 = new User() {UserID=9, FirstName = "AAA", LastName = "BBB" };

           
                List<User> testListOfUsers = new List<User> { korisnik, korisnik1, korisnik2, korisnik3,korisnik4,korisnik5,korisnik6,korisnik7,korisnik8 };
            
            return testListOfUsers;
        }

        // Return the User object
        public User getUserNameById(int UserID)
        {
            var foundUser = (from user in testListOfUsers
                           where user.UserID == UserID
                           select user).FirstOrDefault();


            return (User)foundUser;
            
        }

        public IEnumerable<User> getUserByName(string userName)
        {
            var usersFoundByID = from user in testListOfUsers
                       where user.FirstName.Contains(userName)
                       select user;

            return usersFoundByID;
        }

        public IEnumerable<User> getAllUsers()
        {
            var users = from user in testListOfUsers
                       select user;

            return users;
        }


    }
}