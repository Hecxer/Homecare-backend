<%@ Page Language="C#" AutoEventWireup="true" CodeFile="symptom_reference.aspx.cs" Inherits="sysptorn_reference" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>症狀就醫參考表</title>
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
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="serial_num,symptom_reference_num" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped table-hover">
                        <EditItemTemplate>
                            資料來源分類編號:
                    <asp:Label ID="serial_numLabel1" runat="server" Text='<%# Eval("serial_num") %>' />
                            <br />
                            症狀就醫參考表編號:
                    <asp:Label ID="symptom_reference_numLabel1" runat="server" Text='<%# Eval("symptom_reference_num") %>' />
                            <br />
                            資料來源名稱:
                    <asp:TextBox ID="res_nameTextBox" runat="server" Text='<%# Bind("res_name") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="res_nameTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                            <br />
                            症狀名稱:
                    <asp:TextBox ID="sysptomTextBox" runat="server" Text='<%# Bind("sysptom") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="sysptomTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                            <br />
                            科別代號:
                    <asp:TextBox ID="div_codeTextBox" runat="server" Text='<%# Bind("div_code") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="div_codeTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" CssClass="btn btn-warning" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning" />
                            <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" CssClass="btn btn-warning" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            資料來源分類編號:
                    <asp:TextBox ID="serial_numTextBox" runat="server" Text='<%# Bind("serial_num") %>' />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="serial_numTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                            <br />
                            症狀就醫參考表編號:
                    <asp:TextBox ID="symptom_reference_numTextBox" runat="server" Text='<%# Bind("symptom_reference_num") %>' />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="symptom_reference_numTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                            <br />
                            資料來源名稱:
                    <asp:TextBox ID="res_nameTextBox" runat="server" Text='<%# Bind("res_name") %>' />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="res_nameTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                            <br />
                            症狀名稱:
                    <asp:TextBox ID="sysptomTextBox" runat="server" Text='<%# Bind("sysptom") %>' />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="sysptomTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                            <br />
                            科別代號:
                    <asp:TextBox ID="div_codeTextBox" runat="server" Text='<%# Bind("div_code") %>' />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="div_codeTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>                        
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" CssClass="btn btn-warning" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            資料來源分類編號:
                    <asp:Label ID="serial_numLabel" runat="server" Text='<%# Eval("serial_num") %>' />
                            <br />
                            症狀就醫參考表編號:
                    <asp:Label ID="symptom_reference_numLabel" runat="server" Text='<%# Eval("symptom_reference_num") %>' />
                            <br />
                            資料來源名稱:
                    <asp:Label ID="res_nameLabel" runat="server" Text='<%# Bind("res_name") %>' />
                            <br />
                            症狀名稱:
                    <asp:Label ID="sysptomLabel" runat="server" Text='<%# Bind("sysptom") %>' />
                            <br />
                            科別代號:
                    <asp:Label ID="div_codeLabel" runat="server" Text='<%# Bind("div_code") %>' />
                            <br />

                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Edit" CssClass="btn btn-warning">修改</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton5" runat="server" CommandName="New" CssClass="btn btn-warning">新增</asp:LinkButton>

                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" SelectCommand="SELECT * FROM [symptom_reference]"
                        InsertCommand="insert into [symptom_reference](serial_num,symptom_reference_num, res_name,sysptom, div_code) values(@serial_num,@symptom_reference_num,@res_name,@sysptom,@div_code) "
                        UpdateCommand="Update[symptom_reference] set 
                res_name=@res_name,
                sysptom=@sysptom,
               div_code=@div_code
         where serial_num=@serial_num and symptom_reference_num=@symptom_reference_num"
                        DeleteCommand="delete from [symptom_reference] where serial_num=@serial_num and symptom_reference_num=@symptom_reference_num ">
                        <DeleteParameters>
                            <asp:Parameter Name="serial_num" />
                            <asp:Parameter Name="symptom_reference_num" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="serial_num" />
                            <asp:Parameter Name="symptom_reference_num" />
                            <asp:Parameter Name="res_name" />
                            <asp:Parameter Name="sysptom" />
                            <asp:Parameter Name="div_code" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="res_name" />
                            <asp:Parameter Name="sysptom" />
                            <asp:Parameter Name="div_code" />
                            <asp:Parameter Name="serial_num" />
                            <asp:Parameter Name="symptom_reference_num" />
                        </UpdateParameters>
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
