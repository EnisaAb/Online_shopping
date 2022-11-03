using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace On
{
    public partial class ADH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            refresh();
        }
        SqlConnection conn = new SqlConnection("Data Source=ENISA;Initial Catalog=OnlineShopping;Integrated Security=True");
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        public void refresh()
        {
            string a = Session["User"].ToString();
            conn.Open();
            string querry = "select * from Produktet where IdA='" + a + "'";
            SqlDataAdapter da = new SqlDataAdapter(querry, conn);

            DataSet ds = new DataSet();
            da.Fill(ds, "*");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
          


            conn.Close();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = Session["User"].ToString();
            conn.Open();
            SqlCommand cmd = new SqlCommand("UploadImg", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Produkti", TextBox3.Text);
            cmd.Parameters.AddWithValue("Kategoria", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@Cmimi", TextBox4.Text);
            cmd.Parameters.AddWithValue("@valuta", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@Pershkrim", TextBox5.Text);

            if (FileUpload1.HasFile)
            {
                HttpPostedFile postedFile = FileUpload1.PostedFile;
                string filename = Path.GetFileName(postedFile.FileName);
                string fileEx = Path.GetExtension(filename);
                if (fileEx.ToLower() == ".jpg" || fileEx.ToLower() == ".png" ||
                    fileEx.ToLower() == ".bmp" || fileEx.ToLower() == ".jfif" ||
                    fileEx.ToLower() == ".jpeg")
                {

                    Stream stream = postedFile.InputStream;
                    BinaryReader binaryReader = new BinaryReader(stream);
                    byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
                    SqlParameter foto = new SqlParameter()
                    {
                        ParameterName = "@Foto",
                        Value = bytes

                    };

                    cmd.Parameters.Add(foto);

                }
                else
                {
                    Label8.Text = "Only  images(.jpg, .bmp, .png, .jfif, .jpeg)";
                    Label8.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                Label8.Text = "Please Upload your image";
                Label8.ForeColor = System.Drawing.Color.Red;
            }
            cmd.Parameters.AddWithValue("@IdA", a);
            cmd.ExecuteNonQuery();




            conn.Close();

            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            refresh();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            conn.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Delete from Produktet where ID='" + TextBox2.Text + "'", conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds.Tables["Produktet"];

            conn.Close();
            refresh();
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update Produktet set Produkti=@Produkti,Kategoria=@Kategoria,Cmimi=@Cmimi,valuta=@valuta,Pershkrim=@Pershkrim,Foto=@Foto where ID='" + TextBox2.Text + "'", conn);
            cmd.Parameters.AddWithValue("@Produkti", TextBox3.Text);
            cmd.Parameters.AddWithValue("Kategoria", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@Cmimi", TextBox4.Text);
            cmd.Parameters.AddWithValue("@valuta", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@Pershkrim", TextBox5.Text);
            if (FileUpload1.HasFile)
            {
                HttpPostedFile postedFile = FileUpload1.PostedFile;
                string filename = Path.GetFileName(postedFile.FileName);
                string fileEx = Path.GetExtension(filename);
                if (fileEx.ToLower() == ".jpg" || fileEx.ToLower() == ".png" ||
                    fileEx.ToLower() == ".bmp" || fileEx.ToLower() == ".jfif" ||
                    fileEx.ToLower() == ".jpeg")
                {

                    Stream stream = postedFile.InputStream;
                    BinaryReader binaryReader = new BinaryReader(stream);
                    byte[] bytes = binaryReader.ReadBytes((int)stream.Length);

                    cmd.Parameters.AddWithValue("@Foto", bytes);
                }
                else
                {
                    Label8.Text = "Only  images(.jpg, .bmp, .png, .jfif, .jpeg)";
                    Label8.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                Label8.Text = "Please Upload your image";
                Label8.ForeColor = System.Drawing.Color.Red;
            }
            cmd.ExecuteNonQuery();
            conn.Close();
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";

            refresh();
            conn.Close();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.NewSelectedIndex];
            TextBox2.Text = row.Cells[1].Text;
            TextBox3.Text = row.Cells[2].Text;
            DropDownList1.Text = row.Cells[3].Text;
            TextBox4.Text = row.Cells[4].Text;
            DropDownList2.Text = row.Cells[5].Text;
            TextBox5.Text = row.Cells[6].Text;
        }
    }
}