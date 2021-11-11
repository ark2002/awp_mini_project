using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    private string connstr = WebConfigurationManager.ConnectionStrings["Res"].ConnectionString;
}

namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            DateTime startDate = Calendar2.SelectedDate;

            if (e.Day.Date < startDate)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.DarkBlue;

            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }


        protected void Submit_Click(object sender, EventArgs e)
        {
            Label11.Text = "Booking Succesful";
        }
    }
}