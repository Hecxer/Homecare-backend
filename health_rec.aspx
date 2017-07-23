<%@ Page Language="C#" AutoEventWireup="true" CodeFile="health_rec.aspx.cs" Inherits="health_rec" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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

    <style>
        #btn1 {
            float: right;
        }

        #FormView1 {
            margin: auto;
        }
    </style>
    <%-- <script>
        $(document).ready(function () {
            $('.form-group').addClass('col-lg-offset-4 col-lg-4 col-md-offset-4 col-md-4 col-sm-offset-4 col-sm-4');            
        });
    </script>--%>
</head>
<body>

    <form id="form1" runat="server">

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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>"
                SelectCommand="SELECT * FROM [health_rec] where account=@e2"
                InsertCommand="insert into [health_rec](health_recNum,date,height,weight,temperature,blood_gluc,systolic_bp,diastolic_bp,pulse,account) values(@health_recNum,@date,@height,@weight,@temperature,@blood_gluc,@systolic_bp,@diastolic_bp,@pulse,@account) "
                UpdateCommand="Update [health_rec] set date=@date,
            height=@height, 
            weight=@weight,
            temperature=@temperature, 
            blood_gluc=@blood_gluc,
            systolic_bp=@systolic_bp,
            diastolic_bp=@diastolic_bp,
            pulse=@pulse, account=@account where  health_recNum=@health_recNum"
                DeleteCommand="delete from [health_rec] where accunout=@accunout">
                           <SelectParameters>
                                        <asp:SessionParameter Name="e2" SessionField="user" />
                                    </SelectParameters>   

                <DeleteParameters>
                    <asp:Parameter Name="accunout" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="health_recNum" />
                    <asp:Parameter Name="date" />
                    <asp:Parameter Name="height" />
                    <asp:Parameter Name="weight" />
                    <asp:Parameter Name="temperature" />
                    <asp:Parameter Name="blood_gluc" />
                    <asp:Parameter Name="systolic_bp" />
                    <asp:Parameter Name="diastolic_bp" />
                    <asp:Parameter Name="pulse" />
                    <asp:Parameter Name="account" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="health_recNum" />
                    <asp:Parameter Name="date" />
                    <asp:Parameter Name="height" />
                    <asp:Parameter Name="weight" />
                    <asp:Parameter Name="temperature" />
                    <asp:Parameter Name="blood_gluc" />
                    <asp:Parameter Name="systolic_bp" />
                    <asp:Parameter Name="diastolic_bp" />
                    <asp:Parameter Name="pulse" />
                    <asp:Parameter Name="account" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="health_recNum" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped table-hover" AllowPaging="true">
                <EditItemTemplate>
                    健康記錄編號:
                <asp:Label ID="health_recNumLabel1" runat="server" Text='<%# Eval("health_recNum") %>' />
                    <br />
                    日期:
                <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date","{0:d}") %>' />
                     <asp:RequiredFieldValidator ID="PasswordRequired" ControlToValidate="dateTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    身高:
                <asp:TextBox ID="heightTextBox" runat="server" Text='<%# Bind("height") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="heightTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    體重:
                <asp:TextBox ID="weightTextBox" runat="server" Text='<%# Bind("weight") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="weightTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    BMI:
                <asp:TextBox ID="BMITextBox" runat="server" Text='<%# Bind("BMI") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="BMITextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    體溫:
                <asp:TextBox ID="temperatureTextBox" runat="server" Text='<%# Bind("temperature") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="temperatureTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    血糖:
                <asp:TextBox ID="blood_glucTextBox" runat="server" Text='<%# Bind("blood_gluc") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="blood_glucTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    收縮壓:
                <asp:TextBox ID="systolic_bpTextBox" runat="server" Text='<%# Bind("systolic_bp") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="systolic_bpTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    舒張壓:
                <asp:TextBox ID="diastolic_bpTextBox" runat="server" Text='<%# Bind("diastolic_bp") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="diastolic_bpTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    脈搏:
                <asp:TextBox ID="pulseTextBox" runat="server" Text='<%# Bind("pulse") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="pulseTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    帳號:
                <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="accountTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" CssClass="btn btn-warning" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning" />
                    <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" CssClass="btn btn-warning" />

                </EditItemTemplate>
                <InsertItemTemplate>
                    健康記錄編號:
                <asp:TextBox ID="health_recNumTextBox" runat="server" Text='<%# Bind("health_recNum") %>' />
                     <asp:RequiredFieldValidator ID="PasswordRequired" ControlToValidate="health_recNumTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    日期:
                <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="dateTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    身高:
                <asp:TextBox ID="heightTextBox" runat="server" Text='<%# Bind("height") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="heightTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    體重:
                <asp:TextBox ID="weightTextBox" runat="server" Text='<%# Bind("weight") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="weightTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    <%-- BMI:
                <asp:TextBox ID="BMITextBox" runat="server" Text='<%# Bind("BMI") %>' />
                <br />--%>
                體溫:
                <asp:TextBox ID="temperatureTextBox" runat="server" Text='<%# Bind("temperature") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="temperatureTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    血糖:
                <asp:TextBox ID="blood_glucTextBox" runat="server" Text='<%# Bind("blood_gluc") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="blood_glucTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    收縮壓:
                <asp:TextBox ID="systolic_bpTextBox" runat="server" Text='<%# Bind("systolic_bp") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="systolic_bpTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    舒張壓:
                <asp:TextBox ID="diastolic_bpTextBox" runat="server" Text='<%# Bind("diastolic_bp") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="diastolic_bpTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    脈搏:
                <asp:TextBox ID="pulseTextBox" runat="server" Text='<%# Bind("pulse") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="pulseTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    帳號:
                <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ControlToValidate="accountTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" CssClass="btn btn-warning" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning" />
                </InsertItemTemplate>
                <ItemTemplate>
                    健康記錄編號:
                <asp:Label ID="health_recNumLabel" runat="server" Text='<%# Eval("health_recNum") %>' />
                    <br />
                    日期:
                <asp:Label ID="dateLabel" runat="server" Text='<%# Bind("date") %>' />
                    <br />
                    身高:
                <asp:Label ID="heightLabel" runat="server" Text='<%# Bind("height") %>' />
                    <br />
                    體重:
                <asp:Label ID="weightLabel" runat="server" Text='<%# Bind("weight") %>' />
                    <br />
                    BMI:
                <asp:Label ID="BMILabel" runat="server" Text='<%# Bind("BMI") %>' />
                    <br />
                    體溫:
                <asp:Label ID="temperatureLabel" runat="server" Text='<%# Bind("temperature") %>' />
                    <br />
                    血糖:
                <asp:Label ID="blood_glucLabel" runat="server" Text='<%# Bind("blood_gluc") %>' />
                    <br />
                    收縮壓:
                <asp:Label ID="systolic_bpLabel" runat="server" Text='<%# Bind("systolic_bp") %>' />
                    <br />
                    舒張壓:
                <asp:Label ID="diastolic_bpLabel" runat="server" Text='<%# Bind("diastolic_bp") %>' />
                    <br />
                    脈搏:
                <asp:Label ID="pulseLabel" runat="server" Text='<%# Bind("pulse") %>' />
                    <br />
                    帳號:
                <asp:Label ID="accountLabel" runat="server" Text='<%# Bind("account") %>' />
                    <br />

                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Edit" CssClass="btn btn-warning">修改</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton5" runat="server" CommandName="New" CssClass="btn btn-warning">新增</asp:LinkButton>

                </ItemTemplate>
            </asp:FormView>
                </div>
            </div>
            



            <%--      <div class="row">
                    <div class="form-group">
                        <asp:LinkButton ID="btnSend" runat="server" CssClass="btn btn-primary btn-lg" >
                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> &nbsp;&nbsp;確認資料
                        </asp:LinkButton>
                        </div>
                     <div class="form-group">   
                        <a href="Index.aspx" class="btn btn-danger btn-lg">
                            <span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;&nbsp;回到首頁                        
                        </a>
                         </div>
                    </div>
                </div>--%>
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

