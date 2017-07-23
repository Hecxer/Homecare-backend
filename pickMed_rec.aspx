<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pickMed_rec.aspx.cs" Inherits="pickMed_rec" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
              <!-- Navigation -->
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
            <div id="page-wrapper">
                <div class="container">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="pickMed_recNum" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped table-hover" AllowPaging="true">
                <EditItemTemplate>
       
                    領藥日期:
                    <asp:TextBox ID="pickMed_timeTextBox" runat="server" Text='<%# Bind("pickMed_time","{0:d}") %>' />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="pickMed_timeTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    藥物名稱:
                    <asp:TextBox ID="med_nameTextBox" runat="server" Text='<%# Bind("med_name") %>' />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="med_nameTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    藥物來源:
                    <asp:TextBox ID="med_resTextBox" runat="server" Text='<%# Bind("med_res") %>' />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="med_resTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    圖片:
                    <asp:TextBox ID="picTextBox" runat="server" Text='<%# Bind("pic") %>' />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="picTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    帳號:
                    <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="accountTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    領藥紀錄編號:
                    <asp:Label ID="pickMed_recNumLabel1" runat="server" Text='<%# Eval("pickMed_recNum") %>' />
                     
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" CssClass="btn btn-warning"/>
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning"/>
                    <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" CssClass="btn btn-warning"/>
                </EditItemTemplate>
                <InsertItemTemplate>
    
                    領藥日期:
                    <asp:TextBox ID="pickMed_timeTextBox" runat="server" Text='<%# Bind("pickMed_time") %>' />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="pickMed_timeTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    藥物名稱:
                    <asp:TextBox ID="med_nameTextBox" runat="server" Text='<%# Bind("med_name") %>' />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="med_nameTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    藥物來源:
                    <asp:TextBox ID="med_resTextBox" runat="server" Text='<%# Bind("med_res") %>' />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="med_resTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    圖片:
                    <asp:TextBox ID="picTextBox" runat="server" Text='<%# Bind("pic") %>' />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="picTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    帳號:
                    <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="accountTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    領藥紀錄編號:
                    <asp:TextBox ID="pickMed_recNumTextBox" runat="server" Text='<%# Bind("pickMed_recNum") %>' />
<asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="pickMed_recNumTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" CssClass="btn btn-warning"/>
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning"/>
                </InsertItemTemplate>
                <ItemTemplate>
    
                    領藥日期:
                    <asp:Label ID="pickMed_timeLabel" runat="server" Text='<%# Bind("pickMed_time") %>' />
                    <br />
                    藥物名稱:
                    <asp:Label ID="med_nameLabel" runat="server" Text='<%# Bind("med_name") %>' />
                    <br />
                    藥物來源:
                    <asp:Label ID="med_resLabel" runat="server" Text='<%# Bind("med_res") %>' />
                    <br />
                    圖片:
                    <asp:Label ID="picLabel" runat="server" Text='<%# Bind("pic") %>' />
                    <br />
                    帳號:
                    <asp:Label ID="accountLabel" runat="server" Text='<%# Bind("account") %>' />
                    <br />
                    領藥紀錄編號:
                    <asp:Label ID="pickMed_recNumLabel" runat="server" Text='<%# Eval("pickMed_recNum") %>' />
                    <br />
                   
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Edit" CssClass="btn btn-warning">修改</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton5" runat="server" CommandName="New" CssClass="btn btn-warning">新增</asp:LinkButton>
                        
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" SelectCommand="SELECT * FROM [pickMed_rec] where account=@c2"
   InsertCommand="insert into [pickMed_rec]( pickMed_time, med_name, med_res,pic,account,pickMed_recNum) values(@pickMed_time,@med_name,@med_res,@pic,@account,@pickMed_recNum) "
                 UpdateCommand="Update[pickMed_rec] set 
                pickMed_time=@pickMed_time,
              med_name=@med_name,
             med_res=@med_res,
            pic=@pic,
              pickMed_recNum=@pickMed_recNum
             
         where  account=@account"
            DeleteCommand="delete from [pickMed_rec] where  account=@account"
                >
                <DeleteParameters>
                    <asp:Parameter Name="account" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="pickMed_time" />
                    <asp:Parameter Name="med_name" />
                    <asp:Parameter Name="med_res" />
                    <asp:Parameter Name="pic" />
                    <asp:Parameter Name="account" />
                    <asp:Parameter Name="pickMed_recNum" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="pickMed_time" />
                    <asp:Parameter Name="med_name" />
                    <asp:Parameter Name="med_res" />
                    <asp:Parameter Name="pic" />
                    <asp:Parameter Name="pickMed_recNum" />
                    <asp:Parameter Name="account" />
                </UpdateParameters>
                   <SelectParameters>
                                        <asp:SessionParameter Name="c2" SessionField="user" />
                                    </SelectParameters>
            </asp:SqlDataSource>
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