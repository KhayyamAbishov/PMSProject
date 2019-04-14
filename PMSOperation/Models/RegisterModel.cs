using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PMSOperation.Models
{
    public class RegisterModel
    {
        [Required]
        [Display(Name = "First Name")]
        public string FirstName { get; set; }

        [Required]
        [Display(Name ="Last Name")]
        public string LastName { get; set; }

        [Required]
        [Display(Name ="Password")]
        [DataType(DataType.Password)]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        public string Password { get; set; }

        [Required(ErrorMessage = "The Confirm Password is required")]
        [Display(Name = "Confirm Password")]
        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }

        [Required]
        [Display(Name ="Email")]
        [EmailAddress]
        public string Email { get; set; }

        [Required]
        [Display(Name ="Phone")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^((?!994)\d{9,12})|(994\d{9})|(\d{7})$", ErrorMessage ="Phone number must be in this format and start with 994")]
        public string Phone { get; set; }

        [DataType(DataType.ImageUrl)]
        public string Image { get; set; }
    }
}
