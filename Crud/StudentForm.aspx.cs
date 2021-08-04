using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Crud
{
    public partial class StudentForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            displayData();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           


        }
        public void displayData()
        {
            SqlCommand cmd = new SqlCommand("select * from student", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            StudentData.DataSource = dt;
            StudentData.DataBind();
           


        }

      

        protected void insertData(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into student values('" + int.Parse(studentId.Text) + "','" + studentName.Text + "','" + double.Parse(studentAge.Text) + "','" + studentCity.SelectedValue + "','" + studentContact.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            message.Visible = true;
            message.Text = "Your Data Stored Successfully..!!!!!";

            studentId.Text = "";
            studentName.Text = "";
            studentAge.Text = "";
            studentCity.SelectedValue = "";
            studentContact.Text = "";
            displayData();

        }

       

        protected void updateData(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update student set studName='" + studentName.Text + "',studAge='" + double.Parse(studentAge.Text) + "',studCity='" + studentCity.SelectedValue + "',studContact='" + studentContact.Text + "' where studId='"+studentId.Text+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            message.Visible = true;
            message.Text = "Your Data Updated Successfully..!!!!!";

           
            displayData();

        }

        protected void deleteData(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("delete student  where studId='" + studentId.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            message.Visible = true;
            message.Text = "Your Data Deleted Successfully..!!!!!";


            displayData();
        }

      

        protected void searchData(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from student  where studId='" + studentId.Text + "'", con);
          
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            StudentData.DataSource = dt;
            StudentData.DataBind();
        }

        protected void getData(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from student  where studId='" + studentId.Text + "'", con);
            SqlDataReader r = cmd.ExecuteReader();
            while (r.Read())
            {
                studentName.Text = r.GetValue(1).ToString();
                studentAge.Text = r.GetValue(2).ToString();
                studentCity.SelectedValue = r.GetValue(3).ToString();
              
                studentContact.Text = r.GetValue(4).ToString();

            }
        }
    }
}