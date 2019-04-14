using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace PMSData.DbObjects
{
    public class PMSUser : IdentityUser
    {
        public PMSUser()
        {
            Properties = new HashSet<Property>();
        }
        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string ImageUrl { get; set; }

        public DateTime RegistrationDateTime { get; set; }

        public virtual ICollection<Property> Properties { get; set; }

        public async Task<ClaimsIdentity> GenerateUserIdentityAsync(UserManager<PMSUser> manager)
        {
            // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = await manager.CreateIdentityAsync(this, DefaultAuthenticationTypes.ApplicationCookie);
            // Add custom user claims here
            return userIdentity;
        }
    }
}
