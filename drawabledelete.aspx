<%@ Page Language="C#" AutoEventWireup="true" CodeFile="drawabledelete.aspx.cs" Inherits="drawabledelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <link href="Homecare.css" rel="stylesheet" />
    <style>
        .showbox {
	width: 700px;
	height: 466px;
	/*border: 2px solid #000000;*/
	vertical-align: middle;
     margin:auto;
}
.abgne-block-20120106 {
	margin-top: 10px;
	width: 680px;
	overflow: hidden;
     margin:auto;
}
.abgne-block-20120106 a {
	margin-right: 10px;
     margin:auto;
}
.abgne-block-20120106 a img {
	width: 140px;
	height: 92px;
	border: 2px solid #1dd;
	vertical-align: middle;
     margin:auto;
}
#btn1{
            float:right;
        }
     #FormView1{
            margin:auto;
        }

    </style>
      <script>
            $(function () {
                // 用來顯示大圖片用
                var $showImage = $('#img1');

                // 當滑鼠移到 .abgne-block-20120106 中的某一個超連結時
                $('.abgne-block-20120106 a').mouseover(function () {
                    var $this = $(this),
                        _src = $this.attr('href');
                    // 如果現在大圖跟目前要顯示的圖不是同一張時
                    if ($showImage.attr('src') != _src) {
                        $showImage.hide().attr('src', _src).stop(false, true).fadeTo(400, 1);
                    }
                }).click(function () {
                    // 如果超連結被點擊時, 取消連結動作
                    return false;
                });
            });
            </script>
    <title></title>
   </head>
    <body>
   <form id="form2" runat="server">

     <header class="header">
      <div class="container" >
       
            <nav class="navbar navbar-default " style="background-color:#ffd800/*opacity:0.5*/">
                <div class="navbar-header" >
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <!--可用&equiv;替代-->
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a id="logo" class="navbar-brand" href="function.html">圖片管理系統</a>
                </div>
                <button id="btn1"  type="button" class="btn  btn1 btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"  >
              選擇<span class="caret"></span>
            </button>
                       <ul class="dropdown-menu dropdown-menu-right">
                         
                         <li><a href="Register.aspx " class="btn btn-warning" >註冊</a></li>
                            <li><a href="drawable.aspx" class="btn btn-warning">個人化圖片上傳</a></li>
                         <li><a href="health_rec.aspx" class="btn btn-warning">健康記錄</a></li>
                        <li><a href="med_rec.aspx" class="btn btn-warning">看診記錄</a></li>                 
                        <li><a href="pickMed_rec.aspx"class="btn btn-warning">領藥記錄</a></li>
                         <li><a href="med_rec.aspx"class="btn btn-warning">用藥記錄</a></li>
                        <li><a href="self-test.aspx" class="btn btn-warning">自我檢測</a></li>
                        <li><a href="h_article.aspx" class="btn btn-warning">健康文章</a></li>
                        <li><a href="h_checkup_nMeaning.aspx" class="btn btn-warning">健檢名詞意義</a></li>
                          <li><a href="check1.aspx" class="btn btn-warning">check1(健檢名詞意義)</a></li>
                        <li><a href="sysptorn_reference.aspx"class="btn btn-warning">症狀就醫參考表</a></li>
                           <li><a href="check2.aspx" class="btn btn-warning">check2(症狀就醫參考表)</a></li>
                        <li><a href="h_article.aspx" class="btn btn-warning">健康文章</a></li>
                        <li><a href="check3.aspx" class="btn btn-warning">check3(健康文章)</a></li>
                        <li><a href="division.aspx" class="btn btn-warning">就醫科別</a></li>
                        <li><a href="user_rights_assignment.aspx" class="btn btn-warning">照顧者被照顧者權限切換</a></li>
                        <li><a href="userData.aspx " class="btn btn-warning">使用者資料查看</a></li>
                            <li><a href="index.aspx" class="btn btn-warning">返迴管理者首頁</a></li>
                         <li><a href="userLogin.aspx " class="btn btn-warning">返迴使用者查尋</a></li>
                      <%-- <li> <asp:Button ID="Button1" runat="server" Text="登出" OnClick="Button1_Click" /></li>--%>
                        </ul>
            
            </nav>
        </div>
     
    </header>
       
	<div class="showbox">
    <%--    <img id="show-image" src="images/a5.jpg" style="Width:100% "/>--%>
        <asp:Image ID="img1" ImageUrl="images/a8.jpg"  Width="80%" runat="server" />   </div>
