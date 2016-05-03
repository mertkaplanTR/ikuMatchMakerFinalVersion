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
public partial class uyeProfil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            sonuc.Text = Session["isim"].ToString();
            sonuc2.Text = Session["secilenUserID"].ToString();
              sonuc.Visible = false;
                sonuc2.Visible = false;
    }

    protected void btnBegen_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();
        string sql = "insert into [system].[Likes] ([person1],[person2]) values (@loginUyeID,@profildekiUyeID)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("loginUyeID", sonuc.Text);
        cmd.Parameters.AddWithValue("profildekiUyeID",sonuc2.Text);
        cmd.ExecuteScalar();
        con.Close();
    }
}