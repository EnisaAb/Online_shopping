using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace On
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection("Data Source = ENISA; Initial Catalog = OnlineShopping; Integrated Security = True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();

            string INSERT = "Insert into Messages (Emri, Email, Mesazhi) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";

            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "")
            {

                SqlCommand cmd = new SqlCommand(INSERT, conn);
                int a = cmd.ExecuteNonQuery();

                if (a == 0)
                {
                    Label4.ForeColor = System.Drawing.Color.Red;
                    Label4.Text = "Something went wrong please try again!";
                }
                else
                {
                    Label4.ForeColor = System.Drawing.Color.Green;
                    Label4.Text = "Your message was sent succesfully!";
                }

                conn.Close();
            }
            else
            {
                Label4.ForeColor = System.Drawing.Color.Red;
                Label4.Text = "Please fill all the textboxes!";

            }

            TextBox1.Text = "";

            TextBox3.Text = "";
            TextBox2.Text = "";

        }


    }
}
    
