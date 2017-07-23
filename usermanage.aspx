<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usermanage.aspx.cs" Inherits="usermanage" %>

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
         #FormView1,#RadioButtonList1{
            margin:auto;
        }
           #Image1 {
            width: 800px;
            height: 450px;
            border: 2px solid #1dd;
            vertical-align: middle;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
         
        <div class="well">
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="account" DataSourceID="SqlDataSource2" Allowpaging="true">
                <EditItemTemplate>
           
                    account:
                    <asp:Label ID="accountLabel1" runat="server" Text='<%# Eval("account") %>' />
                    <br />
                    password:
                    <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                    <br />
                    name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    gender:
                    <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                    <br />
                    birthday:
                    <asp:TextBox ID="birthdayTextBox" runat="server" Text='<%# Bind("birthday","{0:d}") %>' />
                    <br />
                    age:
                    <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                    <br />
                    blood_type:
                    <asp:TextBox ID="blood_typeTextBox" runat="server" Text='<%# Bind("blood_type") %>' />
                    <br />
                    regis_date:
                    <asp:TextBox ID="regis_dateTextBox" runat="server" Text='<%# Bind("regis_date") %>' />
                    <br />
                    email:
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新"   CssClass="btn btn-warning"/>
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"  CssClass="btn btn-warning" />
                     <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"  CssClass="btn btn-warning"/>
                </EditItemTemplate>
                <InsertItemTemplate>
                
                    account:
                    <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                    <br />
                    password:
                    <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                    <br />
                    name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    gender:
                    <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                    <br />
                    birthday:
                    <asp:TextBox ID="birthdayTextBox" runat="server" Text='<%# Bind("birthday") %>' />
                    <br />
                    age:
                    <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                    <br />
                    blood_type:
                    <asp:TextBox ID="blood_typeTextBox" runat="server" Text='<%# Bind("blood_type") %>' />
                    <br />
                    regis_date:
                    <asp:TextBox ID="regis_dateTextBox" runat="server" Text='<%# Bind("regis_date") %>' />
                    <br />
                    email:
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入"  CssClass="btn btn-warning"/>
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"  CssClass="btn btn-warning"/>
                </InsertItemTemplate>
                <ItemTemplate>
           
                    account:
                    <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
                    <br />
                    password:
                    <asp:Label ID="passwordLabel" runat="server" Text='<%# Bind("password") %>' />
                    <br />
                    name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    gender:
                    <asp:Label ID="genderLabel" runat="server" Text='<%# Bind("gender") %>' />
                    <br />
                    birthday:
                    <asp:Label ID="birthdayLabel" runat="server" Text='<%# Bind("birthday") %>' />
                    <br />
                    age:
                    <asp:Label ID="ageLabel" runat="server" Text='<%# Bind("age") %>' />
                    <br />
                    blood_type:
                    <asp:Label ID="blood_typeLabel" runat="server" Text='<%# Bind("blood_type") %>' />
                    <br />
                    regis_date:
                    <asp:Label ID="regis_dateLabel" runat="server" Text='<%# Bind("regis_date") %>' />
                    <br />
                    email:
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                    <br />
                   
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Edit"  CssClass="btn btn-warning">修改</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton5" runat="server" CommandName="New"  CssClass="btn btn-warning">新增</asp:LinkButton>
                  
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HomeCare1ConnectionString %>" SelectCommand="SELECT * FROM [user]"
             InsertCommand="insert into [user](account,password,name,gender,birthday,age,blood_type,regis_date,email) values(@account,@password,@name,@gender,@birthday,@age,@blood_type,@regis_date,@email) " 
                UpdateCommand="Update[user] set 
                account=@account,
                password=@password,
             name=@name,
                gender=@gender,
                  birthday=@birthday,
           
              blood_type=@blood_type,
                
                 email=@email
         where account=@account "
            DeleteCommand="delete from [user] where account=@account " 
>
                <DeleteParameters>
                    <asp:Parameter Name="account" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="account" />
                    <asp:Parameter Name="password" />
                    <asp:Parameter Name="name" />
                    <asp:Parameter Name="gender" />
                    <asp:Parameter Name="birthday" />
                    <asp:Parameter Name="age" />
                    <asp:Parameter Name="blood_type" />
                    <asp:Parameter Name="regis_date" />
                    <asp:Parameter Name="email" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="account" />
                    <asp:Parameter Name="password" />
                    <asp:Parameter Name="name" />
                    <asp:Parameter Name="gender" />
                    <asp:Parameter Name="birthday" />
                    <asp:Parameter Name="blood_type" />
                    <asp:Parameter Name="email" />
                </UpdateParameters>
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

