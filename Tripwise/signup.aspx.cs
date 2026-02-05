using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tripwise
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void signbtn_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            string connStr = ConfigurationManager.ConnectionStrings["dbtripwise"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "INSERT INTO Users (FullName, Email, Password) VALUES (@Name, @Email, @Password)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Name", nametxt.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", emailtxt.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", passtxt.Text);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            Response.Redirect("login.aspx");
        }
    }
}