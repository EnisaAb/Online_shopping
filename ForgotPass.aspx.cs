using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace On
{
    public partial class ForgotPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection("Data Source = ENISA; Initial Catalog = OnlineShopping; Integrated Security = True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "select password from SignUp where email=@email";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@email", TextBox1.Text);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {


                string password = dr["password"].ToString();


                MailMessage mm = new MailMessage("bevgshop@gmail.com", TextBox1.Text);

                mm.Subject = "Reseting the password";

                mm.Body = string.Format("Hello there : Your password is: <h1> {0} </h1>", password);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;


                NetworkCredential nc = new NetworkCredential();
                nc.UserName = "bevgshop@gmail.com";
                nc.Password = "Bevg1234&&";
                smtp.UseDefaultCredentials = false;
                smtp.EnableSsl = true;
                smtp.Credentials = nc;
                smtp.Port = 587;

                smtp.Send(mm);
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "Your password has been sent to your email!";
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "This email does not exist in our system!";
            }
            conn.Close();
        }
    }
}