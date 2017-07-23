using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HomeCare1ConnectionString2"].ConnectionString);


        //"select* from[user] u inner join pickMed_rec p on u.account = p.account where u.account = '' and password = ''"

        Conn.Open();
        SqlCommand objCmd = new SqlCommand("select * from [manager] where manager_account=@name and  manager_password=@pwd ", Conn);

        objCmd.Parameters.AddWithValue("@name", txtname.Text);
        objCmd.Parameters.AddWithValue("@pwd", txtPassword.Text);

        SqlDataReader rd;
        rd = objCmd.ExecuteReader();



        if (rd.Read())
        {

       
            Session.Add("drawable", txtname.Text);


            Response.Redirect("function.html");
        }
        else
        {
            Response.Write("<script>alert('帳號密碼錯誤，請重新輸入')</script>");
        }

        Conn.Close();
    }




}