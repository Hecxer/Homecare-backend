<%@ Page Language="C#" AutoEventWireup="true" CodeFile="h_checkup_nMeaning.aspx.cs" Inherits="h_checkup_nMeaning" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>健檢名詞意義</title>
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
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="serial_num,h_checkup_nMeaning_num" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped table-hover">
                        <EditItemTemplate>
                            資料來源分類編號:
                    <asp:Label ID="serial_numLabel1" runat="server" Text='<%# Eval("serial_num") %>' />
                            <br />
                            體檢名詞意義編號:
                    <asp:Label ID="h_checkup_nMeaning_numLabel1" runat="server" Text='<%# Eval("h_checkup_nMeaning_num") %>' />
                            <br />
                            體檢項目名稱:
                    <asp:TextBox ID="h_checkup_itemTextBox" runat="server" Text='<%# Bind("h_checkup_item") %>' />
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="h_checkup_itemTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>     
                            <br />
                            參考值:
                    <asp:TextBox ID="reference_valTextBox" runat="server" Text='<%# Bind("reference_val") %>' />
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="reference_valTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>     
                            <br />
                            檢查意義:
                    <asp:TextBox ID="meaningTextBox" runat="server" Text='<%# Bind("meaning") %>' />
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="meaningTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>     
                            <br />
                            資料來源名稱:
                    <asp:TextBox ID="res_nameTextBox" runat="server" Text='<%# Bind("res_name") %>' />
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="res_nameTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>     
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" CssClass="btn btn-warning" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning" />
                            <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" CssClass="btn btn-warning" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            資料來源分類編號:
                    <asp:TextBox ID="serial_numTextBox" runat="server" Text='<%# Bind("serial_num") %>' />
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="serial_numTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>     
                            <br />
                            體檢名詞意義編號:
                    <asp:TextBox ID="h_checkup_nMeaning_numTextBox" runat="server" Text='<%# Bind("h_checkup_nMeaning_num") %>' />
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="h_checkup_nMeaning_numTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>     
                            <br />
                            體檢項目名稱:
                    <asp:TextBox ID="h_checkup_itemTextBox" runat="server" Text='<%# Bind("h_checkup_item") %>' />
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="h_checkup_itemTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>     
                            <br />
                            參考值:
                    <asp:TextBox ID="reference_valTextBox" runat="server" Text='<%# Bind("reference_val") %>' />
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="reference_valTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>     
                            <br />
                            檢查意義:
                    <asp:TextBox ID="meaningTextBox" runat="server" Text='<%# Bind("meaning") %>' />
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="meaningTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>     
                            <br />
                            資料來源名稱:
                    <asp:TextBox ID="res_nameTextBox" runat="server" Text='<%# Bind("res_name") %>' />
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="res_nameTextBox" Display="Dynamic" ForeColor="white" CssClass="label label-danger" runat="server" ErrorMessage="必填欄位"></asp:RequiredFieldValidator>     
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" CssClass="btn btn-warning" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            資料來源分類編號:
                    <asp:Label ID="serial_numLabel" runat="server" Text='<%# Eval("serial_num") %>' />
                            <br />
                            體檢名詞意義編號:
                    <asp:Label ID="h_checkup_nMeaning_numLabel" runat="server" Text='<%# Eval("h_checkup_nMeaning_num") %>' />
                            <br />
                            體檢項目名稱:
                    <asp:Label ID="h_checkup_itemLabel" runat="server" Text='<%# Bind("h_checkup_item") %>' />
                            <br />
                            參考值:
                    <asp:Label ID="reference_valLabel" runat="server" Text='<%# Bind("reference_val") %>' />
                            <br />
                            檢查意義:
                    <asp:Label ID="meaningLabel" runat="server" Text='<%# Bind("meaning") %>' />
                            <br />
                            資料來源名稱:
                    <asp:Label ID="res_nameLabel" runat="server" Text='<%# Bind("res_name") %>' />
                            <br />

                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Edit" CssClass="btn btn-warning">修改</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton5" runat="server" CommandName="New" CssClass="btn btn-warning">新增</asp:LinkButton>

                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>"
                        SelectCommand="SELECT * FROM [h_checkup_nMeaning]"
                        InsertCommand="insert into [h_checkup_nMeaning](serial_num, h_checkup_nMeaning_num,  h_checkup_item,reference_val, meaning,res_name) values(@serial_num, @h_checkup_nMeaning_num,  @h_checkup_item,@reference_val, @meaning,@res_name) "
                        UpdateCommand="Update[h_checkup_nMeaning] set 
                reference_val=@reference_val,
                meaning=@meaning,
              res_name=@res_name
         where serial_num=@serial_num and h_checkup_nMeaning_num=@h_checkup_nMeaning_num"
                        DeleteCommand="delete from [h_checkup_nMeaning] where serial_num=@serial_num and h_checkup_nMeaning_num=@h_checkup_nMeaning_num">
                        <DeleteParameters>
                            <asp:Parameter Name="serial_num" />
                            <asp:Parameter Name="h_checkup_nMeaning_num" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="serial_num" />
                            <asp:Parameter Name="h_checkup_nMeaning_num" />
                            <asp:Parameter Name="h_checkup_item" />
                            <asp:Parameter Name="reference_val" />
                            <asp:Parameter Name="meaning" />
                            <asp:Parameter Name="res_name" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="reference_val" />
                            <asp:Parameter Name="meaning" />
                            <asp:Parameter Name="res_name" />
                            <asp:Parameter Name="serial_num" />
                            <asp:Parameter Name="h_checkup_nMeaning_num" />
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
