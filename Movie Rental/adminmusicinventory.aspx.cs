using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Rental
{
    public partial class adminmusicinventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static string global_filepath;
        static int global_actual_stock, global_current_stock, global_issued_books;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillAuthorPublisherValues();
            }

            GridView1.DataBind();
        }

        //Go button
        protected void Button4_Click(object sender, EventArgs e)
        {
            getBookByID();
        }
        //Add button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfBookExists())
            {
                Response.Write("<script>alert('Album already exists, try another album reference number');</script>");
            }
            else
            {
                addNewBook();
            }
        }
        //Update button
        protected void Button3_Click(object sender, EventArgs e)
        {
            updateBookByID();
        }
        //Delete button
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteBookByID();
        }

        // user defined functions
        void deleteBookByID()
        {
            if (checkIfBookExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from albumTB WHERE album_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Album Deleted Successfully');</script>");

                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid User ID');</script>");
            }
        }

        void updateBookByID()
        {
            if (checkIfBookExists())
            {
                try
                {

                    int actual_stock = Convert.ToInt32(TextBox4.Text.Trim());
                    int current_stock = Convert.ToInt32(TextBox5.Text.Trim());

                    if (global_actual_stock == actual_stock)
                    {

                    }
                    else
                    {
                        if (actual_stock < global_issued_books)
                        {
                            Response.Write("<script>alert('Actual stock cannot be less than the albums lended');</script>");
                            return;
                        }
                        else
                        {
                            current_stock = actual_stock - global_issued_books;
                            TextBox5.Text = "" + current_stock;
                        }
                    }

                    //string genres = "";
                    //foreach (int i in ListBox1.GetSelectedIndices())
                    //{
                    //    genres = genres + ListBox1.Items[i] + ",";
                    //}
                    //genres = genres.Remove(genres.Length - 1);

                    string filepath = "~/albums/musicinventory";
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    if (filename == "" || filename == null)
                    {
                        filepath = global_filepath;

                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("albums/" + filename));
                        filepath = "~/albums/" + filename;
                    }

                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE albumTB set album_name=@album_name, genre=@genre, artist_name=@artist_name, label_name=@label_name, release_date=@release_date, edition=@edition, album_cost=@album_cost, no_of_tracks=@no_of_tracks, description=@description, actual_stock=@actual_stock, current_stock=@current_stock, album_img_link=@album_img_link where album_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.Parameters.AddWithValue("@album_name", TextBox2.Text.Trim());
                    //cmd.Parameters.AddWithValue("@genre", genres);
                    cmd.Parameters.AddWithValue("@genre", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@artist_name", DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@label_name", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@release_date", TextBox3.Text.Trim());
                    //cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@edition", DropDownList4.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@album_cost", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@no_of_tracks", TextBox11.Text.Trim());
                    cmd.Parameters.AddWithValue("@description", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@actual_stock", actual_stock.ToString());
                    cmd.Parameters.AddWithValue("@current_stock", current_stock.ToString());
                    cmd.Parameters.AddWithValue("@album_img_link", filepath);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Album updated successfully');</script>");

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid album reference');</script>");
            }
        }

        void getBookByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from albumTB WHERE album_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0]["album_name"].ToString();
                    TextBox3.Text = dt.Rows[0]["release_date"].ToString();
                    DropDownList4.SelectedValue = dt.Rows[0]["edition"].ToString().Trim();
                    TextBox10.Text = dt.Rows[0]["album_cost"].ToString().Trim();
                    TextBox11.Text = dt.Rows[0]["no_of_tracks"].ToString().Trim();
                    TextBox4.Text = dt.Rows[0]["actual_stock"].ToString().Trim();
                    TextBox5.Text = dt.Rows[0]["current_stock"].ToString().Trim();
                    TextBox6.Text = dt.Rows[0]["description"].ToString();
                    TextBox7.Text = "" + (Convert.ToInt32(dt.Rows[0]["actual_stock"].ToString()) - Convert.ToInt32(dt.Rows[0]["current_stock"].ToString()));

                    //DropDownList1.SelectedValue = dt.Rows[0]["language"].ToString().Trim();
                    DropDownList2.SelectedValue = dt.Rows[0]["label_name"].ToString().Trim();
                    DropDownList3.SelectedValue = dt.Rows[0]["artist_name"].ToString().Trim();
                    DropDownList1.SelectedValue = dt.Rows[0]["genre"].ToString().Trim();

                    //ListBox1.ClearSelection();
                    //string[] genre = dt.Rows[0]["genre"].ToString().Trim().Split('/');
                    //for (int i = 0; i < genre.Length; i++)
                    //{
                    //    for (int j = 0; j < ListBox1.Items.Count; j++)
                    //    {
                    //        if (ListBox1.Items[j].ToString() == genre[i])
                    //        {
                    //            ListBox1.Items[j].Selected = true;

                    //        }
                    //    }
                    //}

                    global_actual_stock = Convert.ToInt32(dt.Rows[0]["actual_stock"].ToString().Trim());
                    global_current_stock = Convert.ToInt32(dt.Rows[0]["current_stock"].ToString().Trim());
                    global_issued_books = global_actual_stock - global_current_stock;
                    global_filepath = dt.Rows[0]["album_img_link"].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid album reference');</script>");
                }

            }
            catch (Exception ex)
            {

            }
        }

        void fillAuthorPublisherValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT Artist_Name from artistTB;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList3.DataSource = dt;
                DropDownList3.DataValueField = "Artist_Name";
                DropDownList3.DataBind();

                cmd = new SqlCommand("SELECT Record_Label from recordlabelTB;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                DropDownList2.DataSource = dt;
                DropDownList2.DataValueField = "Record_Label";
                DropDownList2.DataBind();

            }
            catch (Exception ex)
            {

            }
        }

        bool checkIfBookExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from albumTB where album_id='" + TextBox1.Text.Trim() + "' OR album_name='" + TextBox2.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void addNewBook()
        {
            try
            {
                //string genres = "";
                //foreach (int i in ListBox1.GetSelectedIndices())
                //{
                //    genres = genres + ListBox1.Items[i] + "/ ";
                //}
                // genres = Adventure,Self Help,
                //genres = genres.Remove(genres.Length - 1);

                string filepath = "~/albums/musicinventory.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("albums/" + filename));
                filepath = "~/albums/" + filename;


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO albumTB(album_id,album_name,genre,artist_name,label_name,release_date,edition,album_cost,no_of_tracks,description,actual_stock,current_stock,album_img_link) values(@album_id,@album_name,@genre,@artist_name,@label_name,@release_date,@edition,@album_cost,@no_of_tracks,@description,@actual_stock,@current_stock,@album_img_link)", con);

                cmd.Parameters.AddWithValue("@album_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@album_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@genre", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@artist_name", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@label_name", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@release_date", TextBox3.Text.Trim());
                //cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@edition", DropDownList4.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@album_cost", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@no_of_tracks", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@description", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@actual_stock", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@current_stock", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@album_img_link", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Album added successfully.');</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    }
}