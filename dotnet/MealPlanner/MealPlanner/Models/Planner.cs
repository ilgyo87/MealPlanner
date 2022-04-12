using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MealPlanner.Models
{
    public class Planner
    {
        public int PlannerId { get; set; }
        public string Name { get; set; }
        public int RecipeId { get; set; }
        public int UserId { get; set; }
        public string Day { get; set; }
        public int Week { get; set; }
        public bool IsSharable { get; set; }
    }
}
