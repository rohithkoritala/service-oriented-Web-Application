using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using HashRef;

namespace TryItPage.Account
{
    public partial class MemberLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink1.NavigateUrl = "MemberRegister.aspx";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string filepath = HttpRuntime.AppDomainAppPath + @"\Account\App_Data\Member.xml";
            //Obtains user input and encrypts password 
            string user = txtUser.Text; 
            string password = txtPassword.Text;
            hashref h = new hashref(); 
            string pwdEncrypt = h.Hash(password, "CSE445"); 
            XmlDocument myDoc = new XmlDocument(); 
            myDoc.Load(filepath);
            XmlElement rootElement = myDoc.DocumentElement;
            //Search through XML file to find match of username and password matches 
            foreach (XmlNode node in rootElement.ChildNodes) 
            { 
                if (node["name"].InnerText == user) 
                { 
                    if (node["pwd"].InnerText == pwdEncrypt) 
                    { 
                        errorLogin.Visible = false; Response.Redirect("MemberPage.aspx"); 
                        return;
                    }
                    else 
                    { 
                        // username exists but password does not match, show error
                        errorLogin.Visible = true; 
                        return;
                    }
                } 
            }
            errorLogin.Visible = true; return;
        }
    }
}