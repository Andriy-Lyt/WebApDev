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
        #submit { border-radius:7px; background-color: purple; color: white; }
        #RequiredFieldValidator1, #RegularExpressionValidator1, #RangeValidator1 { color: red; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
        <main>
                <img src="2cats-crop.jpg" alt="cats image" />
                <h1> "Happy Cat - Happy Owner" Salon </h1>
                <h2>Grooming Incident Report Form</h2>
            
                <section>
                        <label>Enter your Name:</label>
                        <asp:TextBox runat="server" ID="owner_name" ></asp:TextBox>
                         <%--Required Field Validator  --%>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter Your Name" ControlToValidate ="owner_name" ></asp:RequiredFieldValidator>

                          <label>Enter your Phone number:</label>
                        <asp:TextBox runat="server" ID="phone" placeholder="e.g. 800-555-5555" ></asp:TextBox>
                        <%--  Found phone validaton code at http://regexlib.com/Search.aspx?k=phone&AspxAutoDetectCookieSupport=1  --%>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate ="phone"  ErrorMessage="Enter the correct Phone number" ValidationExpression="^[2-9]\d{2}-\d{3}-\d{4}$"></asp:RegularExpressionValidator>
                </section>

                <section class="margin-top15">
                        <label>Please describe current emotional state of your pet on the 5 scale <br />
                            where 1 - furious and devasteted; 5 - blissful and overjoyed</label> <br />
                        <asp:TextBox class="margin-top10" runat="server" ID="emotion" ></asp:TextBox>
                         <%-- Range Validator  --%>
                           <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please be reasonable and enter correct number" ControlToValidate  ="emotion" MinimumValue="1" MaximumValue="5" Type="Integer"></asp:RangeValidator>
                </section>

                                <%--    <section>
                                            <h3>Please describe current emotional state of your pet on the 5 scale <br />
                                                where 1 = furious and devasteted; 5 = blissful and overjoyed
                                            </h3>
                                            <div>
                                                <asp:RadioButtonList runat="server" ID="emotional_state">
                                                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                                     <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                                    <asp:ListItem Text="1" Value="1"></asp:ListItem>

                                                </asp:RadioButtonList>
                                            </div>
                                        </section>   --%>

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

                <section class="margin-top15">
                        <label>How are you satisfied with support and compensation you received? <br />
                             1 - not satisfied at all ; 10 - couldn't wish for more</label> <br />
                        <asp:TextBox class="margin-top10" runat="server" ID="customer_satisf" ></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Please be reasonable and enter correct number" ControlToValidate  ="emotion" MinimumValue="1" MaximumValue="10" Type="Integer"></asp:RangeValidator>
                </section>

                <section class="margin-top10">
                    <asp:Button Text="Submit" runat="server" />
                </section>
        </main>

        <div runat="server" id="summary"></div>

    </form>
</body>
</html>