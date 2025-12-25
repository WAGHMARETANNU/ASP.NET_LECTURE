using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp2_empty
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelCurrentDate.Text = "Current date: " + DateTime.Now.ToString("dddd, MMMM dd, yyyy");

            DateTime selectedDate = Calendar1.SelectedDate;
            if (selectedDate.Year > 1)
            {
                LabelBirthDate.Text = "Birth date: " + selectedDate.ToString("dddd, MMMM dd, yyyy");
            }
            else
            {
                LabelBirthDate.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("Welcome to asp.net");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime selectedDate = Calendar1.SelectedDate;
            LabelBirthDate.Text = "Birth date: " + selectedDate.ToString("dddd, MMMM dd, yyyy");
        }
    }
}