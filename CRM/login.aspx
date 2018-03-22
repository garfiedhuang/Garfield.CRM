<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta http-equiv="content-type" content="text/html; charset=gb2312">
    <title>登录-广联达智能化平台管理</title>
    <link href="CSS/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="CSS/bootstrap/font-awesome.css" rel="stylesheet" />
    <link href="CSS/bootstrap/custom.css" rel="stylesheet" />

    <link href="lib/ligerUI/skins/ext/css/ligerui-dialog.css" rel="stylesheet" />
    <script src="lib/jquery/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="lib/ligerUI/js/plugins/ligerDialog.js" type="text/javascript"></script>
    <script src="JS/jquery.md5.js" type="text/javascript"></script>
    <script src="JS/Garfield.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(function () {
            delCookie("garfield_crm_show_wellcome")
            if (getCookie("garfield_uid") && getCookie("garfield_uid") != null) {
                $("#T_uid").val(getCookie("garfield_uid"));
            }
            var FromUrl = getQueryStringByName("FromUrl");
            if (!FromUrl) {
                FromUrl = encodeURIComponent("main.aspx");
            }
            $(document).keydown(function (e) {
                if (e.keyCode == 13) {
                    doLogin();
                }
            });
            $("#login").click(function () {
                doLogin();
            });
            $("#reset").click(function () {
                $(":input", "#loginForm").not(":button,:submit:reset:hidden").val("");
            });
            function doLogin() {
                var uid = $("#T_uid").val();
                var pwd = $("#T_pwd").val();
                var validate = $("#T_validate").val();
                if (validate == "") {
                    alert("验证码不能为空！");
                    $("#T_validate").focus();
                    return;
                }
                else if (validate.length != 4) {
                    alert("验证码错误！");
                    $("#T_validate").focus();
                    return;
                }
                if (uid == "") {
                    alert("账号不能为空！");
                    $("#T_uid").focus();
                    return;
                }
                if (pwd == "") {
                    alert("密码不能为空！");
                    $("#T_pwd").focus();
                    return;
                }
                $.ajax({
                    type: 'post', dataType: 'json',
                    url: 'Data/login.ashx',
                    data: [
                    { name: 'Action', value: 'login' },
                    { name: 'username', value: uid },
                    { name: 'password', value: $.md5(pwd) },
                    { name: 'validate', value: validate },
                    { name: 'rnd', value: Math.random() }
                    ],
                    success: function (result) {
                        if (typeof (result) == "number") {
                            switch (result) {
                                case 0:
                                    alert("验证码错误！");
                                    $("#validate").click();
                                    $("#T_validate").val("");
                                    $("#T_validate").focus();
                                    break;
                                case 1:
                                    alert("用户名或密码错误！");
                                    $("#T_pwd").focus();
                                    break;
                                case 2:
                                    SetCookie("garfield_uid", uid, 30);
                                    SetCookie("garfield_crm_show_wellcome", "1");
                                    location.href = decodeURIComponent(FromUrl);
                                    break;
                                case 3:
                                    alert("账户异常，请联系管理员！");
                                    break;
                                case 4:
                                    alert("账户已限制登录！");
                                    break;
                            }
                        }
                        else {
                            alert('登陆失败,账号或密码有误!');
                            $("#password").focus();
                            return;
                        }
                    },
                    error: function () {
                        $("#validate").click();
                        alert('发生系统错误,请与系统管理员联系!');
                    },
                    beforeSend: function () {
                        $.ligerDialog.waitting("正在登陆中,请稍后...");
                        $("#lgoin").attr("disabled", true);
                    },
                    complete: function () {
                        $.ligerDialog.closeWaitting();
                        $("#login").attr("disabled", false);
                    }
                });
            }
        })
    </script>
    <script type="text/javascript">
        if (top.location != self.location) top.location = self.location;
    </script>
</head>
<body>
    <div class="container">
        <div class="row text-center ">
            <div class="col-md-12">
                <br />
                <br />
                <h2>广联达智能化平台管理</h2>
                <h5>专业、智能、高效的信息化管理平台</h5>
                <br />
            </div>
        </div>
        <div class="row ">
            <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong>用户登录 </strong>
                    </div>
                    <div class="panel-body">
                        <form id="loginForm" name="loginForm" action="" role="form">
                            <br />
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input type="text" class="form-control" id="T_uid" name="T_uid" placeholder="账号 " />
                            </div>
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input type="password" class="form-control" id="T_pwd" name="T_pwd" placeholder="密码" />
                            </div>
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-check"></i></span>
                                <input type="text" class="form-control" id="T_validate" name="T_validate" style="width: 60%;" placeholder="验证码" />
                                <img id="validate" onclick="this.src=this.src+'?'" src="ValidateCode.aspx" style="cursor: pointer; border: 1px solid #ddd; margin-left: 5px;" alt="看不清楚，换一张" title="看不清楚，换一张" />
                            </div>
                            <%--<div class="form-group">
                                        <label class="checkbox-inline">
                                            <input type="checkbox" /> 记住
                                        </label>
                                        <span class="pull-right">
                                                <a href="#" >忘记密码 ? </a> 
                                        </span>
                                    </div>--%>

                            <a class="btn btn-primary" id="login" style="width: 100%;">登 录</a>
                            <%--<hr />还没有账号 ? <a href="#">注册</a> --%>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div id="footer">
        温馨提示：建议使用谷歌、IE10及以上版本浏览器，分辩率最小为1366*768<br />
        ©加菲猫软件 版权所有 QQ: 516156003
    </div>
</body>
</html>
