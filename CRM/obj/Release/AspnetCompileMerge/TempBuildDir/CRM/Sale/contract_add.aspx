<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=8" />
    <link href="../../CSS/input.css" rel="stylesheet" />
    <link href="../../lib/ligerUI/skins/ext/css/ligerui-all.css" rel="stylesheet" type="text/css" />

    <script src="../../lib/jquery/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="../../lib/ligerUI/js/plugins/ligerForm.js" type="text/javascript"></script>
    <script src="../../lib/ligerUI/js/plugins/ligerComboBox.js" type="text/javascript"></script>
    <script src="../../lib/ligerUI/js/plugins/ligerRadio.js" type="text/javascript"></script>
    <script src="../../lib/ligerUI/js/plugins/ligerSpinner.js" type="text/javascript"></script>
    <script src="../../lib/ligerUI/js/plugins/ligerTextBox.js" type="text/javascript"></script>
    <script src="../../lib/ligerUI/js/plugins/ligerDateEditor.js" type="text/javascript"></script>
    <script src="../../lib/ligerUI/js/plugins/ligerCheckBox.js" type="text/javascript"></script>

    <script src="../../lib/ligerUI/js/plugins/ligerTree.js" type="text/javascript"></script>
    <script src="../../lib/ligerUI/js/plugins/ligerGrid.js" type="text/javascript"></script>
    <script src="../../lib/ligerUI/js/plugins/ligerDialog.js" type="text/javascript"></script>
    <script src="../../lib/ligerUI/js/plugins/ligerDrag.js" type="text/javascript"></script>

    <script src="../../lib/jquery-validation/jquery.validate.js" type="text/javascript"></script>
    <script src="../../lib/jquery-validation/jquery.metadata.js" type="text/javascript"></script>
    <script src="../../lib/jquery-validation/messages_cn.js" type="text/javascript"></script>
    <script src="../../lib/ligerUI/js/common.js" type="text/javascript"></script>
    <script src="../../lib/ligerUI/js/plugins/ligerTip.js" type="text/javascript"></script>
    <script src="../../lib/jquery.form.js" type="text/javascript"></script>

    <script src="../../lib/json2.js" type="text/javascript"></script>
    <script src="../../JS/Garfield.js" type="text/javascript"></script>


    <script type="text/javascript">
        $(function () {
            $.metadata.setType("attr", "validate");
            Garfield.validate($("#form1"));

            //$("#T_Contract_name").focus();
            $("form").ligerForm();

            $("#T_Customer").ligerComboBox({
                width: 182,
                onBeforeOpen: f_selectCustomer
            })
            $("#f_emp_view").ligerComboBox({
                width: 182,
                onBeforeOpen: f_selectContact
            })

            if (getparastr("cid")) {
                loadForm(getparastr("cid"));
            }
            $("#T_add").click(function () {
                $.ligerDialog.open({
                    width: 400, height: 80, url: "contract_atta.aspx?contract_id=" + getparastr("cid") + "&page_id=" + getparastr("a"), title: "附件上传", buttons: [
                        {
                            text: '保存', onclick: function (item, dialog) {
                                dialog.frame.f_save();
                            }
                        },
                        {
                            text: '关闭', onclick: function (item, dialog) {
                                dialog.close();
                            }
                        }
                    ]
                });
            })
            $("#maingrid4").ligerGrid({
                columns: [
                    { display: '序号', width: 50, render: function (rowData, rowindex, value, column, rowid, page, pagesize) { return (page - 1) * pagesize + rowindex + 1; } },
                    { display: '文件名', name: 'file_name', width: 500, align: 'left' },
                    {
                        display: '文件大小', name: 'file_size', width: 100, align: 'right', render: function (item) {
                            return formatUnits(item.file_size);
                        }
                    },
                    {
                        display: '操作', width: 120, render: function (item, i) {
                            var div = "";

                            div += ' <a href="javascript:void(0)" onclick="view_attachment(\'' + item.file_name + '\',\'' + item.real_name + '\')">查看</a>     ';
                            div += ' <a href="javascript:void(0)" onclick="down_attachment(\'' + item.real_name + '\')">下载</a>    ';
                            div += ' <a href="javascript:void(0)" onclick="del_attachment(\'' + item.file_id + '\',\' ' + item.page_id + '\');" >删除</a>     ';
                            return div;
                        }
                    }


                ],
                dataAction: 'local', pageSize: 30, pageSizeOptions: [20, 30, 50, 100],
                url: "../../data/CRM_contract_attachment.ashx?Action=get_attachment&contract_id=" + getparastr("cid") + "&page_id=" + getparastr("a") + "&rnd=" + Math.random(),
                width: '810', height: '99%',
                heightDiff: -1,
            })
        });


        function f_selectCustomer() {
            $.ligerDialog.open({
                title: '选择客户', width: 600, height: 350, url: '../../crm/customer/GetCustomer.aspx', buttons: [
                    { text: '确定', onclick: f_selectCustomerOK },
                    { text: '取消', onclick: f_selectContactCancel }
                ]
            });
            return false;
        }
        function f_selectCustomerOK(item, dialog) {
            var data = dialog.frame.f_select();
            if (!data) {
                alert('请选择行!');
                return;
            }
            $("#T_Customer").val(data.Customer);
            $("#T_Customer_val").val(data.id);
            $("#c_emp_view").val("【" + data.Department + "】" + data.Employee);
            $("#c_emp").val(data.Employee);
            $("#c_emp_val").val(data.Employee_id);
            $("#c_dep").val(data.Department);
            $("#c_dep_val").val(data.Department_id);
            dialog.close();
        }
        function f_selectContactCancel(item, dialog) {
            dialog.close();
        }
        function f_selectContact() {
            top.$.ligerDialog.open({
                zindex: 9003,
                title: '选择员工', width: 850, height: 400, url: "../../hr/Getemp_Auth.aspx?auth=4", buttons: [
                    { text: '确定', onclick: f_selectContactOK },
                    { text: '取消', onclick: f_selectContactCancel }
                ]
            });
            return false;
        }
        function f_selectContactOK(item, dialog) {
            var data = dialog.frame.f_select();
            if (!data) {
                alert('请选择员工!');
                return;
            }
            $("#f_emp_view").val("【" + data.dname + "】" + data.name);
            $("#f_emp").val(data.name);
            $("#f_emp_val").val(data.ID);
            $("#f_dep").val(data.dname);
            $("#f_dep_val").val(data.d_id);
            dialog.close();
        }

        function loadForm(oaid) {
            $.ajax({
                type: "GET",
                url: "../../data/Crm_contract.ashx", /* 注意后面的名字对应CS的方法名称 */
                data: { Action: 'form', cid: oaid, rnd: Math.random() }, /* 注意参数的格式和名称 */
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (result) {
                    var obj = eval(result);
                    for (var n in obj) {
                        if (obj[n] == null || obj[n] == "null")
                            obj[n] = "";
                    }
                    //alert(obj.constructor); //String 构造函数
                    $("#T_Customer").val(obj.Customer_name);
                    $("#T_Customer_val").val(obj.Customer_id);
                    $("#T_contract_num").val(obj.Serialnumber);
                    $("#T_contract_name").val(obj.Contract_name);
                    $("#T_contract_amount").val(toMoney(obj.Contract_amount));
                    $("#T_pay_cycle").val(obj.Pay_cycle);
                    $("#T_contractor").val(obj.Customer_Contractor);

                    $("#T_start_date").val(obj.Start_date);
                    $("#T_end_date").val(obj.End_date);
                    $("#T_contract_date").val(obj.Sign_date);

                    $("#T_content").val(obj.Main_Content);
                    $("#T_remarks").val(obj.Remarks);

                    $("#c_emp_view").val("【" + obj.C_depname + "】" + obj.C_empname);
                    $("#c_emp").val(obj.C_empname);
                    $("#c_emp_val").val(obj.C_empid);
                    $("#c_dep").val(obj.C_depname);
                    $("#c_dep_val").val(obj.C_depid);

                    $("#f_emp_view").val("【" + obj.Our_Contractor_depname + "】" + obj.Our_Contractor_name);
                    $("#f_dep_val").val(obj.Our_Contractor_depid);
                    $("#f_dep").val(obj.Our_Contractor_depname);
                    $("#f_emp").val(obj.Our_Contractor_name);
                    $("#f_emp_val").val(obj.Our_Contractor_id);
                }
            });

        }


        function set_tomoney(value) {
            $("#T_contract_amount").val(toMoney(value));
        }

        function f_save() {
            var valid = $("#form1").valid();
            if (!valid) { return; };

            var sendtxt = "&Action=save&cid=" + getparastr("cid") + "&page_id=" + getparastr("a");
            return $("form :input").fieldSerialize() + sendtxt;

        }

        function flush_attachment() {
            $.ajax({
                url: "../../data/CRM_contract_attachment.ashx", type: "POST",
                data:
                {
                    Action: "flush_attachment",
                    page_id: getparastr("a")
                },
                success: function (responseText) {
                    
                }
            });
        }

        function view_attachment(filename, realname) {
            //alert(fileid + ":" + filename + ":" + realname);
            var filetype = null;
            if (filename) {
                var type = filename.substr(filename.lastIndexOf(".")).toLowerCase();

                switch (type) {
                    case ".jpg": case ".gif": case ".jpeg": case ".bmp": case ".png":
                        url = "file/view_image.aspx?page_id=" + getparastr("a") + "&filename=" + filename + "&realname=" + realname;
                        f_openWindow(url, "【查看】" + filename, 1000, 500);
                        break;
                    case ".doc": case ".docx":
                        //case ".xls": case ".xlsx": case ".ppt": case ".pptx":
                        viewoffice(filename, realname);
                        break;
                    default:
                        $.ligerDialog.warn('暂不提供"' + type + '"类型文件的在线预览功能。');
                }
            }
        }
        function del_attachment(file_id, page_id) {
            $.ligerDialog.confirm("确定删除？", function (yes) {
                if (yes) {
                    if (!page_id) page_id = getparastr("a");
                    $.ajax({
                        url: "../../data/CRM_contract_attachment.ashx", type: "POST",
                        data:
                        {
                            Action: "del_attachment",
                            file_id: file_id,
                            page_id: page_id
                        },
                        success: function (responseText) {
                            f_reload()
                        }
                    });
                }
            });

        }
        function down_attachment(filename) {
            window.open("../../file/contract/" + filename);
        }
        function viewoffice(filename, realname) {
            $.ligerDialog.waitting('文档努力加载中,请稍候...');
            $.ajax({
                type: "GET",
                url: "../../data/CRM_contract_attachment.ashx", /* 注意后面的名字对应CS的方法名称 */
                data: {
                    Action: 'get_office',
                    page_id: getparastr("a"),
                    filename: filename,
                    realname: realname,
                    rnd: Math.random()
                }, /* 注意参数的格式和名称 */
                contentType: "application/json; charset=utf-8",
                dataType: "text",
                success: function (result) {
                    $.ligerDialog.closeWaitting();
                    //alert(obj.constructor); //String 构造函数
                    if (result == "sucess:false") {
                        $.ligerDialog.warn("系统错误！找不到地址");
                    }
                    else {
                        //$("#view").attr("src", "../file/contract/" + result);
                        url = "../../file/contract" + result;
                        f_openWindow(url, "【查看】" + filename, 1000, 500);
                    }
                }
            });
        }
        var activeDialog = null;
        function f_openWindow(url, title, width, height) {
            var dialogOptions = {
                width: width, height: height, title: title, url: url, buttons: [
                        {
                            text: '关闭', onclick: function (item, dialog) {
                                dialog.close();
                            }
                        }
                ], zindex: 9003, isResize: true, timeParmName: 'a'
            };
            activeDialog = top.jQuery.ligerDialog.open(dialogOptions);
        }
        function f_reload() {
            var manager = $("#maingrid4").ligerGetGridManager();
            manager.loadData(true);
        }
    </script>

