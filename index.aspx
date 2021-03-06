﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/homecare_style.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $('.form-group').addClass('col-lg-offset-4 col-lg-4 col-md-offset-4 col-md-4 col-sm-offset-4 col-sm-4');            
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
      

        <div class="col-xs-12 jumbotron text-center">
            <span class="h3">HomeCare後台管理系統</span>
        </div>
    <div class="container">
     <div class="form-group col-lg-12">
                    <label for="txtTel">帳號</label>
                    <asp:TextBox ID="txtname" runat="server" Text="qaz"></asp:TextBox>
                </div>                
                <div class="form-group col-lg-6">
                    <label for="txtPassword">密碼</label>
                    <asp:TextBox ID="txtPassword" runat="server" Text="qaz" TextMode="Password"  ></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:LinkButton ID="btnLogin" runat="server" CssClass="btn btn-success btn-lg btn-block" OnClick="btnLogin_Click">登入</asp:LinkButton>
                    <!--2 Button之間間隔-->
                    <%--<span class="col-md-offset-12 col-sm-offset-12 col-xs-offset-12"></span>--%>
                    
                </div>
          <%--<div class="form-group"> //管理介面不需有註冊選項
                    <a href="managerRegister.aspx" class="btn btn-danger btn-lg">
                        <span class="glyphicon glyphicon-home" aria-hidden="true"></span> &nbsp;&nbsp;註冊
                    </a>
                </div>--%>
    </div>
        <footer class="myfooter" style="position: absolute; bottom: 0; width: 100%; background-color: #f5f5f5;text-align:center;">
            <div class="container">
        <p class="text-muted">2017 HomeCare</p>
      </div>
    </footer>
    </form>
     <script>
         $('input[type="text"]').addClass('form-control').attr('autofocus');
         $(':password').addClass('form-control').attr('autofocus');
    </script>

</body>
</html>