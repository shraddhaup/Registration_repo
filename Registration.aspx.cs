using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace Registration_irealities
{
    public partial class Registration : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["ConnectionStringName"].ConnectionString;

        //SqlConnection con = new SqlConnection("Data Source = LAPTOP - 8IUFDV6P\SQLEXPRESS; Initial Catalog = Registration; Integrated Security = True; MultipleActiveResultSets=True;Application Name = EntityFramework");
        protected void Page_Load(object sender, EventArgs e)
        {
           // lblmsg.Text = "";
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("insert into Registration values(@Name,@EmailId,@Phone,@Experience, @Age, @Application_Date)", con);
                cmd.Parameters.AddWithValue("Name", txtname.Text);
                cmd.Parameters.AddWithValue("EmailId", txtemail.Text);
                cmd.Parameters.AddWithValue("Phone", txtphn.Text);
                cmd.Parameters.AddWithValue("Experience", ddlexperincelevel.SelectedItem.Text);
                cmd.Parameters.AddWithValue("Age", txtage.Text);
                cmd.Parameters.AddWithValue("Application_Date", txtdate.Text);
                cmd.ExecuteNonQuery();
                lblmsg.Visible = true;
                lblmsg.Text = "Form Submitted Successfully";
                txtage.Text = "";
                txtdate.Text = "";
                txtemail.Text = "";
                txtname.Text = "";
                txtphn.Text = "";
                lblmsg.Text = "";
            }
        }

       

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Details.aspx");
        }
    }
}