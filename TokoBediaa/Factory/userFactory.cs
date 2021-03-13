using TokoBediaa.DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TokoBediaa.Factory
{
    public class userFactory
    {
        public static User createUser(int userRoleID, string userEmail, string userName, string userPassword, string userGender, string userStatus)
        {
            User user = new User()
            {
                RoleID = 2,
                Email = userEmail,
                Name = userName,
                Password = userPassword,
                Gender = userGender,
                Status = userStatus
            };
            return user;
        }
        public static User viewUser(int userID, string userEmail, string userName, string userPassword, string userGender, string userStatus)
        {
            User user = new User()
            {
                UserID = userID,
                Email = userEmail,
                Name = userName,
                Password = userPassword,
                Gender = userGender,
                Status = userStatus
            };
            return user;
        }
        public static User updateProfile(int userID, string userEmail, string userName, string userGender)
        {
            User user = new User()
            {
                UserID = userID,
                Email = userEmail,
                Name = userName,
                Gender = userGender,
            };
            return user;
        }
    }
}