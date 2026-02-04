<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body {
        margin: 0;
        font-family: 'Segoe UI', sans-serif;
        background: #eef2f5;
    }

    .login-wrapper {
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .login-card {
        background: #ffffff;
        width: 398px;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.1);
        text-align: center;
            height: 457px;
        }

     .input-group {
        text-align: left;
        margin-bottom: 15px;
    }

    .input-group label {
        font-size: 14px;
        color: #555;
    }

    .input-box {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    .login-btn {
        width: 100%;
        padding: 12px;
        background: #2f6fdb;
        border: none;
        color: white;
        border-radius: 6px;
        font-size: 16px;
        margin-top: 15px;
        cursor: pointer;
    }

    .login-btn:hover {
        background: #2459b3;
    }

     .signup-btn {
        color: #2f6fdb;
        text-decoration: none;
        font-size: 14px;
        background: none;
        border: none;
        cursor: pointer;
        }

    .error {
    color: red;
    font-size: 12px;
    margin-top: 5px;
    display: block;
}


.signup-btn:hover {
    text-decoration: underline;
}
     </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="login-wrapper">
    <div class="login-card">

        <h2 class="title">Log in to view this page</h2>

        <!-- Email -->
        <div class="input-group">
            <asp:Label ID="emaillbl" runat="server" CssClass="label" Text="Email Address"></asp:Label>
            <asp:TextBox ID="emailtxt" runat="server" CssClass="input-box" placeholder="Enter email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="emailvali" runat="server" ControlToValidate="emailtxt" CssClass="error" Display="Dynamic" ErrorMessage="Email is required" ValidationGroup="login"></asp:RequiredFieldValidator>
        </div>

        <!-- Password -->
        <div class="input-group">
            <asp:Label ID="passlbl" runat="server" CssClass="label" Text="Password"></asp:Label>
            <asp:TextBox ID="passtxt" runat="server" CssClass="input-box" TextMode="Password" placeholder="Enter password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="passvali" runat="server" ControlToValidate="passtxt" CssClass="error" Display="Dynamic" ErrorMessage="Password is required" ValidationGroup="login"></asp:RequiredFieldValidator>
        </div>

        <!-- Login Button -->
        <asp:Button ID="loginbtn" runat="server" Text="Login" CssClass="login-btn" OnClick="loginbtn_Click" ValidationGroup="login" />

        <!-- Signup Link -->
        <div class="signup-link">
            <asp:HyperLink ID="signinlink" runat="server" NavigateUrl="signup.aspx" CssClass="signup-btn"> Don't have an account yet? Sign up </asp:HyperLink>
        </div>

    </div>
</div>

    </form>
</body>
</html>
