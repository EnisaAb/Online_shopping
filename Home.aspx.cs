using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace On
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=ENISA;Initial Catalog=OnlineShopping;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from Produktet", conn);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
            conn.Close();
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
          
        }

        }
}