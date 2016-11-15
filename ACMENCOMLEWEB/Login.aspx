<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ACMENCOMLEWEB.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Login</title>
        <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

        <link rel="stylesheet"  href="assets/css/style-login.css">
    </head>
    <body>
       

                <section class="login-form-wrap">
                    <h1>LOGIN</h1>
                    <form id="Form1" class="login-form" runat="server">
                        <label>
                            <input id="txtEmail" type="text" name="email"  runat="server" required placeholder="Usuario">
                             
                        </label>
                        <label>
                            <input id="txtpass" type="password" name="password" required placeholder="Password" runat="server">
                        </label>
                       <asp:Button ID="Button1"   Width ="100%" Text="Entrar"  Height="40" OnClick="Submit" runat="server"   />
                    </form>
                    <h5>
                        <a href="#">Forgot password</a>
                    </h5>
                </section>

           
    </body>
</html>
