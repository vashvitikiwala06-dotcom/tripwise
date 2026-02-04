<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

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
            height: 694px;
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

.signup-btn:hover {
    text-decoration: underline;
}
        .signup-link {
            height: 30px;
            width: 398px;
}
        .error {
    color: red;
    font-size: 12px;
    margin-top: 5px;
    display: block;
}

     </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="login-wrapper">
    <div class="login-card">

        <h2 class="title">Sign in to view this page</h2>

        <div class="input-group">
            <asp:Label ID="namelbl" runat="server" Text="Full Name" CssClass="label"></asp:Label>
            <asp:TextBox ID="nametxt" runat="server" CssClass="input-box" placeholder="Enter your full name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="nameval" runat="server" ControlToValidate="nametxt" CssClass="error" Display="Dynamic" ErrorMessage="Full name is required" ValidationGroup="signup"></asp:RequiredFieldValidator>
        </div>

        <div class="input-group">
            <asp:Label ID="emaillbl" runat="server" Text="Email" CssClass="label"></asp:Label>
            <asp:TextBox ID="emailtxt" runat="server" CssClass="input-box" placeholder="Enter email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="emailval" runat="server" ControlToValidate="emailtxt" CssClass="error" Display="Dynamic" ErrorMessage="Email is required" ValidationGroup="signup"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="emailval2" runat="server" ControlToValidate="emailtxt" CssClass="error" Display="Dynamic" ErrorMessage="Enter a valid email address" ValidationExpression="&quot;^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,})+$&quot;" ValidationGroup="signup"></asp:RegularExpressionValidator>
        </div>

        <div class="input-group">
            <asp:Label ID="passlbl" runat="server" Text="Password" CssClass="label"></asp:Label>
            <asp:TextBox ID="passtxt" runat="server" CssClass="input-box" placeholder="Create a password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="passval" runat="server" ControlToValidate="passtxt" CssClass="error" Display="Dynamic" ErrorMessage="Password is required" ValidationGroup="signup"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="passval2" runat="server" ControlToValidate="passtxt" CssClass="error" Display="Dynamic" ErrorMessage="Password must be at least 6 characters" ValidationExpression="&quot;^.{6,}$&quot;" ValidationGroup="signup"></asp:RegularExpressionValidator>
        </div>

        <div class="input-group">

            <asp:Label ID="confirmlbl" runat="server" Text="Confirm Password" CssClass="label"></asp:Label>
            <asp:TextBox ID="confirmtxt" runat="server" CssClass="input-box" placeholder="Confirm your password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="confirmval" runat="server" ControlToValidate="confirmtxt" CssClass="error" Display="Dynamic" ErrorMessage="Password is required" ValidationGroup="signup"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="confpassval" runat="server" ControlToCompare="passtxt" ControlToValidate="confirmtxt" CssClass="error" Display="Dynamic" ErrorMessage="Passwords do not match" ValidationGroup="signup"></asp:CompareValidator>
        </div>
        
        <asp:Button ID="signbtn" runat="server" Text="Sign Up" CssClass="login-btn" OnClick="signbtn_Click" ValidationGroup="signup" />

        <div class="signup-link">
        <asp:HyperLink ID="loginlink" runat="server" CssClass="signup-btn" NavigateUrl="login.aspx">Already have an account? Login</asp:HyperLink>
        </div>

        </div>
        </div>
        
        </form>
</body>
</html>
