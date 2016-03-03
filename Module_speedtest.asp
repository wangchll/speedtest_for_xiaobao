<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta HTTP-EQUIV="Pragma" CONTENT="no-cache"/>
		<meta HTTP-EQUIV="Expires" CONTENT="-1"/>
		<link rel="shortcut icon" href="images/favicon.png"/>
		<link rel="icon" href="images/favicon.png"/>
		<title>软件中心 - Speedtest网络测速</title>
		<link rel="stylesheet" type="text/css" href="index_style.css">
		<link rel="stylesheet" type="text/css" href="form_style.css">
		<link rel="stylesheet" type="text/css" href="usp_style.css">
		<link rel="stylesheet" type="text/css" href="/device-map/device-map.css" />
		<script type="text/javascript" src="/state.js"></script>
		<script type="text/javascript" src="/popup.js"></script>
		<script type="text/javascript" src="/help.js"></script>
		<script type="text/javascript" src="/general.js"></script>
		<script type="text/javascript" src="/js/jquery.js"></script>
		<script type="text/javascript" src="/client_function.js"></script>
		<script type="text/javascript" src="/calendar/jquery-ui.js"></script>
		<script type="text/javascript" src="/switcherplugin/jquery.iphone-switch.js"></script>
		<script type="text/javascript" src="/form.js"></script>
		<style type="text/css">
		.splitLine{
			background-image: url('/images/New_ui/export/line_export.png');
			background-repeat: no-repeat;
			height: 3px;
			width: 100%;
			margin-bottom: 7px;
		}
		#sortable div table tr:hover{
			cursor: pointer;
			color: #000;
			background-color: #66777D;
			font-weight: bolder;
		}
		#sortable div table{
			font-family:Verdana;
			width: 100%;
			border-spacing: 0px;
		}
		.trafficIcons{
			width:56px;
			height:56px;
			background-image:url('/images/New_ui/networkmap/client-list.png');
			background-repeat:no-repeat;
			border-radius:10px;
			margin-left:10px;
			background-position:50% 61.10%;
		}
		.trafficIcons:hover{
			background-image:url('/images/New_ui/networkmap/client-listover.png');
		}
		.trafficIcons_clicked{
			width:56px;
			height:56px;
			background-image:url('/images/New_ui/networkmap/client-listover.png');
			background-repeat:no-repeat;
			border-radius:10px;
			margin-left:10px;
			background-position:50% 64.40%;
		}
		.trafficVenderIcons{
			width:56px;
			height:56px;
			background-image:url('/images/New_ui/networkmap/vender-list.png');
			background-repeat:no-repeat;
			border-radius:10px;
			margin-left:10px;
		}
		.trafficVenderIcons:hover{
			background-image:url('/images/New_ui/networkmap/vender-listover.png');
		}
		.trafficVenderIcons_clicked{
			width:56px;
			height:56px;
			background-image:url('/images/New_ui/networkmap/vender-listover.png');
			background-repeat:no-repeat;
			border-radius:10px;
			margin-left:10px;
		}

		.qosLevel, .qosLevel3{
			background-color: #7A797A;
		}
		.qosLevel0{
			background-color: #F01F09;
		}
		.qosLevel1{
			background-color: #F08C09;
		}
		.qosLevel2{
			background-color: #F3DD09;
		}
		.qosLevel4{
			background-color: #58CCED;
		}

		#indicator_upload, #indicator_download{
			-webkit-transform:rotate(-123deg);
		    -moz-transform:rotate(-123deg);
		    -o-transform:rotate(-123deg);
		    msTransform:rotate(-123deg);
		    transform:rotate(-123deg);
		}

		.imgUserIcon{
			margin-left: 2px;
			margin-top: 2px;
			width: 51px;
			height: 52px;
			-webkit-border-radius: 10px;
			-moz-border-radius: 10px;
			border-radius: 10px;
		}
		.divUserIcon{
			cursor: pointer;
			margin-left:10px;
			width:56px;
			height:56px;
			-webkit-border-radius: 10px;
			-moz-border-radius: 10px;
			border-radius: 10px;
			border-radius:10px;
		}
		.traffic_bar{
			width: 0%;
			background-color: #93E7FF;
			height: 8px;
			border-radius:5px;
		}
		.traffic_bar_boost{
			background-color: #B71010;
		}

		.transition_style{
			-webkit-transition: all 2s ease-in-out;
			-moz-transition: all 2s ease-in-out;
			-o-transition: all 2s ease-in-out;
			transition: all 2s ease-in-out;
		}
		.boost_tag_BM {
			font-weight: normal;
			text-align: center;
			width: 55px;
			height: 25px;
			line-height: 25px;
			border-radius: 15%;
			margin-top: -21px;
			margin-left: 25px;
			color: #FFFFFF;
			font-size: 9px;
			-webkit-transform: scale(0.75);
			background: #FF4848; /* Old browsers */
			background: -moz-linear-gradient(top, #A21717 0%, #B71010 50%, #FF4848 100%); /* FF3.6+ */
			background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#A21717), color-stop(50%,#B71010), color-stop(100%,#FF4848)); /* Chrome,Safari4+ */
			background: -webkit-linear-gradient(top, #A21717 0%,#B71010 50%,#FF4848 100%); /* Chrome10+,Safari5.1+ */
			background: -o-linear-gradient(top, #A21717 0%,#B71010 50%,#FF4848 100%); /* Opera 11.10+ */
			background: -ms-linear-gradient(top, #A21717 0%,#B71010 50%,#FF4848 100%); /* IE10+ */
			background: linear-gradient(to bottom, #A21717 0%,#B71010 70%,#FF4848 100%); /* W3C */
			filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#A21717', endColorstr='#FF4848',GradientType=0 ); /* IE6-9 */
		}
		</style>
        <script type="text/javascript">
		function init() {
			show_menu();

		}

		function onSubmitCtrl(o, s) {
			document.form.action_mode.value = s;
			$("#cmdBtn").attr("disabled", true);
			$("#cmdBtn").html("测速中...");
			showLoading(10);
			document.form.submit();
			//setTimeout("conf2obj()", 8000);
		}


		function conf2obj() {
			$.ajax({
				type: "get",
				url: "dbconf?p=speedtest_",
				dataType: "script",
				success: function(xhr) {
			    	var p = "speedtest_";
			        var params = ["warning","can_upgrade", "run_status", "run_warnning"];
			        for (var i = 0; i < params.length; i++) {
						if (typeof db_speedtest_[p + params[i]] !== "undefined") {
							$("#speedtest_"+params[i]).val(db_speedtest_[p + params[i]]);
						}
			        }
					//update_visibility();
					//check_selected("speedtest_start", db_speedtest_.speedtest_start);
					//check_selected("speedtest_time", db_speedtest_.speedtest_time);
					//check_downstream(parseInt(db_speedtest_.speedtest_config_downstream), parseInt(db_speedtest_.speedtest_config_max_downstream), db_speedtest_.speedtest_run_status);
				}
			});
		}

		function update_visibility() {
			//不满足快鸟条件的显示异常信息
			if ($("#speedtest_can_upgrade").val() == "0") {
				$("#warn").html($("#speedtest_warning").val());
				showhide("warn", ($("#speedtest_can_upgrade").val() == "0"));
			}
			$("#warn").html($("#speedtest_warning").val());
			showhide("warn", ($("#speedtest_can_upgrade").val() == "0"));
			//给出快鸟运行状态
			$("#kn_state2").html($("#speedtest_run_warnning").val());
		}

		function write_speedtest_install_status(){
			$.ajax({
				type: "get",
				url: "dbconf?p=speedtest_",
				dataType: "script",
				success: function() {
					if (db_speedtest_['speedtest_install_status'] == "1"){
						$("#speedtest_install_show").html("<i>正在下载更新...</i>");
					} else if (db_speedtest_['speedtest_install_status'] == "2"){
						$("#speedtest_install_show").html("<i>正在安装更新...</i>");
					} else if (db_speedtest_['speedtest_install_status'] == "3"){
						$("#speedtest_install_show").html("<i>安装更新成功，5秒后刷新本页!</i>");
						version_show();
						refreshpage(3);
					} else if (db_speedtest_['speedtest_install_status'] == "4"){
					   document.getElementById('updateBtn').style.display = "";
						$("#speedtest_install_show").html("<i>下载文件校验不一致！</i>");
					} else if (db_speedtest_['speedtest_install_status'] == "5"){
						document.getElementById('updateBtn').style.display = "";
						$("#speedtest_install_show").html("<i>然而并没有更新！</i>");
					} else if (db_speedtest_['speedtest_install_status'] == "6"){
			      		$("#speedtest_install_show").html("<i>正在检查是否有更新~</i>");
					} else if (db_speedtest_['speedtest_install_status'] == "7"){
					   document.getElementById('updateBtn').style.display = "";
						$("#speedtest_install_show").html("<i>检测更新错误！</i>");
					} else {
						$("#speedtest_install_show").html("");
					}
					//尝试合并函数
					var p = "speedtest_";
					var params = ["warning","can_upgrade", "run_status", "run_warnning"];
					for (var i = 0; i < params.length; i++) {
						if (typeof db_speedtest_[p + params[i]] !== "undefined") {
							$("#speedtest_"+params[i]).val(db_speedtest_[p + params[i]]);
						}
					}
					//update_visibility();
					//check_selected("speedtest_start", db_speedtest_.speedtest_start);
					//check_selected("speedtest_time", db_speedtest_.speedtest_time);
					//check_downstream(parseInt(db_speedtest_.speedtest_config_downstream), parseInt(db_speedtest_.speedtest_config_max_downstream), db_speedtest_.speedtest_run_status);

					//setTimeout("write_speedtest_install_status()", 2000);
				}
			});
		}

		function version_show(){
			if (db_speedtest_['speedtest_version'] != db_speedtest_['speedtest_version_web'] && db_speedtest_['speedtest_version_web'] !== undefined){
				$("#speedtest_version_status").html("<i>有新版本：" + db_speedtest_['speedtest_version_web']);
			} else {
				if (db_speedtest_['speedtest_version'] == undefined) {
					$("#speedtest_version_status").html("<i>当前版本：");
				} else {
					$("#speedtest_version_status").html("<i>当前版本：" + db_speedtest_['speedtest_version']);
				}
			}
		}
		function update_speedtest(o, s){
			document.form.speedtest_update_check.value = 1;
			document.getElementById('updateBtn').style.display = "none";
			document.form.action_mode.value = s;
			document.form.submit();
		}

		function reload_Soft_Center() {
			location.href = "/Main_Soft_center.asp";
		}
        </script>
    </head>
    <body onload="init();">
		<div id="TopBanner"></div>
		<div id="Loading" class="popup_bg"></div>
		<iframe name="hidden_frame" id="hidden_frame" src="" width="0" height="0" frameborder="0"></iframe>
		<form method="post" name="form" action="/applydb.cgi?p=speedtest_" target="hidden_frame">
			<input type="hidden" name="current_page" value="Module_speedtest.asp"/>
			<input type="hidden" name="next_page" value="Module_speedtest.asp"/>
			<input type="hidden" name="group_id" value=""/>
			<input type="hidden" name="modified" value="0"/>
			<input type="hidden" name="action_mode" value=""/>
			<input type="hidden" name="action_script" value=""/>
			<input type="hidden" name="action_wait" value="5"/>
			<input type="hidden" name="first_time" value=""/>
			<input type="hidden" name="preferred_lang" id="preferred_lang" value="<% nvram_get("preferred_lang"); %>"/>
			<input type="hidden" name="SystemCmd" onkeydown="onSubmitCtrl(this, ' Refresh ')" value="speedtest.sh"/>
			<input type="hidden" name="firmver" value="<% nvram_get("firmver"); %>"/>
			<input type="hidden" id="speedtest_config_pwd" name="speedtest_config_pwd" value='<% dbus_get_def("speedtest_config_pwd", ""); %>'/>
			<input type="hidden" id="speedtest_warning" name="speedtest_warning" value='<% dbus_get_def("speedtest_warning", ""); %>'/>
			<input type="hidden" id="speedtest_enable" name="speedtest_enable" value='<% dbus_get_def("speedtest_enable", "0"); %>'/>
			<input type="hidden" id="speedtest_can_upgrade" name="speedtest_can_upgrade" value='<% dbus_get_def("speedtest_can_upgrade", "0"); %>'/>
			<input type="hidden" id="speedtest_run_status" name="speedtest_run_status" value='<% dbus_get_def("speedtest_run_status", "0"); %>'/>
			<input type="hidden" id="speedtest_run_warnning" name="speedtest_run_warnning" value='<% dbus_get_def("speedtest_run_warnning", ""); %>'/>
			<input type="hidden" id="speedtest_install_status" name="speedtest_install_status" value="0" />
			<input type="hidden" id="speedtest_update_check" name="speedtest_update_check" value="0" />

			<table class="content" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td width="17">&nbsp;</td>
					<td valign="top" width="202">
						<div id="mainMenu"></div>
						<div id="subMenu"></div>
					</td>
					<td valign="top">
						<div id="tabMenu" class="submenuBlock"></div>
						<table width="98%" border="0" align="left" cellpadding="0" cellspacing="0">
							<tr>
								<td align="left" valign="top">
									<table width="760px" border="0" cellpadding="5" cellspacing="0" bordercolor="#6b8fa3" class="FormTitle" id="FormTitle">
										<tr>
											<td bgcolor="#4D595D" colspan="3" valign="top">
												<div>&nbsp;</div>
												<div style="float:left;" class="formfonttitle">Speedtest网络测速</div>
												<div style="float:right; width:15px; height:25px;margin-top:10px"><img id="return_btn" onclick="reload_Soft_Center();" align="right" style="cursor:pointer;position:absolute;margin-left:-30px;margin-top:-25px;" title="返回软件中心" src="/images/backprev.png" onMouseOver="this.src='/images/backprevclick.png'" onMouseOut="this.src='/images/backprev.png'"></img></div>
												<div style="margin-left:5px;margin-top:10px;margin-bottom:10px"><img src="/images/New_ui/export/line_export.png"></div>
												<div class="formfontdesc" style="padding-top:5px;margin-top:0px;float: left;" id="cmdDesc">使用speedtest.net的测速网络进行宽带测速~</div>
												<div id="speedtest_version_status" style="padding-top:5px;margin-left:30px;margin-top:0px;float: left;"><i>当前版本：<% dbus_get_def("speedtest_version", "0"); %></i></div>
												<div class="formfontdesc" id="cmdDesc"></div>

												<table style="margin:10px 0px 0px 0px;" width="100%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#6b8fa3" class="FormTitle" id="Speedtest_detail_table">
													<tr>
														<td height="5" bgcolor="#4D595D" valign="top"><img src="images/New_ui/export/line_export.png" /></td>
													</tr>
													<tr>
														<td bgcolor="#4D595D" valign="top">
															<table width="100%">
																<tr>
																	<td class="formfonttitle" align="left">
																		<div>Speedtest - 宽带测速</div>
																	</td>
																	<td>
																		<div>
																			<table align="right">
																				<tr>
																					<td>
																						<div id="speedtest_install_show" style=""></div>
																					</td>
																					<td >
																						<div id="update_button" style="">
																							<button id="updateBtn" class="button_gen" onclick="update_speedtest(this, ' Refresh ');">检查更新</button>
																						</div>
																					</td>
																				</tr>
																			</table>
																		</div>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td height="5" bgcolor="#4D595D" valign="top"><img src="images/New_ui/export/line_export.png" /></td>
													</tr>
													<tr>
														<td>
															<div>
																<table style="width:99%;">
																	<tr>
																		<td id="download_unit" style="width:50%;">
																			<div style="margin:-10px 0 5px 70px;font-size:16px;text-align:center;">下行速度</div>
																			<div style="position:absolute;margin:12px 0px 0px 112px;font-size:16px;display:none;"></div>
																			<div style="position:absolute;margin:-8px 0px 0px 222px;font-size:16px;display:none;"></div>
																			<div style="position:absolute;margin:50px 0px 0px 300px;font-size:16px;display:none;"></div>
																			<div style="position:absolute;margin:121px 0px 0px 296px;font-size:16px;display:none;"></div>
																			<div style="position:absolute;margin:150px 0px 0px 275px;font-size:16px;display:none;"></div>
																			<div id="download_speed" style="position:absolute;margin:147px 0px 0px 187px;font-size:24px;width:60px;text-align:center;">0.00</div>
																			<div style="background-image:url('images/New_ui/speedmeter.png');height:188px;width:270px;background-repeat:no-repeat;margin:-10px 0px 0px 70px"></div>
																			<div id="indicator_download" class="transition_style" style="background-image:url('images/New_ui/indicator.png');position:absolute;height:100px;width:50px;background-repeat:no-repeat;margin:-110px 0px 0px 194px;"></div>
																		</td>
																		<td id="upload_unit">
																			<div style="margin:-10px 0 5px -55px;font-size:16px;text-align:center;">上行速度</div>
																			<div style="position:absolute;margin:12px 0px 0px 88px;font-size:16px;display:none;"></div>
																			<div style="position:absolute;margin:-6px 0px 0px 203px;font-size:16px;display:none;"></div>
																			<div style="position:absolute;margin:50px 0px 0px 275px;font-size:16px;display:none;"></div>
																			<div style="position:absolute;margin:120px 0px 0px 270px;font-size:16px;display:none;"></div>
																			<div style="position:absolute;margin:150px 0px 0px 250px;font-size:16px;display:none;"></div>
																			<div id="upload_speed" style="position:absolute;margin:147px 0px 0px 130px;font-size:24px;text-align:center;width:60px;">0.00</div>
																			<div style="background-image:url('images/New_ui/speedmeter.png');height:188px;width:270px;background-repeat:no-repeat;margin:-10px 0px 0px 10px"></div>
																			<div id="indicator_upload" class="transition_style" style="background-image:url('images/New_ui/indicator.png');position:absolute;height:100px;width:50px;background-repeat:no-repeat;margin:-110px 0px 0px 133px;"></div>
																		</td>
																	</tr>
																</table>
															</div>
														</td>
													</tr>


		 										</table>
		 										<div id="warn" style="display: none;margin-top: 20px;text-align: center;font-size: 20px;margin-bottom: 20px;"class="formfontdesc" ><i></i></div>
												<div class="apply_gen">
													<button id="cmdBtn" class="button_gen" onclick="onSubmitCtrl(this, ' Refresh ')">开始测速</button>
												</div>
												<div style="margin-left:5px;margin-top:10px;margin-bottom:10px"><img src="/images/New_ui/export/line_export.png"></div>
												<div class="KoolshareBottom">
													<br/>论坛技术支持： <a href="http://www.koolshare.cn" target="_blank"> <i><u>www.koolshare.cn</u></i> </a> <br/>
													后台技术支持： <i>Xiaobao</i> <br/>
													Shell, Web by： <i>wangchll</i><br/>
												</div>
											</td>
										</tr>
									</table>
								</td>
								<td width="10" align="center" valign="top"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
		<div id="footer"></div>
    </body>
</html>
