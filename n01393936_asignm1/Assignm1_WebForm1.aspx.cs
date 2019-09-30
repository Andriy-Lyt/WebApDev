using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace n01393936_asignm1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    summary.InnerHtml = "";

                    //Gather information and store it as a variable
                    int Customer_Satisf = Convert.ToInt32(customer_satisf.Text); 

                    //Write an if statement to 
                    if (Customer_Satisf <= 3)
                    {
                        summary.InnerHtml += "Case Requires Urgent Attention<br>";
                    }
                    if (Customer_Satisf <= 7)
                    {
                        summary.InnerHtml += "Case is in Pending Investigation stage<br>";
                    }
                    if (Customer_Satisf > 7)
                    {
                        summary.InnerHtml += "Case is Resolved<br>";
                    }

                }
            }
        }
    }
}