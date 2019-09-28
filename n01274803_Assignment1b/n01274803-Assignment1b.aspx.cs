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
                    string user_level_of_experience = user_experience.Text.ToString();
                    string type_of_lesson = user_booking.SelectedValue.ToString();
                    string age_range_user = user_age.SelectedValue.ToString();
                    string user_name = booking_name.Text.ToString();
                    string user_email = booking_email.Text.ToString();
                    int booking_countlesson = Convert.ToInt32(booking_total.Text);


                    //hello
                    //still learning!
                    booking_confirmation.InnerHtml = " Thank you for booking with us, your booking information is as follows: <br>";
                    booking_confirmation.InnerHtml += " Booking Reservation Name: " + user_name + "<br>";
                    booking_confirmation.InnerHtml += " We can reach you at: " + user_email + "<br>";
                    booking_confirmation.InnerHtml += " Level  of Experience: " + user_level_of_experience + "<br>";
                    booking_confirmation.InnerHtml += " Type of Lesson: " + type_of_lesson + "<br>";
                    booking_confirmation.InnerHtml += " Age Range of Lesson: " + age_range_user + "<br>";
                    booking_confirmation.InnerHtml += " The cost of your booked lesson(s) is: " + booking_countlesson.ToString() + "<br>";
                    if (booking_countlesson == 1)
                    {
                        booking_confirmation.InnerHtml += "lesson for CAD $ 65.00";
                    }
                    if (booking_countlesson == 2)
                    {
                        booking_confirmation.InnerHtml += "lessons for CAD $130.00";
                    }
                    if (booking_countlesson == 3)
                    {
                        booking_confirmation.InnerHtml += "lessons for CAD $195.00";
                    }

                }
                

            }
        }
    }
}