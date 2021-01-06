using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using HashRef;

namespace TryItPage.Account
{
    public partial class MemberRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.ImageUrl = "~/Account/imageProcess.aspx";
            HyperLink1.NavigateUrl = "MemberLogin.aspx";
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Step 1 – Image verification test 
            if (txtImageStr.Text != (string)Session["generatedString"])
            {
                errorImage.Text = String.Format("*Text does not match image");
                errorImage.Visible = true;
                return;
            }
            errorImage.Visible = false;
            //Step 2 - Validate user name and password 
            string filepath = HttpRuntime.AppDomainAppPath + @"\Account\App_Data\Member.xml";
            string user = txtUser.Text;
            string password = txtPassword.Text;
            // (1) Basic input validation check 
            if (user == "")
            {
                errorUser.Text = String.Format("*Username cannot be empty");
                errorUser.Visible = true;
                return;
            }
            if (password == "")
            {
                errorUser.Text = String.Format("*Password cannot be empty");
                errorUser.Visible = true; return;
            }
            // (2) Encrypt the password using hashing service 
            hashref h = new hashref();
            string pwdEncrypt = h.Hash(password, "CSE445");
            XmlDocument myDoc = new XmlDocument();
            myDoc.Load(filepath);
            XmlElement rootElement = myDoc.DocumentElement;
            // (3) Check if the username is not registered already 
            foreach (XmlNode node in rootElement.ChildNodes)
            {
                if (node["name"].InnerText == user)
                {
                    errorUser.Text = String.Format("*Account with username {0} already exists.", user);
                    errorUser.Visible = true;
                    return;
                }
            }
            errorUser.Visible = false;
            // Step 3: Add new credential into XML file 
            XmlElement myMember = myDoc.CreateElement("member", rootElement.NamespaceURI);
            rootElement.AppendChild(myMember);
            XmlElement myUser = myDoc.CreateElement("name", rootElement.NamespaceURI);
            myMember.AppendChild(myUser); myUser.InnerText = user;
            XmlElement myPwd = myDoc.CreateElement("pwd", rootElement.NamespaceURI);
            myMember.AppendChild(myPwd);
            myPwd.InnerText = pwdEncrypt;
            myDoc.Save(filepath);
            Response.Redirect("ConfirmPage.aspx");     //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& NEED TO CHANGE &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&//
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ImageService.ServiceClient fromService = new ImageService.ServiceClient(); // create proxy to the remote service
            string userLength = "5";
            Session["userLength"] = userLength;
            string myStr = fromService.GetVerifierString(userLength);
            Session["generatedString"] = myStr;
            Image1.Visible = true;
        }
    }
}