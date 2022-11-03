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
    public partial class ShC : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=ENISA;Initial Catalog=OnlineShopping;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Exec carti @IDU='" +Session["User"]+ "'", conn);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                ListView1.DataSource = dt;
                ListView1.DataBind();

                double sum = 0;
                foreach (DataRow dr in dt.Rows)
                {
                    sum = sum + Convert.ToInt64(dr["CmimiTotal"]);

                }

                Label1.Text = sum.ToString();

                conn.Close();
            }
        }
    }
}