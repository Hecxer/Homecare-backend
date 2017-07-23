using System;
using System.Web.UI.WebControls;

public partial class backendIndex : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }

    //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    Image1.ImageUrl = "ProductImg/" + DropDownList1.SelectedValue + ".jpg";
    //}
    ////protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    ////{
    ////    Image1.ImageUrl = "Images/" + DropDownList1.SelectedValue + ".jpg";
    ////}
  

    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void LogoutBtn_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("index.aspx");
    }
}