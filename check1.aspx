<%@ Page Language="C#" AutoEventWireup="true" CodeFile="check1.aspx.cs" Inherits="check1" %>

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
    <form id="form2" runat="server">
           <header class="header ">
      <div class="container" >
        <div class="text-muted" >
            <nav class="navbar navbar-default " style="background-color:#ffd800/*opacity:0.5*/">
                <div class="navbar-header" >
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <!--可用&equiv;替代-->
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a id="logo" class="navbar-brand" href="Index.aspx">check1(健檢名詞意義)</a>
                </div>
                <button id="btn1"  type="button" class="btn btn-lg btn1 btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"  >
              選擇<span class="caret"></span>
            </button>
            <ul class="dropdown-menu dropdown-menu-right">
                        <li><a href="Register.aspx " class="btn btn-warning" >註冊</a></li>
                 <li><a href="drawable.aspx" class="btn btn-warning">個人化圖片上傳</a></li>
                         <li><a href="health_rec.aspx" class="btn btn-warning">健康記錄</a></li>
                        <li><a href="med_rec.aspx" class="btn btn-warning">看診記錄</a></li>                 
                        <li><a href="pickMed_rec.aspx"class="btn btn-warning">領藥記錄</a></li>
                         <li><a href="med_rec.aspx"class="btn btn-warning">用藥記錄</a></li>
                        <li><a href="self-test.aspx" class="btn btn-warning">自我檢測</a></li>
                        <li><a href="h_article.aspx" class="btn btn-warning">健康文章</a></li>
                        <li><a href="h_checkup_nMeaning.aspx" class="btn btn-warning">健檢名詞意義</a></li>
                          <li><a href="check1.aspx" class="btn btn-warning">check1(健檢名詞意義)</a></li>
                        <li><a href="sysptorn_reference.aspx"class="btn btn-warning">症狀就醫參考表</a></li>
                           <li><a href="check2.aspx" class="btn btn-warning">check2(症狀就醫參考表)</a></li>
                        <li><a href="h_article.aspx" class="btn btn-warning">健康文章</a></li>
                        <li><a href="check3.aspx" class="btn btn-warning">check3(健康文章)</a></li>
                        <li><a href="division.aspx" class="btn btn-warning">就醫科別</a></li>
                        <li><a href="user_rights_assignment.aspx" class="btn btn-warning">照顧者被照顧者權限切換</a></li>
                            <li><a href="userData.aspx " class="btn btn-warning">使用者資料查看</a></li>
                            <li><a href="index.aspx" class="btn btn-warning">返迴管理者首頁</a></li>
                         <li><a href="userLogin.aspx " class="btn btn-warning">返迴使用者查尋</a></li>
                    </ul> 
                
            </nav>
        </div>
      </div>
    </header>

  
    <div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="account,serial_num,h_checkup_nMeaning_num" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                  
                account:
                <asp:Label ID="accountLabel1" runat="server" Text='<%# Eval("account") %>' />
                <br />
                serial_num:
                <asp:Label ID="serial_numLabel1" runat="server" Text='<%# Eval("serial_num") %>' />
                <br />
                h_checkup_nMeaning_num:
                <asp:Label ID="h_checkup_nMeaning_numLabel1" runat="server" Text='<%# Eval("h_checkup_nMeaning_num") %>' />
                <br />
       
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning" />
                 <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"  CssClass="btn btn-warning"/>
            </EditItemTemplate>
            <InsertItemTemplate>
          
                account:
                <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                <br />
                serial_num:
                <asp:TextBox ID="serial_numTextBox" runat="server" Text='<%# Bind("serial_num") %>' />
                <br />
                h_checkup_nMeaning_num:
                <asp:TextBox ID="h_checkup_nMeaning_numTextBox" runat="server" Text='<%# Bind("h_checkup_nMeaning_num") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" CssClass="btn btn-warning" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" CssClass="btn btn-warning" />
            </InsertItemTemplate>
            <ItemTemplate>
            
                account:
                <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
                <br />
                serial_num:
                <asp:Label ID="serial_numLabel" runat="server" Text='<%# Eval("serial_num") %>' />
                <br />
                h_checkup_nMeaning_num:
                <asp:Label ID="h_checkup_nMeaning_numLabel" runat="server" Text='<%# Eval("h_checkup_nMeaning_num") %>' />
                <br />
                  
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Edit" CssClass="btn btn-warning">修改</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton5" runat="server" CommandName="New" CssClass="btn btn-warning">新增</asp:LinkButton>
                        
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" SelectCommand="SELECT * FROM [check1]"
             InsertCommand="insert into [check1]( account, serial_num ,h_checkup_nMeaning_num) values(@account,@serial_num,@h_checkup_nMeaning_num) "
        
            DeleteCommand="delete from [check1] where  account=@ account and   serial_num=@serial_num and h_checkup_nMeaning_num=@h_checkup_nMeaning_num"
            >
            <DeleteParameters>
                <asp:Parameter />
                <asp:Parameter Name="serial_num" />
                <asp:Parameter Name="h_checkup_nMeaning_num" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="account" />
                <asp:Parameter Name="serial_num" />
                <asp:Parameter Name="h_checkup_nMeaning_num" />
            </InsertParameters>
        </asp:SqlDataSource>
   </div>
       <div class="row">
    <footer id="copyright" class="footer navbar-static-bottom">
      
          <div style="line-height: 32px; color:white;text-align: center;background-color:#ffd800;"  >
              <span ">
                  <strong><span style="font-size:16px;">Homecarestrong信箱：</span></strong> </span>
              <span style="font-size:16px;letter-spacing:1px"><a href="mailto:Homecare@gmail.com"><span style="color:white" >Homecare@gmail.com</span></a></span></div>

        <%--<span class="text-muted">Place sticky footer content here.</span>--%>
      
    </footer>
    </div>
    </form>
    <script>        
        $('input[type="text"]').addClass('form-control');
        $(':password').addClass('form-control');
        $('input[type="date"]').addClass('form-control');
    </script>
</body>
</html>
