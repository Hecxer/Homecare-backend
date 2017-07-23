<%@ Page Language="C#" AutoEventWireup="true" CodeFile="division.aspx.cs" Inherits="division" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>就醫科別</title>
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

    <style>
        #btn1{
            float:right;
        }
         #FormView1{
            margin:auto;
        }
    </style>

</head>
<body>
    <form id="form2" runat="server">
         
   <div id="wrapper">
       <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="function.html">HomeCare</a>
                </div>
                <!-- /.navbar-header -->
                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li>
                                <a href="#" onclick="showManager()"><i class="fa fa-user fa-fw"></i>管理者資訊</a>
                            </li>
                            <li>
                                <a href="managerRegister.aspx"><i class="fa fa-plus fa-fw"></i>新增管理者帳號</a>
                            </li>
                            <li class="divider"></li>
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
                                <a href="#"><i class="fa fa-pencil-square-o fa-fw"></i>健康新知功能<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="h_article.aspx">健康文章</a>
                                    </li>
                                    <li>
                                        <a href="h_checkup_nMeaning.aspx">健檢名詞意義</a>
                                    </li>
                                    <li>
                                        <a href="symptom_reference.aspx">症狀就醫參考表</a>
                                    </li>
                                    <li>
                                        <a href="division.aspx">就醫科別</a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>
        <div id="page-wrapper">
            <div class="container">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="div_code" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped table-hover">
            <EditItemTemplate>
                             


                就醫科別名稱:
                <asp:TextBox ID="div_nameTextBox" runat="server" Text='<%# Bind("div_name") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="div_nameTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                <br />
                就醫科別代號:
                <asp:Label ID="div_codeLabel1" runat="server" Text='<%# Eval("div_code") %>' />

                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" CssClass="btn btn-warning" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"  CssClass="btn btn-warning" Text ="取消" />
                <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" CssClass="btn btn-warning" Text="刪除" />
            </EditItemTemplate>
       
            <InsertItemTemplate>
                  

                就醫科別名稱:
                <asp:TextBox ID="div_nameTextBox" runat="server" Text='<%# Bind("div_name") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="div_nameTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                <br />
                就醫科別代號:
                <asp:TextBox ID="div_codeTextBox" runat="server" Text='<%# Bind("div_code") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="div_codeTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入 "  CssClass="btn btn-warning"/>
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"  CssClass="btn btn-warning" />
            </InsertItemTemplate>
            <ItemTemplate>
                



               
                就醫科別名稱:
                <asp:Label ID="div_nameLabel" runat="server" Text='<%# Bind("div_name") %>' />
                <br />
                就醫科別代號:
                <asp:Label ID="div_codeLabel" runat="server" Text='<%# Eval("div_code") %>' />
                <br />
               
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Edit"  CssClass="btn btn-warning">修改</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton5" runat="server" CommandName="New"  CssClass="btn btn-warning">新增</asp:LinkButton>
                        
            </ItemTemplate>
        </asp:FormView> 
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" SelectCommand="SELECT * FROM [division]"
            InsertCommand="insert into [division]( div_name,div_code) values(@div_name,@div_code) "
            UpdateCommand="Update[division] set div_name=@div_name  where div_code=@div_code"
            DeleteCommand="delete from [division] where div_code=@div_code"  
            ></asp:SqlDataSource>
            </div>
        </div>
        
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
