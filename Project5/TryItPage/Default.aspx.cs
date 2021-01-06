using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace TryItPage
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Account/MemberRegister.aspx");
        }

        protected void btnMemberLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Account/MemberLogin.aspx");
        }

        protected void btnStaff_Click(object sender, EventArgs e)
        {
            Response.Redirect("Protected/StaffLogin.aspx");
        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Protected/AdminLogin.aspx");
        }
    }
}