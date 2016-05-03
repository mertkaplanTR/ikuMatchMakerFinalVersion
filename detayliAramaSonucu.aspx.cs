using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class detayliAramaSonucu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["isim"] == null)
            Response.Redirect("giris.aspx");
        else
        {
            sonuc.Text = Session["isim"].ToString();

            

        }
    }

    void getInfo()
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        con.Open();
        //SECURILEY SOLVED THIS  

        string sql = "SELECT [name] FROM [user].[Info] where userID=@userID";
        SqlCommand getName = new SqlCommand(sql, con);
        getName.Parameters.AddWithValue("userID", sonuc.Text);
        isim.Text = getName.ExecuteScalar().ToString();

        string sql2 = "SELECT [surname] FROM [user].[Info] where userID=@userID";
        SqlCommand getSurname = new SqlCommand(sql2, con);
        getSurname.Parameters.AddWithValue("userID", sonuc.Text);
        soyadi.Text = getSurname.ExecuteScalar().ToString();

        string sql3 = "SELECT [mailAddress] FROM [user].[Info] where userID=@userID";
        SqlCommand getEmail = new SqlCommand(sql3, con);
        getEmail.Parameters.AddWithValue("userID", sonuc.Text);
        email.Text = getEmail.ExecuteScalar().ToString();
        con.Close();
    }


    protected void detayliAraButonu_Click(object sender, EventArgs e)
    {
        
        string chkSex = "";
        string chkCampus = "";
        string chkDep = "";
        string chkHair = "";
        string chkHairC = "";
        string chkEye = "";

        
        chkSex = ddlSex.SelectedItem.Text;
        chkCampus = ddlCampus.SelectedItem.Text;
        chkDep = ddlDepartment.SelectedItem.Text;
        chkHair = ddlHairType.SelectedItem.Text;
        chkHairC = ddlHairColor.SelectedItem.Text;
        chkEye = ddlEyeColor.SelectedItem.Text;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();

        DataTable dtPersons = new DataTable();

        SqlDataAdapter adapter = new SqlDataAdapter();
        adapter.SelectCommand = new SqlCommand("select u.profilePicture,u.name,u.surname,u.userID from [user].Info as u where sex=@sex and campus=@campus and department=@dep and hairType=@hair and hairColor=@hairC and eyeColor=@eyeC", con);
        adapter.SelectCommand.Parameters.Add("sex", chkSex);
        adapter.SelectCommand.Parameters.Add("campus", chkCampus);
        adapter.SelectCommand.Parameters.Add("dep", chkDep);
        adapter.SelectCommand.Parameters.Add("hair", chkHair);
        adapter.SelectCommand.Parameters.Add("hairC", chkHairC);
        adapter.SelectCommand.Parameters.Add("eyeC", chkEye);
        adapter.Fill(dtPersons);

        GridView1.DataSource = dtPersons;
        GridView1.DataBind();
        con.Close();

    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        Session["secilenUserID"] = GridView1.SelectedRow.Cells[4].Text;
        
        Response.Redirect("uyeProfil.aspx");
    }
}
