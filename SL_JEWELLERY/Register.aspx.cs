using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SL_JEWELLERY
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("db_1526902_co5027_asgConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            var user = new IdentityUser() { UserName = TextUsername.Text, Email = TextEmail.Text };
            IdentityResult result = manager.Create(user, TextPassword.Text);

            IdentityRole endUserRole = new IdentityRole("admin");
            roleManager.Create(endUserRole);
            manager.AddToRole(user.Id, "admin");
            
            if (result.Succeeded)
            {
                Server.Transfer("Login.aspx", true);
            }

            else
            {
                LitError.Text = "An Error has occurred: " + result.Errors.FirstOrDefault(); 
            }
        }
    }
}