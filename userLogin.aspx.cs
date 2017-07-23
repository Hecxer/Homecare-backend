using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _98Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HomeCare1ConnectionString2"].ConnectionString);

        
        //"select* from[user] u inner join pickMed_rec p on u.account = p.account where u.account = '' and password = ''"

        Conn.Open();
        SqlCommand objCmd = new SqlCommand("select * from [user] where account=@name  ", Conn);

        objCmd.Parameters.AddWithValue("@name", txtname.Text);
        //objCmd.Parameters.AddWithValue("@pwd", txtPassword.Text);and  password=@pwd

        SqlDataReader rd;
        rd = objCmd.ExecuteReader();



        if (rd.Read())
        {
        
            Session.Add("user", txtname.Text);
            //Session.Add("pickMed_rec", txtname.Text);
            

            Response.Redirect("userData.aspx");
        }
        else
        {
            Response.Write("<script>alert('帳號密碼錯誤，請重新輸入')</script>");
        }

        Conn.Close();
    }




    /////////////////////////////////////////

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("index.aspx");
    }
}

