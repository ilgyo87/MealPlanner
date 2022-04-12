using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MealPlanner.Models
{
    public class Directions
    {
        public int StepsId { get; set; }
        public string Description { get; set; }
        public int StepsNumber { get; set; }
        public int RecipeId { get; set; }
    }
}
