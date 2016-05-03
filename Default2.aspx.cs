using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
   

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        mesajAlani.Text = GridView1.SelectedRow.Cells[1].Text + "  mesaj alani";
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["isim"] == null || Session["isim"] == "")
            Response.Redirect("giris.aspx");
        else
        {
            sonuc.Text = Session["isim"].ToString();
        }

    }

    
}

   