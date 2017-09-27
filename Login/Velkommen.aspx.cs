using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Velkommen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userId"] != null)
        {
            if (!IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

                SqlCommand cmd = new SqlCommand(@"SELECT * FROM users WHERE userId = @userId", conn);

                cmd.Parameters.AddWithValue("@userId", Session["userId"]);
                conn.Open();
                repeater_userInfo.DataSource = cmd.ExecuteReader();
                repeater_userInfo.DataBind();
                conn.Close();
            }
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
}