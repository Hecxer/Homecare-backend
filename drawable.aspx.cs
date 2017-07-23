using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class drawable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        string drawable = ((TextBox)FormView1.FindControl("drawableNameTextBox")).Text;
        try
        {
           FileUpload1.SaveAs(Server.MapPath("~/ProductImg/" + drawable + ".jpg"));
            
        }
        catch (Exception ex)
        {
            Response.Write("檔案上傳沒有成功，原因是：" + ex.Message);
        }
    }

    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
    protected void LogoutBtn_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("index.aspx");
    }
}