</head>
<body style="margin: 0;">
    <form id="form1" onsubmit="return false">

        <table style="width: 810px; margin: 5px;" class='bodytable2'>
            <tr>
                <td colspan="6" class="table_title1">合同基本信息</td>
            </tr>
            <tr>

                <td width="72px">
                    <div align="right" style="width: 61px">
                        客户：
                    </div>
                </td>
                <td>
                    <input type="text" id="T_Customer" name="T_Customer" validate="{required:true}" /></td>
                <td>
                    <div align="right" style="width: 61px">
                        合同编号：
                    </div>
                </td>
                <td>
                    <input type="text" id="T_contract_num" name="T_contract_num" ltype="text" ligerui="{width:182}" validate="{required:true}" /></td>
                <td>
                    <div align="right" style="width: 61px">
                        合同金额：
                    </div>
                </td>
                <td>
                    <input type="text" id="T_contract_amount" name="T_contract_amount" style="text-align: right" ltype="text" ligerui="{width:182,number: true}" onchange="set_tomoney(this.value)" validate="{required:true}" /></td>
            </tr>
            <tr>
                <td width="62px">
                    <div align="right" style="width: 61px">
                        合同名称：
                    </div>
                </td>
                <td colspan="3">
                    <input type="text" id="T_contract_name" name="T_contract_name" ltype="text" ligerui="{width:440}" validate="{required:true}" />
                </td>
                <td>
                    <div align="right" style="width: 61px">
                        付款期数：
                    </div>
                </td>
                <td>
                    <input type="text" id="T_pay_cycle" name="T_pay_cycle" ltype="spinner" ligerui="{width:182,type:'int',isNegative:false}" validate="{required:true}" /></td>
            </tr>
            <tr>
                <td width="62px">
                    <div align="right" style="width: 61px">
                        开始时间：
                    </div>
                </td>
                <td>
                    <input type="text" id="T_start_date" name="T_start_date" ltype="date" validate="{required:true}" ligerui="{width:182}" /></td>
                <td width="62px">
                    <div align="right" style="width: 61px">
                        结束时间：
                    </div>
                </td>
                <td>
                    <input type="text" id="T_end_date" name="T_end_date" ltype="date" validate="{required:true}" ligerui="{width:182}" /></td>
                <td>
                    <div align="right" style="width: 61px">
                        签订时间：
                    </div>
                </td>
                <td>
                    <input type="text" id="T_contract_date" name="T_contract_date" ltype="date" validate="{required:true}" ligerui="{width:182}" /></td>
            </tr>
            <tr>
                <td width="62px">
                    <div align="right" style="width: 61px">
                        对方签约：
                    </div>
                </td>
                <td>
                    <input type="text" id="T_contractor" name="T_contractor" ltype="text" ligerui="{width:182}" validate="{required:true}" /></td>
                <td width="62px">
                    <div align="right" style="width: 61px">
                        我方签约：
                    </div>
                </td>
                <td>
                    <input id="f_emp_view" name="f_emp_view" type="text" validate="{required:true}" />
                    <input type="hidden" id="f_dep" name="f_dep" />
                    <input type="hidden" id="f_dep_val" name="f_dep_val" />
                    <input type="hidden" id="f_emp" name="f_emp" />
                    <input type="hidden" id="f_emp_val" name="f_emp_val" />
                </td>
                <td>
                    <div align="right" style="width: 61px">
                        客户归属：
                    </div>
                </td>
                <td>
                    <input id="c_emp_view" name="c_emp_view" type="text" ltype="text" ligerui="{width:182,disabled:true}" validate="{required:true}" />
                    <input type="hidden" id="c_dep" name="c_dep" />
                    <input type="hidden" id="c_dep_val" name="c_dep_val" />
                    <input type="hidden" id="c_emp" name="c_emp" />
                    <input type="hidden" id="c_emp_val" name="c_emp_val" />
                </td>
            </tr>
            <tr>
                <td colspan="6" class="table_title1">合同条款</td>
            </tr>
            <tr>

                <td width="72px">
                    <div align="right" style="width: 62px">主要条款：</div>
                </td>
                <td colspan="3">
                    <textarea cols="100" id="T_content" name="T_content" rows="5" class="l-textarea" style="width: 440px"></textarea></td>
                <td>
                    <div align="right" style="width: 62px">备注：</div>
                </td>
                <td>
                    <textarea cols="100" id="T_remarks" name="T_remarks" rows="5" class="l-textarea" style="width: 182px"></textarea></td>
            </tr>

        </table>
    </form>
    <table style="width: 810px; margin: 5px;" class='bodytable2'>
        <tr>
            <td class="table_title1">
                <input type="button" id="T_add" value="添加附件" style="width: 60px; height: 22px;" />
                <%-- <input type="button" id="T_del" value="删除" style="width: 60px; height: 22px;" />--%>
            </td>
        </tr>
    </table>
    <div id="maingrid4" style="margin: 5px;"></div>
</body>
</html>
