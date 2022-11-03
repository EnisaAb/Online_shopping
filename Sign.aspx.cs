using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace On
{
    public partial class Sign : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection("Data Source = ENISA; Initial Catalog = OnlineShopping; Integrated Security = True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                conn.Open();
                SqlCommand cmd = new SqlCommand("Insert into SignUp values(@Emri,@Mbiemri,@Email,@Password)", conn);
                cmd.Parameters.AddWithValue("@Emri", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Emri", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox5.Text);
                cmd.ExecuteNonQuery();
                Label1.Text = "You are registered succsessfully";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                conn.Close();
            }
            catch (Exception ex)
            {

                Label1.Text = ex.Message;
            }
        }
    }
}