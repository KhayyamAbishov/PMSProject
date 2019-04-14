using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using PMSData;
using PMSData.DbObjects;
using PMSOperation.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace PMSOperation
{
    public class UserOperation
    {
        public PMSUser User { get; set; }
        //public OperationResult<UserModel> Authenticate(LoginModel model)
        //{
        //    if (string.IsNullOrEmpty(model.Email) || string.IsNullOrEmpty(model.Password))
        //    {
        //      return  new OperationResult<UserModel>("Email and Password must be filled", IssueSeverity.Error);
        //    }

        //    using (var db = new PMSContext())
        //    {
        //        var user = db.Users.FirstOrDefault(u=>u.Email.Equals(model.Email, StringComparison.OrdinalIgnoreCase));
        //        if (user == null || user.PasswordHash != GetPasswordHash(model.Password))
        //        {
        //         return   new OperationResult<UserModel>("User not found", IssueSeverity.Error);
        //        }

        //        return new OperationResult<UserModel>(new UserModel() {
        //            Email = user.Email,

        //        });
        //    }
        //}

        //private const string HASH_SECRET_KEY = "15042CEA-9F65-47C2-B7B6-0DAD6ED4CB8D";
        //private static string GetPasswordHash(string password)
        //{
        //    using (var hash = SHA256.Create())
        //    {
        //        return string.Join("", hash
        //          .ComputeHash(Encoding.ASCII.GetBytes($"{password}-{HASH_SECRET_KEY}"))
        //          .Select(item => item.ToString("x2")));
        //    }
        //}

        public async Task<OperationResult<IdentityResult>> Register(RegisterModel model)
        {
            User = new PMSUser()
            {
                FirstName = model.FirstName,
                LastName = model.LastName,
                ImageUrl = model.Image,
                RegistrationDateTime = DateTime.Now,
                UserName = model.Email,
                Email = model.Email,
                PhoneNumber = model.Phone
            };

            UserStore<PMSUser> userStore = new UserStore<PMSUser>(new PMSContext());
            UserManager<PMSUser> manager = new UserManager<PMSUser>(userStore);

            var result = await manager.CreateAsync(User, model.Password);

            return new OperationResult<IdentityResult>(result);
        }
    }
}
