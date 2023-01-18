using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Infinite.Asp.Net.exam
{
    public partial class Position : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String mainconn = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[Position] (cPositionCode,vDescription,iBudgetedStrength,siYear,iCurrentStrength) values (@PositionCode,@Description,@BudgetedStrength,@Year,@CurrentStrength)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);

           // sqlcomm.Parameters.AddWithValue("@PositionCode", TxtPositioncode.Text);
            sqlcomm.Parameters.AddWithValue("@Description", TextBox1.Text);
            sqlcomm.Parameters.AddWithValue("@BudgetedStrength", TextBox2.Text);
            sqlcomm.Parameters.AddWithValue("@Year", TextBox3.Text);
            sqlcomm.Parameters.AddWithValue("@CurrentStrength", TextBox4.Text);

            sqlconn.Open();
            sqlcomm.ExecuteNonQuery();

            sqlconn.Close();

        }
    }
}