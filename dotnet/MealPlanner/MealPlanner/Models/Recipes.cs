using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MealPlanner.Models
{
    public class Recipes
    {
        public int RecipeId { get; set; }
        public string RecipeName { get; set; }
        public string Description { get; set; }
        public TimeOnly PrepTime { get; set; }
        public TimeOnly CookTime { get; set; }
        public DateTime DateCreated { get; set; }
        public int UserId { get; set; }
        public int CuisineId { get; set; }
    }
}
