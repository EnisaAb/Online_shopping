using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace On
{
    public partial class Details : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=ENISA;Initial Catalog=OnlineShopping;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Int64 ID = Convert.ToInt64(Request.QueryString["IDP"]);
        

            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from Produktet where ID='" + ID + "'", conn);
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
            conn.Close();
        }
        public void addcart(string IDU, string IDP, string Sasia, string dataS)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Insert into Cart values(@IDU,@IDP,@Sasia,@dataS)", conn);

            cmd.Parameters.AddWithValue("@IDU", IDU);
            cmd.Parameters.AddWithValue("@IDP", IDP);
            cmd.Parameters.AddWithValue("@Sasia", Sasia);
            cmd.Parameters.AddWithValue("@dataS", dataS);
            cmd.ExecuteNonQuery();
            conn.Close();
            Session["User"] = IDU;
            Response.Redirect("ShC.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {

                string IDU = Session["User"].ToString();
                string Sasia = TextBox1.Text;
                string IDP = Request.QueryString["IDP"];
                string dateS = DateTime.Today.ToString("yyyy/dd/MM");


                addcart(IDU, IDP, Sasia, dateS);
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}