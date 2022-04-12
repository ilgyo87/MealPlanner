using MealPlanner.Models;

namespace MealPlanner.DAO
{
    public interface IUsersDao
    {
        Users GetUser(string username);
        Users AddUser(string username, string password);
    }
}
