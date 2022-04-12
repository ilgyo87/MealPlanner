using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MealPlanner.Models
{
    public class Ingredient
    {
        public int IngredId { get; set; }
        public string Name { get; set; }
        public decimal Cost { get; set; }
        public int TypeId { get; set; }
    }
}
