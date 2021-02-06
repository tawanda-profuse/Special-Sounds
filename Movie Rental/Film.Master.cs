using System;
using System.Drawing;

namespace Movie_Rental
{
    public partial class Film : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton5.Visible = false;
            LinkButton13.Visible = false;
            LinkButton14.Visible = false;
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; // user login link button
                    LinkButton2.Visible = true; // sign up link button

                    LinkButton3.Visible = false; // logout link button
                    LinkButton7.Visible = false; // Welcome user link button

                    LinkButton6.Visible = true; // admin login link button
                    LinkButton11.Visible = false; // artist management link button
                    LinkButton12.Visible = false; // record label management link button
                    LinkButton8.Visible = false; // music inventory link button
                    LinkButton9.Visible = false; // music lending link button
                    LinkButton10.Visible = false; // user management link button
                    LinkButton5.Visible = false; //playlist linkbutton
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hey " + Session["username"].ToString();

                    LinkButton6.Visible = true; // admin login link button
                    LinkButton11.Visible = false; // author management link button
                    LinkButton12.Visible = false; // publisher management link button
                    LinkButton8.Visible = false; // book inventory link button
                    LinkButton9.Visible = false; // book issuing link button
                    LinkButton7.ForeColor = Color.Green;
                    LinkButton5.Visible = true; //playlist linkbutton
                    LinkButton13.Visible = true;
                    LinkButton14.Visible = true;
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Welcome Admin";

                    LinkButton6.Visible = false; // admin login link button
                    LinkButton11.Visible = true; // artist management link button
                    LinkButton12.Visible = true; // record labels link button
                    LinkButton8.Visible = true; // albums link button
                    LinkButton9.Visible = true; // new releases link button
                    LinkButton10.Visible = true; // user management link button
                    LinkButton7.ForeColor = Color.Red;
                    LinkButton5.Visible = false; //playlist linkbutton
                }
            }
            catch (Exception ex)
            {
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminartistmanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminrecordlabelmanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminalbumlending.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmusicinventory.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminusermanagement.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewalbums.aspx");
        }

        //Logout button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; // user login link button
            LinkButton2.Visible = true; // sign up link button

            LinkButton3.Visible = false; // logout link button
            LinkButton7.Visible = false; // hello user link button

            LinkButton6.Visible = true; // admin login link button
            LinkButton11.Visible = false; // author management link button
            LinkButton12.Visible = false; // publisher management link button
            LinkButton8.Visible = false; // book inventory link button
            LinkButton9.Visible = false; // book issuing link button
            LinkButton10.Visible = false; // member management link button
            LinkButton5.Visible = false;

            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            if (Session["role"].Equals("admin"))
            {
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                Response.Redirect("userprofile.aspx");
            }
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.apple.com/itunes/");
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://soundcloud.com/");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("playlist.aspx");
        }
    }
}