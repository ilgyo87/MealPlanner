using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MealPlanner.Models
{
    public class FoodType
    {
        public int TypeId { get; set; }
        public string Name { get; set; }
        public bool isFresh { get; set; }

    }
}
