<%@ Page Language="C#" AutoEventWireup="true" CodeFile="managerRegister.aspx.cs" Inherits="managerRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title></title>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <link href="Homecare.css" rel="stylesheet" />
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
    <form id="form1" runat="server">
    <div class="col-xs-12 jumbotron text-center">
                <span class="h3">管理者註冊</span>
        </div><div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="manager_account" DataSourceID="SqlDataSource1" DefaultMode="Insert" >
            <EditItemTemplate>
                管理者帳號:
                <asp:Label ID="manager_accountLabel1" runat="server" Text='<%# Eval("manager_account") %>' />
                <br />
                管理者密碼:
                <asp:TextBox ID="manager_passwordTextBox" runat="server" Text='<%# Bind("manager_password") %>' />
                <br />
                管理者名稱:
                <asp:TextBox ID="manager_nameTextBox" runat="server" Text='<%# Bind("manager_name") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                管理者帳號:
                <asp:TextBox ID="manager_accountTextBox" runat="server" Text='<%# Bind("manager_account") %>' />
                <br />
                管理者密碼:
                <asp:TextBox ID="manager_passwordTextBox" runat="server" Text='<%# Bind("manager_password") %>' />
                <br />
                管理者名稱:
                <asp:TextBox ID="manager_nameTextBox" runat="server" Text='<%# Bind("manager_name") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="註冊"  CssClass="btn btn-success btn-lg" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" OnClick="InsertCancelButton_Click" CommandName="Cancel" Text="取消" CssClass="btn btn-default btn-lg" />
            </InsertItemTemplate>
            <ItemTemplate>
                管理者帳號:
                <asp:Label ID="manager_accountLabel" runat="server" Text='<%# Eval("manager_account") %>' />
                <br />
                管理者密碼:
                <asp:Label ID="manager_passwordLabel" runat="server" Text='<%# Bind("manager_password") %>' />
                <br />
                管理者名稱:
                <asp:Label ID="manager_nameLabel" runat="server" Text='<%# Bind("manager_name") %>' />
                <br />

            </ItemTemplate>
                </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" SelectCommand="SELECT * FROM [manager]"
             InsertCommand="insert into [manager] values(@manager_account,@manager_password,@manager_name) "
            ></asp:SqlDataSource>
   </div>
    <div>
     
      <%--          <div class="form-group">
                    <asp:LinkButton ID="btnLogin" runat="server" CssClass="btn btn-primary btn-lg" OnClick="btnLogin_Click">
                        <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> &nbsp;&nbsp;登入
                    </asp:LinkButton>
                   </div>
          <div class="form-group">
                    <a href="managerRegister.aspx" class="btn btn-danger btn-lg">
                        <span class="glyphicon glyphicon-home" aria-hidden="true"></span> &nbsp;&nbsp;註冊
                    </a>
                </div>--%>
    </div>
    </form>
     <script>
        $('input[type="text"]').addClass('form-control');
        $(':password').addClass('form-control');
    </script>

</body>
</html>