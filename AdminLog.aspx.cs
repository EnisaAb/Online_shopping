using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace On
{
    public partial class AdminLog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection("Data Source=ENISA;Initial Catalog=OnlineShopping;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from admin where email=@email and password=@pass", conn);
            cmd.Parameters.AddWithValue("@email", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
            using (SqlDataReader rdr = cmd.ExecuteReader())
            {
                if (rdr.HasRows)
                {
                    if (rdr.Read())
                    {
                        string I = rdr["ID"].ToString();

                        Session["User"] = I;
                     


                        Response.Redirect("ADH.aspx");
                    }
                }

                else
                {
                    Label1.Text = "Incorrect Email or Password";
                }
            }
            conn.Close();
        }
    }
    }
