using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["email"] != null) 
        //    Response.Redirect("kayitsayfa2.aspx");
        //else
        //{
            

        //}
    }

    protected void kaydolButon_Click(object sender, EventArgs e)
    {
        string MailAddress = mailAdresi.Text;
        string Password = sifresi.Text;


        if (sifresi.Text == sifreTekrar.Text || sifresi.Text != null)
        {
            Password = Convert.ToString(sifreTekrar.Text);
            lblResult.Visible = false;
        }
        else
        {
            lblResult.Visible = true;
            lblResult.Text = "Şifre Hatalı";
        }

        if (sifresi.Text == sifreTekrar.Text && sifresi.Text != null && sifreTekrar.Text != null)
        {
            lblResult.Text = "Şifreler Aynı Değil !";
            lblResult.Visible = true;
            {
                lblResult.Text = "Şifre Kısa";
                lblResult.Visible = true;

                if (sifresi.Text.Length > 5 && sifresi.Text.Length < 17)
                {

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                    DataTable dtUser = new DataTable();
                    con.Open();
                    string name = firstName.Text;
                    string surname = surName.Text;
                    string email = mailAdresi.Text;
                    string password = sifresi.Text;
                    SqlCommand cmd = new SqlCommand("Insert Into [user].[Info] (name,surname,[mailAddress],[password]) Values (@name,@surname,@mailAddress,@password)", con);
                    cmd.Parameters.Add(new SqlParameter("@name", name));
                    cmd.Parameters.Add(new SqlParameter("@surname", surname));
                    cmd.Parameters.Add(new SqlParameter("@mailAddress", email));
                    cmd.Parameters.Add(new SqlParameter("@password", password));
                    int result = cmd.ExecuteNonQuery();
                    if (result > 0)
                    {
                        lblResult.ForeColor = System.Drawing.Color.Green;
                        lblResult.Text = "Sing Up Complete";


                        Session["email"] = mailAdresi.Text;
                        Response.Redirect("kayitsayfa2.aspx");
                    }
                    else
                    {
                        lblResult.ForeColor = System.Drawing.Color.Green;
                        lblResult.Text = "Sing Up Failed. You should fill all context!";
                    }
                }
            }
        }

        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        //DataTable dtUser = new DataTable();
        //con.Open();
        //string name = firstName.Text;
        //string surname=surName.Text;
        //string email=mailAdresi.Text;
        //string password = sifresi.Text;
        //SqlCommand cmd = new SqlCommand("Insert Into [user].[Info] (name,surname,[mailAddress],[password]) Values (@name,@surname,@mailAddress,@password)",con);
        //cmd.Parameters.Add(new SqlParameter("@name", name));
        //cmd.Parameters.Add(new SqlParameter("@surname", surname));
        //cmd.Parameters.Add(new SqlParameter("@mailAddress", email));
        //cmd.Parameters.Add(new SqlParameter("@password", password));
        //int result = cmd.ExecuteNonQuery();
        //if (result > 0)
        //{
        //    lblResult.ForeColor = System.Drawing.Color.Green;
        //    lblResult.Text = "Sing Up Complete";


        //    Session["email"] = mailAdresi.Text;
        //    Response.Redirect("kayitsayfa2.aspx");
        //}
        //else
        //{
        //    lblResult.ForeColor = System.Drawing.Color.Green;
        //    lblResult.Text = "Sing Up Failed. You should fill all context!";
        //}
    }
}