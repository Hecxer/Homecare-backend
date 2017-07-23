<%@ Page Language="C#" AutoEventWireup="true" CodeFile="med_rec.aspx.cs" Inherits="med_rec" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
       <title></title>

    <link href="Homecare_style.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $('.form-group').addClass('col-lg-offset-4 col-lg-4 col-md-offset-4 col-md-4 col-sm-offset-4 col-sm-4');            
        });
    </script>
     <style>
        #btn1{
            float:right;
        }
         #FormView1{
            margin:auto;
        }
    </style>
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
                        <%--<li>
                            <asp:LinkButton ID="LinkButton1" runat="server" Text=" <i aria-hidden='true' class='fa fa-sign-out fa-fw'></i>" CssClass="fa fa-sign-out fa-fw">登出</asp:LinkButton>
                        </li>--%>
<%--                        <li>
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LogoutBtn_Click" CssClass="btn">登出</asp:LinkButton>
                        </li>--%>
                        <li class="divider"></li>
                        
                       <%-- <asp:LinkButton ID="btnExcluir" runat="server" Text="<i aria-hidden='true' class='fa fa-sign-out fa-fw'></i>" CssClass="btn btn-danger">登出</asp:LinkButton>--%>
                        
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
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="med__recNum" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped table-hover" AllowPaging="true"  >
            <EditItemTemplate>
          
                看診紀錄編號:
                <asp:Label ID="med_recNumLabel1" runat="server" Text='<%# Eval("med__recNum") %>' />
                <br />
                日期:
                <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date","{0:d}") %>' />
                <asp:RequiredFieldValidator ID="PasswordRequired" ControlToValidate="dateTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                <br />
                就醫地點:
                <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="locationTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                <br />
                科別名稱:
                <asp:TextBox ID="div_nameTextBox" runat="server" Text='<%# Bind("div_name") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="div_nameTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                <br />
                醫生姓名:
                <asp:TextBox ID="doc_nameTextBox" runat="server" Text='<%# Bind("doc_name") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="doc_nameTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                <br />
                看診內容:
                <asp:TextBox ID="contentTextBox" runat="server" Text='<%# Bind("content") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="contentTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                <br />
                帳號:
                <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="accountTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" CssClass="btn btn-warning"/>
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning"/>
                 <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" CssClass="btn btn-warning"/>
            </EditItemTemplate>
            <InsertItemTemplate>
              
                看診紀錄編號:
                <asp:TextBox ID="med_recNumTextBox" runat="server" Text='<%# Bind("med__recNum") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="med_recNumTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                <br />
                日期:
                <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="dateTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                <br />
                就醫地點:
                <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="locationTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                <br />
                科別名稱:
                <asp:TextBox ID="div_nameTextBox" runat="server" Text='<%# Bind("div_name") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="div_nameTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                <br />
                醫生姓名:
                <asp:TextBox ID="doc_nameTextBox" runat="server" Text='<%# Bind("doc_name") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="doc_nameTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                <br />
                看診內容:
                <asp:TextBox ID="contentTextBox" runat="server" Text='<%# Bind("content") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="contentTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                <br />
                帳號:
                <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="accountTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" CssClass="btn btn-warning"/>
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning"/>
            </InsertItemTemplate>
            <ItemTemplate>
     
                看診紀錄編號:
                <asp:Label ID="med_recNumLabel" runat="server" Text='<%# Eval("med__recNum") %>' />
                <br />
                日期:
                <asp:Label ID="dateLabel" runat="server" Text='<%# Bind("date") %>' />
                <br />
                就醫地點:
                <asp:Label ID="locationLabel" runat="server" Text='<%# Bind("location") %>' />
                <br />

                科別名稱:
                <asp:Label ID="div_nameLabel" runat="server" Text='<%# Bind("div_name") %>' />
                <br />
                醫生姓名:
                <asp:Label ID="doc_nameLabel" runat="server" Text='<%# Bind("doc_name") %>' />
                <br />
                看診內容:
                <asp:Label ID="contentLabel" runat="server" Text='<%# Bind("content") %>' />
                <br />
                帳號:
                <asp:Label ID="accountLabel" runat="server" Text='<%# Bind("account") %>' />
                <br />
                
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Edit" CssClass="btn btn-warning">修改</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton5" runat="server" CommandName="New" CssClass="btn btn-warning">新增</asp:LinkButton>
                       
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" SelectCommand="SELECT * FROM [med_rec] where account=@a2"
            InsertCommand="insert into [med_rec]( med__recNum, date,location,div_name,doc_name,content, account) values(@med__recNum,@date,@location,@div_name,@doc_name,@content,@account) "
              UpdateCommand="Update[med_rec] set 
                 med__recNum=@med__recNum,
             date=@ date,
             location=@location,
            div_name=@ div_name,
             doc_name=@doc_name,
             content=@content
         where  account=@ account"
            DeleteCommand="delete from [med_rec] where  account=@ account">
            <DeleteParameters>
                <asp:Parameter />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="med__recNum" />
                <asp:Parameter Name="date" />
                <asp:Parameter Name="location" />
                <asp:Parameter Name="div_name" />
                <asp:Parameter Name="doc_name" />
                <asp:Parameter Name="content" />
                <asp:Parameter Name="account" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="med__recNum" />
                <asp:Parameter Name="date"/>
                <asp:Parameter Name="location" />
                <asp:Parameter Name="div_name" />
                <asp:Parameter Name="doc_name" />
                <asp:Parameter Name="content" />
                <asp:Parameter Name="account" />
            </UpdateParameters>
    
                     <SelectParameters>
                                        <asp:SessionParameter Name="a2" SessionField="user" />
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
