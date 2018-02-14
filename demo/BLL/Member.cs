using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL
{
    public class Member:IModel
    {
        public int MemberID;
        public string FirstName;
        public string LastName;
        public string UserName;
        public string Password;
        public string Email;
        public string Address;
        public string Country;
        public string State;
        public string City;
        public string ZIP;

        
    }
}