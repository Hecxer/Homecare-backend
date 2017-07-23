<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width" />
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
       
</head>
<body>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" 
         SelectCommand="SELECT * FROM [user]" InsertCommand="insert into [user](account,password,name,gender,birthday,blood_type,email) values(@id,@password,@name,@gender,@birth,@bloodtype,@email)" > 
         <InsertParameters>
            <asp:ControlParameter ControlID="txtID" Name="id" Type="String" />
            <asp:ControlParameter ControlID="txtPassword" Name="password" Type="String" />
            <asp:ControlParameter ControlID="txtName" Name="name" Type="String" />
            <asp:ControlParameter ControlID="txtgender" Name="gender" Type="String" />
            <asp:ControlParameter ControlID="txtBirth" Name="birth" Type="String" />
            <asp:ControlParameter ControlID="txtbloodtype" Name="bloodtype" Type="String" />
              <asp:ControlParameter ControlID="txtEmail" Name="email" Type="String" />
        </InsertParameters>

    </asp:SqlDataSource>
    <form id="form1" runat="server">
        
        <div id="wrapper">
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
                    <div class="row">
                    <div class="form-group col-md-4">
                        <label for="txtID">帳號</label>
                        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="IDRequired" ControlToValidate="txtID" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>
             <div class="row">
                    <div class="form-group col-md-4">
                        <label for="txtPassword">密碼</label>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" ControlToValidate="txtPassword" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="txtPwd2">確認密碼</label>
                        <asp:TextBox ID="txtPwd2" runat="server" TextMode="Password"></asp:TextBox>    
                      <%--  <asp:RequiredFieldValidator ID="ConfirmPwd" ControlToValidate="txtPwd2" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="請確認密碼"></asp:RequiredFieldValidator>   --%>                 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPwd2" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtPassword" ControlToCompare="txtPwd2" runat="server" ErrorMessage="密碼必須相同"></asp:CompareValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="txtName">姓名</label>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="NameRequired" ControlToValidate="txtName" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="txtgender">性別</label>
                        <asp:TextBox ID="txtgender" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="TelRequired" ControlToValidate="txtgender" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>
                
                
               <div class="row">
                    <div class="form-group col-md-4">
                        <label for="txtBirth">生日</label>
                        <asp:TextBox ID="txtBirth" placeholder="請選擇生日" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="BirthRequired" ControlToValidate="txtBirth" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="row">
                    <div class="form-group col-md-4">
                        <label for="txtbloodtype">血型</label>
                        <asp:TextBox ID="txtbloodtype" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtbloodtype" runat="server" ForeColor="white" CssClass="label label-danger"  ErrorMessage ="必填欄位"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="txtEmail">Email</label>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="MailRequired" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>
                    </div>
                </div>
               
                <div class="row" >
                    <div class="form-group col-md-2">
                        <asp:LinkButton ID="btnSend" runat="server" CssClass="btn btn-success" OnClick="btnSend_Click">
                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> &nbsp;&nbsp;註冊會員
                        </asp:LinkButton>
                        </div>
                     <div class="form-group col-md-2">   
                        <a href="userLogin.aspx" class="btn btn-default" >
                            <span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;&nbsp;回到首頁                        
                        </a>
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
    <script>        
        $('input[type="text"]').addClass('form-control');
        $(':password').addClass('form-control');
        $('input[type="date"]').addClass('form-control');
    </script>
</body>
</html>
