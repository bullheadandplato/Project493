using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project493.Database;
namespace Project493.Login
{
    public partial class Index : System.Web.UI.Page
    {
        LoginPersistence loginOperations;
        SharedData data;
        Note note;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            loginOperations = new LoginPersistence();
            data = new SharedData();
            note = new Note();
            
        }

        protected void signup_Click(object sender, EventArgs e)
        {
            //get all the values to store in database
            String username = ((TextBox)FindControl("Username")).Text;
            String password = ((TextBox)FindControl("Password")).Text;
            String email = ((TextBox)FindControl("Email")).Text;
            String question = ((TextBox)FindControl("Question")).Text;
            String answer = ((TextBox)FindControl("Answer")).Text;
            if (loginOperations.signupPersist(username, password, email, question, answer))
            {
                Error.Text = "Signup successfull. Use login now";
                Error.ForeColor = System.Drawing.Color.LightGreen;

            }
            else
            {
                Error.Text = "cannot sign up. username already exists";
                Error.ForeColor = System.Drawing.Color.Red;
            }
        }


        protected void login_Click(object sender, EventArgs e)
        {

            String username = ((TextBox)FindControl("loginUsername")).Text;
            String password = ((TextBox)FindControl("loginPassword")).Text;
            if (loginOperations.checkLogin(username, password))
            {
                //set the username in main Master page
                SharedData.username = username;
                //set the user id
                data.setUID(loginOperations.getUID());
                Note.UID = data.getUID();
                //user notes load
                //TODO
                //change page
                Response.BufferOutput = true;
                Response.Redirect("~/Allnotes.aspx", false);
            }
            else
            {
                Error.ForeColor = System.Drawing.Color.Red;
                Error.Text = "Cannot sign in check username or password";
            }
        }

        protected void Unnamed_SelectionChanged(object sender, EventArgs e)
        {

        }
      
    }
}