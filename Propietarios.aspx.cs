using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desemp2
{
    public partial class Propietarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != string.Empty)
            {
                SqlDataSource1.Insert();
                GridView1.DataBind();
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
            }
        }
    }
}