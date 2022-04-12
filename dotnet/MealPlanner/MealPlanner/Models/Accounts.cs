using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MealPlanner.Models
{
    public class Accounts
    {
        public int AccountId { get; set; }

        public int UserId { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }
        public string Address { get; set; }

        public int Zipcode { get; set; }

        public string State { get; set; }

        public int PhoneNumber { get; set; }
        public string Email { get; set; }
    }
}