<%--	<p>
		分隔用....
	</p>--%>
	<div class="abgne-block-20120106">
		<a href="images/a1.jpg"><img src="images/a1.jpg" title="" /></a>
		<a href="images/a2.jpg"><img src="images/a2.jpg" title="" /></a>
		<a href="images/a3.jpg"><img src="images/a3.jpg" title="" /></a>
		<a href="images/a4.jpg"><img src="images/a4.jpg" title="" /></a>
        <a href="images/a5.jpg"><img src="images/a5.jpg" title="" /></a>
		<a href="images/a6.jpg"><img src="images/a6.jpg" title="" /></a>
         <a href="images/a7.jpg"><img src="images/a7.jpg" title="" /></a>
		<a href="images/a8.jpg"><img src="images/a8.jpg" title="" /></a>
	</div>

 <div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="SN" DataSourceID="SqlDataSource1"  Allowpaging="true" >
                <EditItemTemplate>
                    SN:
                    <asp:Label ID="SNLabel1" runat="server" Text='<%# Eval("SN") %>' />
                    <br />
                    drawableID:
                    <asp:TextBox ID="drawableIDTextBox" runat="server" Text='<%# Bind("drawableID") %>' />
                    <br />
                    drawableName:
                    <asp:TextBox ID="drawableNameTextBox" runat="server" Text='<%# Bind("drawableName") %>' />
                    <br />
                    drawableImg:
                    <asp:TextBox ID="drawableImgTextBox" runat="server" Text='<%# Bind("drawableImg") %>' />
                    <br />
                    drawableIntro:
                    <asp:TextBox ID="drawableIntroTextBox" runat="server" Text='<%# Bind("drawableIntro") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" CssClass="btn btn-warning" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning"/>
                    <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" CssClass="btn btn-warning"/>
                </EditItemTemplate>
                <InsertItemTemplate>
                    drawableID:
                    <asp:TextBox ID="drawableIDTextBox" runat="server" Text='<%# Bind("drawableID") %>' />
                    <br />
                    drawableName:
                    <asp:TextBox ID="drawableNameTextBox" runat="server" Text='<%# Bind("drawableName") %>' />
                    <br />
                    drawableImg:
                    <asp:TextBox ID="drawableImgTextBox" runat="server" Text='<%# Bind("drawableImg") %>' />
                    <br />
                    drawableIntro:
                    <asp:TextBox ID="drawableIntroTextBox" runat="server" Text='<%# Bind("drawableIntro") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    SN:
                    <asp:Label ID="SNLabel" runat="server" Text='<%# Eval("SN") %>' />
                    <br />
                    drawableID:
                    <asp:Label ID="drawableIDLabel" runat="server" Text='<%# Bind("drawableID") %>' />
                    <br />
                    drawableName:
                    <asp:Label ID="drawableNameLabel" runat="server" Text='<%# Bind("drawableName") %>' />
                    <br />
                    drawableImg:
                    <asp:Label ID="drawableImgLabel" runat="server" Text='<%# Bind("drawableImg") %>' />
                    <br />
                    drawableIntro:
                    <asp:Label ID="drawableIntroLabel" runat="server" Text='<%# Bind("drawableIntro") %>' />
                    <br />
                            
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Edit" CssClass="btn btn-warning">修改</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton5" runat="server" CommandName="New" CssClass="btn btn-warning">新增</asp:LinkButton>
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" SelectCommand="SELECT * FROM [drawable] where [drawableID]=@pic"
                InsertCommand="insert into [drawable] values(@drawableID,@drawableName,@drawableImg,@drawableIntro) "
                  UpdateCommand="Update [drawable] set drawableID=@drawableID,
           drawableName=@drawableName,
            drawableImg=@drawableImg, 
            drawableIntro=@drawableIntro,
            where SN=@SN"
            DeleteCommand="delete from [drawable] where SN=@SN"
                >

                     <SelectParameters>
                            <asp:SessionParameter Name="pic" SessionField="drawable" />
                        </SelectParameters>

            </asp:SqlDataSource>

        </div>

<div class="row">
    <footer id="copyright" class="footer navbar-static-bottom">
      
          <div style="line-height: 32px; color:white;text-align: center;background-color:#ffd800;"  >
            <span ">
                  <strong><span style="font-size:16px;">Homecare</span></strong>
              <span style="font-size:16px;letter-spacing:1px"><strong>服務電話：</strong>（07）8210171&nbsp;&nbsp;&nbsp;<strong>信箱：</strong> </span></span>
              <span style="font-size:16px;letter-spacing:1px"><a href="mailto:Homecare@gmail.com"><span style="color:white" >Homecare@gmail.com</span></a></span></div>

        <%--<span class="text-muted">Place sticky footer content here.</span>--%>
      
    </footer>
    </div>
    </form>
    <script>        
        $('input[type="text"]').addClass('form-control');
        $(':password').addClass('form-control');
        $('input[type="date"]').addClass('form-control');
    </script>
</body>
</html>
