using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace malak_195413_
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con=new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\abdo hilal\source\repos\malak_195413_\malak_195413_\App_Data\f23db.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from products";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            rep.DataSource = dt;
            rep.DataBind();

            con.Close();
        }

        protected void rep_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}