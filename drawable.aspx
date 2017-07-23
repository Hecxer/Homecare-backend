<%@ Page Language="C#" AutoEventWireup="true" CodeFile="drawable.aspx.cs" Inherits="drawable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width" />
    <title>使用者圖片上傳</title>
    <!-- Bootstrap Core CSS -->
    <!--<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">-->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <!-- MetisMenu CSS -->
    <!--<link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">-->
    <link href="Content/metisMenu.min.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <!--<link href="../dist/css/sb-admin-2.css" rel="stylesheet">-->
    <link href="Content/sb-admin-2.css" rel="stylesheet" />
    <!-- Custom Fonts -->
    <!--<link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">-->
    <link href="fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <script src="Scripts/homecare.js"></script>
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
    <style>
               /*.showbox {
	width: 700px;
	height: 460px;
	border: 2px solid #1dd;
	vertical-align: middle;
}
.abgne-block-20120106 {
	margin-top: 10px;
	width: 680px;
	overflow: hidden;
}
.abgne-block-20120106 a {
	margin-right: 10px;
}
.abgne-block-20120106 a img {
	width: 140px;
	height: 92px;
	border: 2px solid #1dd;
	vertical-align: middle;
}*/
 #btn1{
            float:right;
        }
     #FormView1,#FileUpload1{
            margin:auto;
        }
    </style>

</head>

<body>
 
        <form id="form2" runat="server">
        

            
              
 <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                
                <a class="navbar-brand" href="function.html">HomeCare</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li>
                            <a href="#" onclick="showManager()"><i class="fa fa-user fa-fw"></i> 管理者資訊</a>
                        </li>
                        <li>
                            <a href="managerRegister.aspx"><i class="fa fa-plus fa-fw"></i> 新增管理者帳號</a>
                        </li>
                
                        <li>
                            <asp:LinkButton ID="LogoutBtn" runat="server" OnClick="LogoutBtn_Click" CssClass="btn"><i class="fa fa-sign-out fa-fw fa-align-left"></i>登出</asp:LinkButton>
                        </li>
                        
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                </ul>

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">

                           <li>
                                <a href="#"><i class="fa fa-cog fa-fw"></i> 帳號管理<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="userInfo.aspx">修改使用者資料</a>
                                    </li>
                                    <li>
                                        <a href="Register.aspx">新增使用者</a>
                                    </li>
                                    <li>
                                        <a href="drawable.aspx">使用者圖片上傳</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>

                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
</nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            
       
            
            <!-- /.container-fluid -->
            <div class="container">
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="SN" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserted="FormView1_ItemInserted">
                <EditItemTemplate>
                    流水號:
                    <asp:Label ID="SNLabel1" runat="server" Text='<%# Eval("SN") %>' />
                    <br />
                    圖片ID:
                    <asp:TextBox ID="drawableIDTextBox" runat="server" Text='<%# Bind("drawableID") %>' />
                    <br />
                    圖片名稱:
                    <asp:TextBox ID="drawableNameTextBox" runat="server" Text='<%# Bind("drawableName") %>' />
                    <br />
                    圖片檔名:
                    <asp:TextBox ID="drawableImgTextBox" runat="server" Text='<%# Bind("drawableImg") %>' />
                    <br />
                    圖片說明:
                    <asp:TextBox ID="drawableIntroTextBox" runat="server" Text='<%# Bind("drawableIntro") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    圖片ID:
                    <asp:TextBox ID="drawableIDTextBox" runat="server" Text='<%# Bind("drawableID") %>' />
                    <br />
                    圖片名稱:
                    <asp:TextBox ID="drawableNameTextBox" runat="server" Text='<%# Bind("drawableName") %>' />
                    <br />
                    圖片檔名:
                    <asp:TextBox ID="drawableImgTextBox" runat="server" Text='<%# Bind("drawableImg") %>' />
                    <br />
                    圖片說明:
                    <asp:TextBox ID="drawableIntroTextBox" runat="server" Text='<%# Bind("drawableIntro") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入"  CssClass="btn btn-warning" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"  CssClass="btn btn-warning" />
                    <a href="drawabledelete.aspx"  class="bottom btn btn-warning"  >編輯</a>
                    
                </InsertItemTemplate>
                <ItemTemplate>
                    流水號:
                    <asp:Label ID="SNLabel" runat="server" Text='<%# Eval("SN") %>' />
                    <br />
                    圖片ID:
                    <asp:Label ID="drawableIDLabel" runat="server" Text='<%# Bind("drawableID") %>' />
                    <br />
                    圖片名稱:
                    <asp:Label ID="drawableNameLabel" runat="server" Text='<%# Bind("drawableName") %>' />
                    <br />
                    圖片檔名:
                    <asp:Label ID="drawableImgLabel" runat="server" Text='<%# Bind("drawableImg") %>' />
                    <br />
                    圖片說明:
                    <asp:Label ID="drawableIntroLabel" runat="server" Text='<%# Bind("drawableIntro") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
           
          <%--  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>
            <asp:FileUpload ID="FileUpload1" runat="server" />
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" SelectCommand="SELECT * FROM [drawable]"
                 InsertCommand="insert into [drawable] values(@drawableID,@drawableName,@drawableImg,@drawableIntro) "
                  UpdateCommand="Update [drawable] set drawableID=@drawableID,
           drawableName=@drawableName,
            drawableImg=@drawableImg, 
            drawableIntro=@drawableIntro,
            where SN=@SN"
            DeleteCommand="delete from [drawable] where SN=@SN">
                </asp:SqlDataSource>
        </div>
        </div>
        <!-- /#page-wrapper -->

    </div>
                <!-- jQuery -->
    <!--<script src="../vendor/jquery/jquery.min.js"></script>-->
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <!--<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>-->
    <script src="Scripts/bootstrap.min.js"></script>
    <!-- Metis Menu Plugin JavaScript -->
    <!--<script src="../vendor/metisMenu/metisMenu.min.js"></script>-->
    <script src="Scripts/metisMenu.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <!--<script src="../dist/js/sb-admin-2.js"></script>-->
    <script src="Scripts/sb-admin-2.js"></script>
    </form>
    <script>        
        $('input[type="text"]').addClass('form-control');
        $(':password').addClass('form-control');
        $('input[type="date"]').addClass('form-control');
    </script>
</body>
</html>
