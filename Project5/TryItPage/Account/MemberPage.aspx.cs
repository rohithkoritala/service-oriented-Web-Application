using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TryItPage.Account
{
    public partial class MemberPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (TextBox2.Text != "")
            {
                string str = "";
                UnitConverterService.Service1Client temp = new UnitConverterService.Service1Client();
                str = temp.PoundtoKilogram(TextBox2.Text);
                Label3.Text = str;
                Label6.Text = "";
            }
            else
            {
                Label6.Text = " Please fill the necessary fields!";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                string str = "";
                EncodeService.Service1Client temp = new EncodeService.Service1Client();
                str = temp.GetData(TextBox1.Text);
                Label2.Text = str;
                Label6.Text = "";
            }
            else
            {
                Label6.Text = " Please fill the necessary fields!";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text != "")
            {
                string str = "";
                UnitConverterService.Service1Client temp = new UnitConverterService.Service1Client();
                str = temp.PoundtoKilogram(TextBox2.Text);
                Label3.Text = str;
                Label6.Text = "";
            }
            else
            {
                Label6.Text = " Please fill the necessary fields!";
            }
        }
    }
}