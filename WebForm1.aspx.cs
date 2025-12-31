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
           
            
        }

        protected void Button1_Click(object sender, EventArgs e)
            {
            string file = FileUpload1.FileName;
            string path = Server.MapPath("~/Uploads/" + file); // Ensure the 'Uploads' directory exists in your project
            FileUpload1.SaveAs(path);
            Label2.Text = "File uploaded successfully: " + file;

            }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
            {
            Label1.Text = "Selected date: " + Calendar1.SelectedDate.ToShortDateString();
            }

        protected void next_btn_Click(object sender, EventArgs e)
            {
                MultiView1.ActiveViewIndex = 1;

            }

        protected void Button2_Click(object sender, EventArgs e)
            {
                MultiView1.ActiveViewIndex = 0;
            }

        protected void next_view2_btn_Click(object sender, EventArgs e)
            {
                MultiView1.ActiveViewIndex = 2;
            }

        protected void Button3_Click(object sender, EventArgs e)
            {

            MultiView1.ActiveViewIndex = 1;
            }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
            {


            }
        }
}