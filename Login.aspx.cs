using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace On
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                Response.Redirect("~/ShC.aspx");
            }
        }
    
    SqlConnection conn = new SqlConnection("Data Source=ENISA;Initial Catalog=OnlineShopping;Integrated Security=True");
    protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from SignUp where Email=@email and Password=@pass", conn);
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
                


                        Response.Redirect("ShC.aspx");
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
