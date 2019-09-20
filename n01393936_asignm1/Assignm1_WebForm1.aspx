<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignm1_WebForm1.aspx.cs" Inherits="n01393936_asignm1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Incident Report</title>
    <style>
        body {  width: 80%; margin: 10px auto; }
        img { height: 125px; }
        label, option, input { font-size: 1.1em; }
        .margin-top15 { margin-top: 15px; }
        .margin-top10 { margin-top: 10px; }
        .margin-left5 { margin-left: 5px; }
        #submit { border-radius:7px; background-color: purple; color: white;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
        <main>
            <img src="2cats-crop.jpg" alt="cats image" />
    <h1> "Happy Cat - Happy Owner" Salon </h1>
        <section>
            <h2>Grooming Incident Report Form</h2>
            
                <section>
                    <label>Enter your Name:</label>
                    <asp:TextBox runat="server" ID="aspx_bachelor_firstname" ></asp:TextBox>
                      <label>Enter your pet Name:</label>
                    <asp:TextBox runat="server" ID="TextBox1" ></asp:TextBox>
                </section>

                <section>
                    <h3>Please describe current emotional state of your pet</h3>
                    <div>
                        <asp:RadioButtonList runat="server" ID="emotional_state">
                            <asp:ListItem Text="Happy" Value="happy"></asp:ListItem>
                            <asp:ListItem Text="Melancholic" Value="melancholic"></asp:ListItem>
                            <asp:ListItem Text="Depressed" Value="depressed"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </section>

                <section>
                    <h3>How can we compensate you?</h3>
                    <asp:DropDownList runat="server" ID="compensation">
                        <asp:ListItem Text="Free spa treatment" Value="spa"></asp:ListItem>
                        <asp:ListItem Text="Free dinner" Value="dinner"></asp:ListItem>
                        <asp:ListItem Text="Free excursion" Value="excursion"></asp:ListItem>
                    </asp:DropDownList>
                </section>

                <section>
                    <h3>How can we contact you?</h3>
                    <asp:CheckBoxList ID="contact" runat="server">
                        <asp:ListItem Text="Phone" Value="Phone"></asp:ListItem>
                        <asp:ListItem Text="Text" Value="Text"></asp:ListItem>
                        <asp:ListItem Text="E-mai" Value="E-mai"></asp:ListItem>
                    </asp:CheckBoxList>
                </section>
                <section>
                    <asp:Button Text="Submit" runat="server" />
                </section>
            </div>
        </main>
    </form>
</body>
</html>