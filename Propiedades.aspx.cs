using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desemp2
{
    public partial class Propiedades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBoxCalle.Text != string.Empty && TextBoxAltura.Text != string.Empty)
            {
                SqlDataSource1.Insert();
                GridView1.DataBind();
                TextBoxCalle.Text = string.Empty;
                TextBoxAltura.Text = string.Empty;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBoxCalle.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBoxAltura.Text = GridView1.SelectedRow.Cells[3].Text;
            DropDownListPropietario.SelectedValue = GridView1.SelectedRow.Cells[4].Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
            TextBoxCalle.Text = string.Empty;
            TextBoxAltura.Text = string.Empty;
        }
    }
}