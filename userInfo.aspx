<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userInfo.aspx.cs" Inherits="userInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>使用者資料</title>
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
        #btn1 {
            float: right;
        }

        /*#GridView1 {
            margin: auto;
        }*/
    </style>
</head>
<body>
    <form id="form1" runat="server">

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
            <div id="page-wrapper">
                <div class="container">
                    <div class="panel-body">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="account" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped table-hover">
                        <Columns>
                            <asp:BoundField DataField="account" HeaderText="account" ReadOnly="True" SortExpression="account" />
                            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                            <asp:BoundField DataField="birthday" HeaderText="birthday" SortExpression="birthday" />
                            <asp:BoundField DataField="age" HeaderText="age" ReadOnly="True" SortExpression="age" />
                            <asp:BoundField DataField="blood_type" HeaderText="blood_type" SortExpression="blood_type" />
                            <asp:BoundField DataField="regis_date" HeaderText="regis_date" ReadOnly="True" SortExpression="regis_date" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />


                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="btn-warning" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" SelectCommand="SELECT * FROM [user]"></asp:SqlDataSource>
                </div>
            </div>
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
</body>
</html>
