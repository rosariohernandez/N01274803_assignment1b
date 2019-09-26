using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace n01274803_Assignment1b
{
    public partial class n01274803_Assignment1b : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();

                if (Page.IsValid)
                {
                    string user_level_of_experience = user_experience.Text;
                    //hello
                    booking_confirmation.InnerHtml = "Thank you for booking, your experience is " + user_level_of_experience + ".";

                }

            }
        }
    }
}