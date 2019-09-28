<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="n01274803-Assignment1b.aspx.cs" Inherits="n01274803_Assignment1b.n01274803_Assignment1b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <h1>Welcome to Innsbruck Ski Resort</h1>
            <section>
                <p><strong>Innsbruck</strong> is the capital city of Tyrol in western Austria and the fifth-largest city in Austria. An internationally renowned winter sports center,and hosted the 1964 and 1976 Winter Olympics as well as the 1984 and 1988 Winter Paralympics. Innsbruck also hosted the first Winter Youth Olympics in 2012!</p>

                <p>Experience with us the <strong>best winter</strong> of your life! Explore the mountains at your own pace and select the right activity for you!</p>
            </section>
            <section>
                <label>What would you like to do today?</label>
                <asp:CheckBoxList runat="server" ID="user_activity">
                    <asp:ListItem Text="Explore The Resort" Value="exploreresort"></asp:ListItem>
                    <asp:ListItem Text="Discover The Mountain" Value="discovermountain"></asp:ListItem>
                    <asp:ListItem Text="Tickets/Passes" Value="ticketspasses"></asp:ListItem>
                    <asp:ListItem Text="Lessons/Rentals" Value="lessonsrentals"></asp:ListItem>
                    <asp:ListItem Text="Lodging" Value="lodging"></asp:ListItem>
                </asp:CheckBoxList>
            </section>
                <h2>Tickets/Passes</h2>
             <section>
                <label>Select your level of experience:</label> 
                <asp:RadioButtonList runat="server" ID="user_experience">
                    <asp:ListItem Text="Beginner" Value="Beginner"></asp:ListItem>
                    <asp:ListItem Text="Intermediate" Value="Intermediate"></asp:ListItem>
                    <asp:ListItem Text="Advanced" Value="Advanced"></asp:ListItem>
                    <asp:ListItem Text="Expert" Value="Expert"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select your level of experience." ControlToValidate="user_experience"></asp:RequiredFieldValidator>
             </section>
             <section>
                <h2>Book Your Lesson</h2>
                <p>All our lessons and programs are run by our certified and experienced specialists! We will make sure you feel confident in the snow while you have a great time!</p>
                <p>Select the type of lesson you would like to book with us today!</p>
                <asp:DropDownList runat="server" ID="user_booking">
                    <asp:ListItem Text="-- Choose One --" Value=""></asp:ListItem>
                    <asp:ListItem Text="Beginner" Value="Beginner"></asp:ListItem>
                    <asp:ListItem Text="Intermediate" Value="Intermediate"></asp:ListItem>
                    <asp:ListItem Text="Private Lesson" Value="Private Lesson"></asp:ListItem>
                    <asp:ListItem Text="Semi-Private Lessons" Value="Semi-private Lessons"></asp:ListItem>
                    <asp:ListItem Text="Group: Kids" Value="Group-Kids"></asp:ListItem>
                    <asp:ListItem Text="Group: Adult" Value="Group-Adult"></asp:ListItem>
                    <asp:ListItem Text="Weekly Pass" Value="Weekly Pass"></asp:ListItem>
                </asp:DropDownList>  
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select your type of lesson." ControlToValidate="user_booking"></asp:RequiredFieldValidator>
             </section>
             <section>
                <h2>Lesson Type</h2>
                <label>The lesson for today is for:</label>
                <asp:RadioButtonList runat="server" ID="user_age">
                    <asp:ListItem Text="Kid" Value="Kid"></asp:ListItem>
                    <asp:ListItem Text="Teen" Value="Teen"></asp:ListItem>
                    <asp:ListItem Text="Adult" Value="Adult"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select your age stage." ControltoValidate="user_age"></asp:RequiredFieldValidator>
             </section>
             <section>
                <h2>Lesson Times and Cost</h2>
                <p><b>Weekends and Holidays:</b> <b></b> Lessons start at 10:00am, 11:00 am, 12:00 pm, 1:30 pm, 3:00 pm, and 4:00 pm </p>
             </section>
             <section>
                <p><b>Midweek Ski:</b> <b></b> Lessons start at 1:30 pm and 3:00 pm.</p>
             </section>
             <p>Each lesson has a cost of <b>CAD $65.00 </b> per person, and has a duration of <b>1 hour.</b>.</p>
             <section>
                 <p>ADVANCED BOOKING is highly recommended!</p>
             </section>
             <section>
                 <h2>Booking Details</h2>
             </section>
             <section>
                 <label>Name</label>
                 <asp:TextBox runat="server" ID="booking_name"></asp:TextBox>
                 <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your name." ControlToValidate="booking_name"></asp:RequiredFieldValidator>
             </section>
             <section>
                 <label>Email address</label>
                 <asp:TextBox runat="server" ID="booking_email"></asp:TextBox>
                 <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter a valid email format." ControlToValidate="booking_email" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter an email address." ControlToValidate="booking_email"></asp:RequiredFieldValidator>
                 <!--Took this regular expression pattern from: forums.asp.net/t/2071444.aspx?how+to+validate+email+address+using+asp+net+ from contributor: Nadeem157,on Thrusday September 26, 2019.-->
             </section>
             <section>
                 <label>How many lessons are you booking for today?</label>
                  <asp:TextBox runat="server" ID="booking_total"></asp:TextBox>
                  <asp:RangeValidator runat="server" EnableClientScript="true" ErrorMessage="Please select the amount of lesson you want to book for today. (Minimun 1, Maximum 3)" ControlToValidate="booking_total" MinimumValue="1" MaximumValue="3"></asp:RangeValidator>
             </section>
             <section>
                 <label>Keep up with our latest info and sign up!</label>
                 <asp:CheckBoxList runat="server" ID="news">
                    <asp:ListItem Text="Deals" Value="Deals"></asp:ListItem>
                    <asp:ListItem Text="News about our Resort" Value="NewsResort"></asp:ListItem>
                    <asp:ListItem Text="News about Innsbruck!" Value="NewsInnbruck"></asp:ListItem>
                 </asp:CheckBoxList>
             </section>
             <section>
                <label for="booking_message">Leave us a comment:</label>
                <asp:TextBox runat="server" ID="booking_message"></asp:TextBox>
             </section>
             <section>
              <asp:ValidationSummary runat="server" ShowSummary="true" />
             </section>
             <section id="booking_confirmation" runat="server">
             </section>
             <section>
             <asp:Button runat="server" ID="submit" text="submit" />
             </section>
      </form>
</body>
</html>
