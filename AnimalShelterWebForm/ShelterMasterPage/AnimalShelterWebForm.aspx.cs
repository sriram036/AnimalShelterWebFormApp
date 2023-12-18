using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Globalization;

namespace AnimalShelterWebForm.ShelterMasterPage
{
    public partial class AnimalShelterWebForm : System.Web.UI.Page
    {
        private string ConnectionString = "Server=DESKTOP-62VIJ9H\\SQLEXPRESS;Database=AnimalShelterDB;Trusted_Connection=True;MultipleActiveResultSets=true";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AnimalsList();
                Calendar1.Visible = false;
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("spAddAnimal", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@type", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@trade", RadioButtonList1.SelectedValue);
                cmd.Parameters.AddWithValue("@changedAt", DateTime.Parse(TextBox3.Text));
                cmd.Parameters.AddWithValue("@notes", TextBox6.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');",true);
                AnimalsList();
            }
        }
        void AnimalsList()
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("spGetAllAnimals", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
                DataTable dataTable = new DataTable();
                sqlDataAdapter.Fill(dataTable);
                con.Open();
                //GridView1.DataSource = dataTable;
                //GridView1.DataBind();
                SqlDataSource1.SelectCommand = "SELECT * FROM [Animals]";
                GridView1.DataBind();
            }
        }



        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox3.Text = Calendar1.SelectedDate.ToString("d");
            Calendar1.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox6.Text = string.Empty;
            DropDownList1.ClearSelection();
            RadioButtonList1.ClearSelection();
        }
    }
}