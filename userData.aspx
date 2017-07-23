<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userData.aspx.cs" Inherits="backendIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>HomeCare後台管理系統</title>

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
                                <a href="userData.aspx"><i class="fa fa-user fa-fw "></i> 個人資料</a>
                            </li>
                            
                            <li>
                                <a href="#"><i class="fa fa-user-secret fa-fw"></i> 紀錄功能<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="med_rec.aspx">看診紀錄</a>
                                    </li>
                                    <li>
                                        <a href="health_rec.aspx">健康紀錄</a>
                                    </li>
                                    <li>
                                        <a href="pickMed_rec.aspx">領藥紀錄</a>
                                    </li>
                                    <li>
                                        <a href="takeMed_rec.aspx">用藥紀錄</a>
                                    </li>
                                    <li>
                                        <a href="self-test.aspx">自我檢測</a>
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
            
        <div class="container">
            <%--  <div class="row">--%>
            <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            看診紀錄
                       
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:DetailsView ID="DetailsView2" runat="server" CssClass="table table-bordered table-striped table-hover " AutoGenerateRows="False" DataKeyNames="med__recNum" DataSourceID="SqlDataSource1" OnPageIndexChanging="DetailsView1_PageIndexChanging" AllowPaging="True">
                                    <Fields>
                                        <asp:BoundField DataField="med__recNum" HeaderText="看診紀錄編號" ReadOnly="True" SortExpression="med__recNum" />
                                        <asp:BoundField DataField="date" HeaderText="看診日期" SortExpression="date" />
                                        <asp:BoundField DataField="location" HeaderText="看診地點" SortExpression="location" />
                                        <asp:BoundField DataField="div_name" HeaderText="科別名稱" SortExpression="div_name" />
                                        <asp:BoundField DataField="doc_name" HeaderText="醫師名稱" SortExpression="doc_name" />
                                        <asp:BoundField DataField="content" HeaderText="看診內容" SortExpression="content" />
                                        <asp:BoundField DataField="account" HeaderText="帳號" SortExpression="account" />
                                    </Fields>
                                </asp:DetailsView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" SelectCommand="SELECT * FROM [med_rec] where account=@a">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="a" SessionField="user" />
                                    </SelectParameters>

                                </asp:SqlDataSource>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            領藥與用藥紀錄
                       
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:DetailsView ID="DetailsView6" runat="server" DataSourceID="SqlDataSource3" CssClass="table table-bordered table-striped table-hover" AutoGenerateRows="False" DataKeyNames="pickMed_recNum,takeMed_recNum" AllowPaging="True">
                                    <Fields>
                                        <asp:BoundField DataField="pickMed_time" HeaderText="領藥時間" SortExpression="pickMed_time" />
                                        <asp:BoundField DataField="med_name" HeaderText="藥名" SortExpression="med_name" />
                                        <asp:BoundField DataField="med_res" HeaderText="藥物來源" SortExpression="med_res" />
                                        <asp:BoundField DataField="pic" HeaderText="圖片編號" SortExpression="pic" />
                                        <asp:BoundField DataField="account" HeaderText="帳號" SortExpression="account" />
                                        <asp:BoundField DataField="pickMed_recNum" HeaderText="領藥紀錄編號" ReadOnly="True" SortExpression="pickMed_recNum" />
                                        <asp:BoundField DataField="takeMed_recNum" HeaderText="用藥紀錄編號" ReadOnly="True" SortExpression="takeMed_recNum" />
                                        <asp:BoundField DataField="date" HeaderText="用藥時間" SortExpression="date" />
                                        <%--<asp:BoundField DataField="med_name1" HeaderText="藥名" SortExpression="med_name1" />--%>
                                        <asp:BoundField DataField="med_amount" HeaderText="劑量" SortExpression="med_amount" />
                                        <asp:BoundField DataField="med_time" HeaderText="用藥日期" SortExpression="med_time" />
                                        <asp:BoundField DataField="pickMed_recNum1" HeaderText="領藥紀錄編號" SortExpression="pickMed_recNum1" />
                                    </Fields>
                                </asp:DetailsView>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" SelectCommand="SELECT * FROM [pickMed_rec] p inner join [takeMed_rec] t on p.pickMed_recNum=t.pickMed_recNum where account=@c">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="c" SessionField="user" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            自我檢測結果
                       
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:DetailsView ID="DetailsView7" runat="server" DataSourceID="SqlDataSource4" CssClass="table table-bordered table-striped table-hover" AutoGenerateRows="False" DataKeyNames="form_num" AllowPaging="true">
                                    <Fields>
                                        <asp:BoundField DataField="form_num" HeaderText="表單編號" ReadOnly="True" SortExpression="form_num" />
                                        <asp:BoundField DataField="form_name" HeaderText="表單名稱" SortExpression="form_name" />
                                        <asp:BoundField DataField="result" HeaderText="檢測結果" SortExpression="result" />
                                        <asp:BoundField DataField="account" HeaderText="帳號" SortExpression="account" />
                                    </Fields>
                                </asp:DetailsView>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" SelectCommand="SELECT * FROM [self-test] where account=@d">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="d" SessionField="user" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            健康紀錄
                       
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:DetailsView ID="DetailsView8" runat="server" DataSourceID="SqlDataSource5" CssClass="table table-bordered table-striped table-hover" AutoGenerateRows="False" DataKeyNames="health_recNum"  AllowPaging="true">
                                    <Fields>
                                        <asp:BoundField DataField="health_recNum" HeaderText="健康紀錄編號" ReadOnly="True" SortExpression="health_recNum" />
                                        <asp:BoundField DataField="date" HeaderText="健康紀錄日期" SortExpression="date" />
                                        <asp:BoundField DataField="height" HeaderText="身高" SortExpression="height" />
                                        <asp:BoundField DataField="weight" HeaderText="體重" SortExpression="weight" />
                                        <asp:BoundField DataField="BMI" HeaderText="BMI" ReadOnly="True" SortExpression="BMI" />
                                        <asp:BoundField DataField="temperature" HeaderText="體溫" SortExpression="temperature" />
                                        <asp:BoundField DataField="blood_gluc" HeaderText="血糖" SortExpression="blood_gluc" />
                                        <asp:BoundField DataField="systolic_bp" HeaderText="伸縮壓" SortExpression="systolic_bp" />
                                        <asp:BoundField DataField="diastolic_bp" HeaderText="舒張壓" SortExpression="diastolic_bp" />
                                        <asp:BoundField DataField="pulse" HeaderText="脈搏" SortExpression="pulse" />
                                        <asp:BoundField DataField="account" HeaderText="帳號" SortExpression="account" />
                                    </Fields>
                                </asp:DetailsView>
                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" SelectCommand="SELECT * FROM [health_rec] where account=@e">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="e" SessionField="user" />
                                    </SelectParameters>

                                </asp:SqlDataSource>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            
        </div>
            <!-- /.container-fluid -->
            <%--<div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header myFontStyle">
                        <div class="text-center">

                           <img id="img1" />
                            <asp:Image ID="Image1" Height="50%" Width="50%" runat="server" ImageUrl="images/HC_logo2.png" />
                             <img src="images/d.png" />--%>


                            <%--<input id="Text1" type="text" />
                    <input id="Button1" type="button" value="button" />
                            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="drawableName" DataValueField="drawableName">
                                <%--  <asp:ListItem Value="images/a1.jpg">圖1</asp:ListItem>
                        <asp:ListItem Value="images/a2.jpg">圖2</asp:ListItem>
                        <asp:ListItem Value="images/a3.jpg">圖3</asp:ListItem>
                        <asp:ListItem Value="images/a4.jpg" >圖4</asp:ListItem>
                        <asp:ListItem Value="images/a5.jpg">圖5</asp:ListItem>
                        <asp:ListItem Value="images/a6.jpg">圖6</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" SelectCommand="SELECT [drawableName] FROM [drawable] where [drawableID]=@pic" OnSelecting="SqlDataSource2_Selecting">
                                <SelectParameters>
                                    <asp:SessionParameter Name="pic" SessionField="drawable" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

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
