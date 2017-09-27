using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        SqlCommand cmd = new SqlCommand();

        cmd.Connection = conn;

        cmd.CommandText = @"SELECT * FROM users WHERE
                                userEmail = @userEmail
                                AND userPassword = @userPassword";
        cmd.Parameters.AddWithValue("@userEmail", tb_email.Text);
        cmd.Parameters.AddWithValue("@userPassword", tb_password.Text);

        conn.Open();

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {
            Session["userId"] = reader["userId"];


            Response.Redirect("Velkommen.aspx");

        }
        conn.Close();
    }
}