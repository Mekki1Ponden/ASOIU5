using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASOIU4
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx"); // main
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("News.aspx"); // main
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search1.aspx"); // main
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search2.aspx"); // main
        }
    }
}
