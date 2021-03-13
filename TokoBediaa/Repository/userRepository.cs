using TokoBediaa.Factory;
using TokoBediaa.DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TokoBediaa.Repository
{
    public class userRepository
    {
        private static DatabaseEntities2 db = new DatabaseEntities2();

        public static User getLogin(string email, string password)
        {
            return db.Users.Where(obj => obj.Email == email && obj.Password == password).FirstOrDefault();
        }

        public static User getName(string name)
        {
            return db.Users.Where(obj => obj.Email == name).FirstOrDefault();
        }
        public static User getEmail(string email)
        {
            return db.Users.Where(obj => obj.Email == email).FirstOrDefault();
        }
        public static User getGender(string gender)
        {
            return db.Users.Where(obj => obj.Gender == gender).FirstOrDefault();
        }

        public static void registerUser(int userRoleID, string userEmail, string userName, string userPassword, string userGender, string userStatus)
        {
            User regUser = userFactory.createUser(userRoleID, userEmail, userName, userPassword, userGender, userStatus);
            DatabaseEntities2 db = new DatabaseEntities2();

            db.Users.Add(regUser);
            db.SaveChanges();
        }
        public static void viewUser(int userID, string userEmail, string userName, string userPassword, string userGender, string userStatus)
        {
            User viewUser = userFactory.viewUser(userID, userEmail, userName, userPassword, userGender, userStatus);
            DatabaseEntities2 db = new DatabaseEntities2();

            var up = (from x in db.Users where x.UserID == userID select x).FirstOrDefault();
            up.Email = userEmail;
            up.Name = userName;
            up.Password = userPassword;
            up.Gender = userGender;
            up.Status = userStatus;

            db.SaveChanges();
        }
        public static void updateProfile(int userID, string userEmail, string userName,  string userGender)
        {
            User upProfile = userFactory.updateProfile(userID, userEmail, userName, userGender);
            DatabaseEntities2 db = new DatabaseEntities2();

            var upUser = (from x in db.Users where x.UserID == userID select x).FirstOrDefault();

            upUser.Email = userEmail;
            upUser.Name = userName;
            upUser.Gender = userGender;

            db.SaveChanges();
        }
        public static List<User> getAllUsers()
        {
            DatabaseEntities2 db = new DatabaseEntities2();
            return db.Users.ToList();
        }
        public static void updateStatus(int userID, string userStatus)
        {
            User update = db.Users.Where(obj => obj.UserID == userID).FirstOrDefault();

            if (update != null)
            {
                update.Status = userStatus;

                db.SaveChanges();
            }
        }
    }
}