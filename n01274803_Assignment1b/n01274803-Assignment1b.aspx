<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="n01274803-Assignment1b.aspx.cs" Inherits="n01274803_Assignment1b.n01274803_Assignment1b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Welcome to Innsbruck Ski Resort</h1>
            <div>
                <p><strong>Innsbruck</strong> is the capital city of Tyrol in western Austria and the fifth-largest city in Austria. An internationally renowned winter sports center,and hosted the 1964 and 1976 Winter Olympics as well as the 1984 and 1988 Winter Paralympics. Innsbruck also hosted the first Winter Youth Olympics in 2012!</p>

                <p>Experience with us the <strong>best winter</strong> of your life! Explore the mountains at your own pace and select the right activity for you!</p>
            </div>
            <div>
                <label>What would you like to do today?</label>
                <asp:CheckBoxList runat="server" ID="user_activity">
                    <asp:ListItem Text="Explore The Resort" Value="exploreresort"></asp:ListItem>
                    <asp:ListItem Text="Discover The Mountain" Value="discovermountain"></asp:ListItem>
                    <asp:ListItem Text="Tickets/Passes" Value="ticketspasses"></asp:ListItem>
                    <asp:ListItem Text="Lessons/Rentals" Value="lessonsrentals"></asp:ListItem>
                    <asp:ListItem Text="Lodging" Value="lodging"></asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <h2>Tickets/Passes</h2>
            <label>Select your level of experience:</label> 
             <div>
                <asp:RadioButtonList runat="server" ID="user_experience">
                    <asp:ListItem Text="Beginner" Value="beginner"></asp:ListItem>
                    <asp:ListItem Text="Intermediate" Value="intermediate"></asp:ListItem>
                    <asp:ListItem Text="Advanced" Value="advanced"></asp:ListItem>
                    <asp:ListItem Text="Expert" Value="expert"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select one option." ControlToValidate="user_experience">                </asp:RequiredFieldValidator>
             </div>
            <div>
                <h2>Book Your Lesson</h2>
                <p>All our lessons and programs are run by our certified and experienced specialists! We will make sure you feel confident in the snow while you have a great time!</p>
                <p>Select the type of lesson you would like to book with us today!</p>
                <asp:DropDownList runat="server" ID="user_booking">
                    <asp:ListItem Text="Beginner" Value="beginner"></asp:ListItem>
                    <asp:ListItem Text="Intermediate" Value="intermediate"></asp:ListItem>
                    <asp:ListItem Text="Private Lesson" Value="privatelesson"></asp:ListItem>
                    <asp:ListItem Text="Semi-Private Lessons" Value="semiprivate_lessons"></asp:ListItem>
                    <asp:ListItem Text="Group: Kids" Value="group_kids"></asp:ListItem>
                    <asp:ListItem Text="Group: Adult" Value="group_adult"></asp:ListItem>
                    <asp:ListItem Text="Weekly Pass" Value="weekly_pass"></asp:ListItem>
                </asp:DropDownList>    
            </div>
            <div>
                <label>The lesson for today is for:</label>
                <asp:RadioButtonList runat="server" ID="user_age">
                    <asp:ListItem Text="Kid" Value="kid"></asp:ListItem>
                    <asp:ListItem Text="Teen" Value="teen"></asp:ListItem>
                    <asp:ListItem Text="Adult" Value="Adult"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <h2>Lesson Times</h2>
                <p><b>Weekends and Holidays:</b> Lessons start at 10:00am, 11:00 am, 12:00 pm, 1:30 pm, 3:00 pm, and 4:00 pm </p>
            </div>
            <div>
                <p><b>Midweek Ski:</b> Lessons start at 1:30 pm and 3:00 pm.</p>
            </div>
            <div>
                <label>Keep up with our latest info and sign up!</label>
                <asp:CheckBoxList runat="server" ID="news">
                    <asp:ListItem Text="Deals" Value="deals"></asp:ListItem>
                    <asp:ListItem Text="News about our Resort" Value="newsresort"></asp:ListItem>
                    <asp:ListItem Text="News about Innsbruck!" Value="newsinnbruck"></asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <div>
                <label for="message">Leave us a comment:</label>
                <asp:TextBox runat="server" ID="user_comment" ></asp:TextBox>
            </div>
            <asp:Button runat="server" ID="submit" text="submit" />
        <div>
        <section id="booking_confirmation" runat="server"></section>
        </div>
    </form>
</body>
</html>
