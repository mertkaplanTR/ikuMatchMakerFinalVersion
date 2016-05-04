using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;


public partial class Kayıt2Sayfa : System.Web.UI.Page
{
    DataAccess _dataAccess;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
    public int UserID;


    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["email"] == null)
        {
            Response.Redirect("index.aspx");
        }
        else
        {
            sonuc.Text = Session["email"].ToString();
        }

        _dataAccess = new DataAccess();

    }

    protected void btnKayıt2Sayfa_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        DataTable dtUser = new DataTable();
        con.Open();
        string sex = ddlSex.SelectedItem.ToString();
        //string birthday = txtBirthday.Text; Stringe çevirmede sorun olduğu için kaldırdık
        string phone = txtPhone.Text;
        string facebook = txtFacebook.Text;
        string twitter = txtTwitter.Text;
        string instagram = txtInstagram.Text;
        string snapchat = txtSnapchat.Text;
        string campus = ddlCampus.SelectedItem.ToString();
        string department = ddlDepartment.SelectedItem.ToString();
        string shortInfo = txtShortInfo.Text;
        string hairType = ddlHairType.SelectedItem.ToString();
        string hairColor = ddlHairColor.SelectedItem.ToString();
        string eyeColor = ddlEyeColor.SelectedItem.ToString();
        int height = Convert.ToInt32(txtHeight.Text);
        int weight = Convert.ToInt32(txtWeight.Text);
        string place = txtPlace.Text;
        string smokingHabit = ddlSmokingHabit.SelectedItem.ToString();

        SqlCommand cmd = new SqlCommand("Update [user].[Info] set [sex] =@sex,[phoneNumber] =@phoneNumber,[facebook] =@facebook,[twitter] =@twitter,[instagram] =@instagram,[snapchat] = @snapchat,[campus] = @campus,[department] = @department,[shortInfo] = @shortInfo,[hairType] = @hairType,[hairColor] = @hairColor,[height] = @height,[weight] = @weight,[place] = @place,[smokingHabit] = @smokingHabit where [mailAddress]=@mail", con);
       
        cmd.Parameters.Add(new SqlParameter("@sex", sex));
       // cmd.Parameters.Add(new SqlParameter("@birthday", birthday));
        cmd.Parameters.Add(new SqlParameter("@phoneNumber", phone));
        cmd.Parameters.Add(new SqlParameter("@facebook", facebook));
        cmd.Parameters.Add(new SqlParameter("@twitter", twitter));
        cmd.Parameters.Add(new SqlParameter("@instagram", instagram));
        cmd.Parameters.Add(new SqlParameter("@snapchat", snapchat));
        cmd.Parameters.Add(new SqlParameter("@campus", campus));
        cmd.Parameters.Add(new SqlParameter("@department", department));
        cmd.Parameters.Add(new SqlParameter("@shortInfo", shortInfo));
        cmd.Parameters.Add(new SqlParameter("@hairType", hairType));
        cmd.Parameters.Add(new SqlParameter("@hairColor", hairColor));
        cmd.Parameters.Add(new SqlParameter("@eyeColor", eyeColor));
        cmd.Parameters.Add(new SqlParameter("@height", height));
        cmd.Parameters.Add(new SqlParameter("@weight", weight));
        cmd.Parameters.Add(new SqlParameter("@place", place));
        cmd.Parameters.Add(new SqlParameter("@smokingHabit", smokingHabit));
        cmd.Parameters.AddWithValue("mail", sonuc.Text);
         
        int result = cmd.ExecuteNonQuery();
        if (result > 0)
        {
            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text = "Update Complete";
            Response.Redirect("giris.aspx");
        }
        else
        {
            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text = "Update Failed. You should fill all context!";
        }


    }
}
