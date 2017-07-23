<%@ Page Language="C#" AutoEventWireup="true" CodeFile="takeMed_rec.aspx.cs" Inherits="takeMed_rec" %>

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
                     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="pickMed_recNum" DataSourceID="SqlDataSource2" CssClass="table table-bordered table-striped table-hover">
            <Columns>
                <asp:BoundField DataField="pickMed_time" HeaderText=" 領藥日期" SortExpression="pickMed_time" />
                <asp:BoundField DataField="med_name" HeaderText="藥物名稱" SortExpression="med_name" />
                <asp:BoundField DataField="med_res" HeaderText="藥物來源" SortExpression="med_res" />
                <asp:BoundField DataField="pic" HeaderText="圖片" SortExpression="pic" />
                <asp:BoundField DataField="account" HeaderText="帳號" SortExpression="account" />
                <asp:BoundField DataField="pickMed_recNum" HeaderText="領藥紀錄編號" ReadOnly="True" SortExpression="pickMed_recNum" />
               
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" 
            SelectCommand="SELECT * FROM [pickMed_rec] where account=@c2"
            InsertCommand    ="insert into [pickMed_rec]( pickMed_time, med_name, med_res,pic,account,pickMed_recNum) values(@pickMed_time,@med_name,@med_res,@pic,@account,@pickMed_recNum) "
                 UpdateCommand="Update[pickMed_rec] set 
                pickMed_time=@pickMed_time,
              med_name=@med_name,
             med_res=@med_res,
            pic=@pic,
              pickMed_recNum=@pickMed_recNum
             
         where  account=@account"
            DeleteCommand="delete from [pickMed_rec] where  account=@account">
        <SelectParameters>
                                        <asp:SessionParameter Name="c2" SessionField="user" />
                                    </SelectParameters>
      
  </asp:SqlDataSource>
           
     

        <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="takeMed_recNum" DataSourceID="SqlDataSource4" AllowPaging="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateInsertButton="True" DefaultMode="Edit" CssClass="table table-bordered table-striped table-hover">
            <Fields>
                <asp:BoundField DataField="takeMed_recNum" HeaderText="用藥紀錄編號" ReadOnly="True" SortExpression="takeMed_recNum" />
                <asp:BoundField DataField="date" HeaderText="日期" SortExpression="date" />
                <asp:BoundField DataField="med_name" HeaderText="藥物名稱" SortExpression="med_name" />
                <asp:BoundField DataField="med_amount" HeaderText="藥量" SortExpression="med_amount" />
                <asp:BoundField DataField="med_time" HeaderText="服藥時間" SortExpression="med_time" />
           
                <asp:BoundField DataField="pickMed_recNum" HeaderText=" 領藥紀錄編號" SortExpression="pickMed_recNum" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" SelectCommand="SELECT * FROM [takeMed_rec] where [pickMed_recNum]=@good2"
             InsertCommand="insert into [takeMed_rec](takeMed_recNum, date, med_name, med_amount,med_time,pickMed_recNum) values(@takeMed_recNum,@date,@med_name,@med_amount,@med_time,@pickMed_recNum) "
                UpdateCommand="Update[takeMed_rec] set 
                takeMed_recNum=@takeMed_recNum,
             date=@date,
       
             med_name=@med_name,
              med_amount=@med_amount,
             med_time=@med_time,
                pickMed_recNum=@pickMed_recNum
         where  takeMed_recNum=@takeMed_recNum"
            DeleteCommand="delete from [takeMed_rec] where  takeMed_recNum=@takeMed_recNum">

              <SelectParameters>
                <asp:ControlParameter  ControlID="GridView1" Name ="good2"/>
            </SelectParameters>
        </asp:SqlDataSource>
                    <%--<asp:FormView ID="FormView1" runat="server" DataKeyNames="takeMed_recNum" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped table-hover" AllowPaging="true">
                <EditItemTemplate>
            
                    用藥紀錄編號:
                    <asp:Label ID="takeMed_recNumLabel1" runat="server" Text='<%# Eval("takeMed_recNum") %>' />
                    <br />
                    日期:
                    <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date","{0:d}") %>' />
                    <br />
                    藥物名稱:
                    <asp:TextBox ID="med_nameTextBox" runat="server" Text='<%# Bind("med_name") %>' />
                    <br />
                    藥量:
                    <asp:TextBox ID="med_amountTextBox" runat="server" Text='<%# Bind("med_amount") %>' />
                    <br />
                    服藥時間:
                    <asp:TextBox ID="med_timeTextBox" runat="server" Text='<%# Bind("med_time") %>' />
                    <br />
                    領藥紀錄編號:
                    <asp:TextBox ID="pickMed_recNumTextBox" runat="server" Text='<%# Bind("pickMed_recNum") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" CssClass="btn btn-warning"/>
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning"/>
                     <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" CssClass="btn btn-warning" />
                </EditItemTemplate>
                <InsertItemTemplate>
       
                    用藥紀錄編號:
                    <asp:TextBox ID="takeMed_recNumTextBox" runat="server" Text='<%# Bind("takeMed_recNum") %>' />
                    <br />
                    日期:
                    <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                    <br />
                    藥物名稱:
                    <asp:TextBox ID="med_nameTextBox" runat="server" Text='<%# Bind("med_name") %>' />
                    <br />
                    藥量:
                    <asp:TextBox ID="med_amountTextBox" runat="server" Text='<%# Bind("med_amount") %>' />
                    <br />
                    服藥時間:
                    <asp:TextBox ID="med_timeTextBox" runat="server" Text='<%# Bind("med_time") %>' />
                    <br />
                    領藥紀錄編號:
                    <asp:TextBox ID="pickMed_recNumTextBox" runat="server" Text='<%# Bind("pickMed_recNum") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" CssClass="btn btn-warning" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning"/>
                </InsertItemTemplate>
                <ItemTemplate>
              
                    用藥紀錄編號:
                    <asp:Label ID="takeMed_recNumLabel" runat="server" Text='<%# Eval("takeMed_recNum") %>' />
                    <br />
                    日期:
                    <asp:Label ID="dateLabel" runat="server" Text='<%# Bind("date") %>' />
                    <br />
                    藥物名稱:
                    <asp:Label ID="med_nameLabel" runat="server" Text='<%# Bind("med_name") %>' />
                    <br />
                    藥量:
                    <asp:Label ID="med_amountLabel" runat="server" Text='<%# Bind("med_amount") %>' />
                    <br />
                    服藥時間:
                    <asp:Label ID="med_timeLabel" runat="server" Text='<%# Bind("med_time") %>' />
                    <br />
                    領藥紀錄編號:
                    <asp:Label ID="pickMed_recNumLabel" runat="server" Text='<%# Bind("pickMed_recNum") %>' />
                    <br />
                      
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Edit" CssClass="btn btn-warning">修改</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton5" runat="server" CommandName="New" CssClass="btn btn-warning">新增</asp:LinkButton>
                       
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" SelectCommand="SELECT * FROM [takeMed_rec]"
                  InsertCommand="insert into [takeMed_rec](takeMed_recNum, date, med_name, med_amount,med_time,pickMed_recNum) values(@takeMed_recNum,@date,@med_name,@med_amount,@med_time,@pickMed_recNum) "
                UpdateCommand="Update[takeMed_rec] set 
                takeMed_recNum=@takeMed_recNum,
             date=@ date,
             location=@location,
             med_name=@med_name,
              med_amount=@med_amount,
             med_time=@med_time,
                pickMed_recNum=@pickMed_recNum
         where  account=@ account"
            DeleteCommand="delete from [takeMed_rec] where  account=@ account"
                >
                <DeleteParameters>
                    <asp:Parameter />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="takeMed_recNum" />
                    <asp:Parameter Name="date" />
                    <asp:Parameter Name="med_name" />
                    <asp:Parameter Name="med_amount" />
                    <asp:Parameter Name="med_time" />
                    <asp:Parameter Name="pickMed_recNum" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="takeMed_recNum" />
                    <asp:Parameter />
                    <asp:Parameter Name="location" />
                    <asp:Parameter Name="med_name" />
                    <asp:Parameter Name="med_amount" />
                    <asp:Parameter Name="med_time" />
                    <asp:Parameter Name="pickMed_recNum" />
                </UpdateParameters>
            </asp:SqlDataSource>--%>
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
