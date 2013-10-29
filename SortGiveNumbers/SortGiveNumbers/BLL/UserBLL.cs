using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SortGiveNumbers.BLL;

namespace SortGiveNumbers.BLL
{
    public class UserBLL
    {
        User korisnik = new User(1, "Jovan", "Vulin");
        User korisnik1 = new User(2, "Milan", "Milic");
        User korisnik2 = new User(3, "Goran", "Goric");
        User korisnik3 = new User(4, "Mirko", "Bulic");
        
        
        

        public string getUserNameById(int UserID)
        {
            List<User> lista = new List<User> { korisnik, korisnik1, korisnik2, korisnik3 };
            var userName = from b in lista
                       where b.UserID == UserID
                       select b.FirstName.ToString();


            return userName.First().ToString();
        }
        
    }
}