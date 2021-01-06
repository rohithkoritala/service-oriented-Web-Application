using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using HashRef;

namespace TryItPage.Protected
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string filepath = HttpRuntime.AppDomainAppPath + @"\Protected\App_Data\Staff.xml";
            string user = TextBox6.Text;
            // (1) Basic input validation check 
            if (user == "")
            {
                errorUser2.Text = String.Format("*Username cannot be empty");
                errorUser2.Visible = true;
                return;
            }
            // (2) Encrypt the password using hashing service 
            XmlDocument myDoc = new XmlDocument();
            myDoc.Load(filepath);
            XmlElement rootElement = myDoc.DocumentElement;
            // (3) Check if the username is not registered already 
            foreach (XmlNode node in rootElement.ChildNodes)
            {
                if (node["name"].InnerText == user)
                {
                    node.ParentNode.RemoveChild(node);
                    myDoc.Save(filepath);
                    Response.Redirect("~/RemoveConfirm.aspx");
                    errorUser2.Visible = false;
                    return;
                }
            }
            errorUser2.Text = String.Format("*Account with username {0} doesn't exists.", user);
            errorUser2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
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
                errorUser.Visible = true;
                return;
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
            Response.Redirect("~/ConfirmPage.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string filepath = HttpRuntime.AppDomainAppPath + @"\Account\App_Data\Member.xml";
            string user = txtUser1.Text;
            // (1) Basic input validation check 
            if (user == "")
            {
                errorUser0.Text = String.Format("*Username cannot be empty");
                errorUser0.Visible = true;
                return;
            }
            // (2) Encrypt the password using hashing service 
            XmlDocument myDoc = new XmlDocument();
            myDoc.Load(filepath);
            XmlElement rootElement = myDoc.DocumentElement;
            // (3) Check if the username is not registered already 
            foreach (XmlNode node in rootElement.ChildNodes)
            {
                if (node["name"].InnerText == user)
                {
                    node.ParentNode.RemoveChild(node);
                    myDoc.Save(filepath);
                    Response.Redirect("~/RemoveConfirm.aspx");
                    errorUser0.Visible = false;
                    return;
                }
            }
            errorUser0.Text = String.Format("*Account with username {0} doesn't exists.", user);
            errorUser0.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string filepath = HttpRuntime.AppDomainAppPath + @"\Protected\App_Data\Staff.xml";
            string user = TextBox1.Text;
            string password = TextBox2.Text;
            // (1) Basic input validation check 
            if (user == "")
            {
                errorUser1.Text = String.Format("*Username cannot be empty");
                errorUser1.Visible = true;
                return;
            }
            if (password == "")
            {
                errorUser1.Text = String.Format("*Password cannot be empty");
                errorUser1.Visible = true;
                return;
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
                    errorUser1.Text = String.Format("*Account with username {0} already exists.", user);
                    errorUser1.Visible = true;
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
            Response.Redirect("~/ConfirmPage.aspx");
        }
    }
}