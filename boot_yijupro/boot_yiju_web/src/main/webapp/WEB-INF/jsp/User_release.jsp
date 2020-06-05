<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/5/29
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../css/User_release.css" />
    <link rel="stylesheet" href="../layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="../css/pages-zoom.css"/> <!-- 放大镜效果-->
</head>
<body>
<div class="g-main">
    <div class="m-form">
        <form class="layui-form"   id="user_houseinfo_form">
            <div class="form-box">
                <div class="box-l m-entry">

                    <!-- ----------------房屋图片----------------- -->
                    <dl>
                        <dt>审核状态</dt>
                        <dd class="ddwidth">
                            <input name="housepd" readonly value="已通过" type="text" placeholder="房屋状态" style="width: 80px; font-size: 15px; color: gray;">
                        </dd>
                    </dl>
                    <!-- ----------------房屋图片完----------------- -->

                    <!-- ----------------所在城市----------------- -->
                    <dl class="compact">
                        <dt>所在城市</dt>
                        <dd>
                            <select name="house_area_code"  lay-verify="required" id="prov" lay-filter="provin">
                                <option value="">省份</option>
                                <c:forEach items="${Sys_positionlist}" var="Sys_position">
                                    <option   value="${Sys_position.area_code}" ${Sys_position.area_code==house.house_area_code?'selected':''}>${Sys_position.area_name}</option>
                                </c:forEach>
                            </select>
                        </dd>
                        <dd style="margin-left: 20px;">
                            <select name="house_city_code" id="zone" lay-verify="required" lay-filter="house_city_code">
                                <option value="">城市</option>
                                <option value="${house.house_city_code}" selected>${house.city_code}</option>

                            </select>
                        </dd>
                        <dd style="margin-left: 20px;">
                            <select name="district" lay-verify="required" id="area">
                                <option value="">市区</option>
                                <option value="${house.district}" selected>${house.district}</option>

                            </select>
                        </dd>
                    </dl>
                    <dl>
                        <dt>小区</dt>
                        <dd class="addressdd">
                            <span>所在路:</span>
                            <input name="address" id="address" value="${house.address}" type="text" placeholder="请输入您的房屋所在路" class="borderinput">
                        </dd>
                        <dd class="areadd">
                            <span>小区:</span>
                            <input name="area" id="area" value="${house.area}" type="text" placeholder="请输入您的房屋所在小区">
                        </dd>
                    </dl>
                    <!-- ----------------所在城市完----------------- -->
                    <!-- ----------------房屋地址----------------- -->
                    <dl>
                        <dt>房屋地址</dt>
                        <dd>
                            <div class="u-select u-select-build">
                                <input placeholder="楼栋号" id="house_building_number" name="house_building_number" maxlength="10" data-id="" class="u-select-selected" type="text"
                                       value="${house_particulars.house_building_number}号楼">
                            </div>
                            <div class="u-select u-select-build">
                                <input placeholder="单元号" id="house_element" name="house_element" maxlength="10" data-id="" class="u-select-selected" type="text" value="${house_particulars.house_element}单元">
                            </div>
                            <div class="u-select u-select-build">
                                <input placeholder="楼层" id="floot" name="floot" maxlength="10" data-id="" class="u-select-selected" type="text" value="${house.floot}楼">
                            </div>
                            <div class="u-select u-select-build">
                                <input placeholder="门牌号" id="house_doorplate" name="house_doorplate" maxlength="10" data-id="" class="u-select-selected" type="text" value="${house_particulars.house_doorplate}室">
                            </div>
                        </dd>
                    </dl>
                    <!-- ----------------房屋地址完----------------- -->
                    <!-- ----------------出租方式----------------- -->
                    <dl>
                        <dt>出租方式</dt>
                        <dd>
                            <select id="renttype" name="renttype" lay-verify="required">
                                <option value="${house.renttype}" ${house.renttype==0?'selected':''}>整租</option>
                                <option value="${house.renttype}" ${house.renttype==1?'selected':''}>合租</option>
                                <option value="${house.renttype}" ${house.renttype==2?'selected':''}>转租</option>
                            </select>
                        </dd>
                        <dd>
                            <select id="houseType" name="houseType" lay-verify="required">
                                <option value="${house.houseType}" ${house.houseType=='一室一厅'?'selected':''}>一室一厅</option>
                                <option value="${house.houseType}" ${house.houseType=='一室两厅'?'selected':''}>一室两厅</option>
                            </select>
                        </dd>
                    </dl>
                    <!-- ----------------出租方式完----------------- -->
                    <!-- ----------------房屋信息----------------- -->
                    <dl>
                        <dt>房屋信息</dt>
                        <br />
                        <dd style="margin-left: 120px;">
                            <span>房屋标题:</span>
                            <input id="rname" name="rname" value="${house.rname}" type="text" placeholder="房屋标题" style="width: 210px;">
                        </dd>
                        <dd style="margin-left: 10px;">
                            <span>房屋介绍:</span>
                            <input id="houseIntroduce" name="houseIntroduce" readonly value="${house.houseIntroduce}" type="text" placeholder="房屋介绍" style="width: 210px;">
                        </dd>
                        <br />
                        <dd class="ddwidthmargin">
                            <span>房屋建立年份:</span>
                            <input id="house_createYear" name="house_createYear"  readonly value="<fmt:formatDate value="${house.house_createYear}" pattern="yyyy-MM-dd"/>"  type="text" placeholder="房屋建立年份" style="width: 80px;color: gray;">
                        </dd>
                        <dd class="ddwidth">
                            <span>房屋发布时间:</span>
                            <input id="house_issuetime" name="house_issuetime" readonly value="<fmt:formatDate value="${house.house_issuetime}" pattern="yyyy-MM-dd"/>" type="text" placeholder="房屋发布时间" style="width: 80px; color: gray;">
                        </dd>
                        <dd class="ddwidth">
                            <span>修改时间:</span>
                            <input id="house_user_updatedate" name="house_user_updatedate" readonly value="<fmt:formatDate value="${house_particulars.house_user_updatedate}" pattern="yyyy-MM-dd"/>" type="text" placeholder="修改时间" style="width: 80px;color: gray;">
                        </dd>

                        <dd class="ddwidthmargin">
                            <span>租金:</span>
                            <input id="price" name="price" value="${house.price}" type="text" placeholder="请输入您期望租出的价格" class="ddinput">
                            <!-- <div class="unit">元/月</div> -->
                            <span>元/月</span>
                        </dd>
                        <dd class="ddwidth">
                            <span>房屋大小:</span>
                            <input id="housesize" name="housesize" value="${house.housesize}" type="text" placeholder="请输入您的房屋大小" style="width: 40px;">
                            <span>m²</span>
                        </dd>
                        <dd class="ddwidth">
                            <span>朝向:</span>
                            <input id="house_orientation" name="house_orientation" value="${house_particulars.house_orientation}" type="text" placeholder="请输入您的房屋朝向" style="width: 40px;">
                        </dd>

                        <br />
                        <dd class="ddwidthmargin">
                            <span>付款:</span>
                            <span class="dd_select_width">
										<select id="house_payment" name="house_payment" lay-verify="required">
											<option value="${house_particulars.house_payment}" ${house_particulars.house_payment=='月付'?'selected':''}>月付</option>
											<option value="${house_particulars.house_payment}" ${house_particulars.house_payment=='季付'?'selected':''}>季付</option>
											<option value="${house_particulars.house_payment}" ${house_particulars.house_payment=='半年付'?'selected':''}>半年付</option>
											<option value="${house_particulars.house_payment}" ${house_particulars.house_payment=='年付'?'selected':''}>年付</option>
										</select>
									</span>
                        </dd>
                        <dd class="ddwidth">
                            <span>总楼层:</span>
                            <input id="house_floorcount" name="house_floorcount" value="${house_particulars.house_floorcount}" type="text" placeholder="请输入您的房屋朝向" style="width: 40px;">
                        </dd>

                        <dd class="ddwidth">
                            <span>上次维护时间:</span>
                            <input name="house_maintain" id="test1" value="<fmt:formatDate value="${house_particulars.house_maintain}" pattern="yyyy-MM-dd"/>" type="text" placeholder="请输入您的房屋维护时间" class="layui-input" id="test1"
                                   style="width: 80px;">
                        </dd>
                        <br />

                        <dd class="ddwidthmargin">
                            <span>入住:</span>
                            <span class="dd_select_width">
										<select id="house_checkin" name="house_checkin" lay-verify="required">
											<option value="${house_particulars.house_checkin}" ${house_particulars.house_checkin=='随时入住'?'selected':''}>随时入住</option>
											<option value="${house_particulars.house_checkin}" ${house_particulars.house_checkin=='时间与户主商确'?'selected':''}>时间与户主商确</option>
										</select>
									</span>
                        </dd>

                        <dd class="ddwidth">
                            <span>看房:</span>
                            <span class="dd_select_width">
										<select id="house_see" name="house_see" lay-verify="required">
											<option value="${house_particulars.house_see}" ${house_particulars.house_see=='随时看房'?'selected':''}>随时看房</option>
											<option value="${house_particulars.house_see}" ${house_particulars.house_see=='提前联系'?'selected':''}>提前联系</option>
										</select>
									</span>
                        </dd>
                        <br />
                    </dl>
                    <!-- ----------------房屋信息完----------------- -->
                    <!-- ----------------房屋配置完----------------- -->
                    <dl>
                        <dt>房屋配置</dt>
                        <br />
                        <dd class="ddwidthmargin">
                            <span>用水:</span>
                            <span class="dd_select_width">
										<select id="house_water" name="house_water" lay-verify="required">
											<option value="${house_particulars.house_water}" ${house_particulars.house_water=='民水'?'selected':''}>民水</option>
											<option value="${house_particulars.house_water}" ${house_particulars.house_water=='商水'?'selected':''}>商水</option>
										</select>
									</span>
                        </dd>
                        <dd class="ddwidth">
                            <span>用电:</span>
                            <span class="dd_select_width">
										<select id="house_electricity" name="house_electricity" lay-verify="required">
											<option value="${house_particulars.house_electricity}" ${house_particulars.house_electricity=='民电'?'selected':''}>民电</option>
											<option value="${house_particulars.house_electricity}" ${house_particulars.house_electricity=='商电'?'selected':''}>商电</option>
										</select>
									</span>
                        </dd>
                        <dd class="ddwidth">
                            <span>燃气:</span>
                            <span class="dd_select_width">
										<select id="house_fuelgas" name="house_fuelgas" lay-verify="required">
											<option value="${house_particulars.house_fuelgas}" ${house_particulars.house_fuelgas=='无'?'selected':''}>无</option>
											<option value="${house_particulars.house_fuelgas}" ${house_particulars.house_fuelgas=='有'?'selected':''}>有</option>
										</select>
									</span>
                        </dd>
                        <br />


                        <dd class="ddwidthmargin">
                            <span>采暖:</span>
                            <span class="dd_select_width">
										<select id="house_heating" name="house_heating" lay-verify="required">
											<option value="无">无</option>
											<option value="${house_particulars.house_heating}" ${house_particulars.house_heating=='集中供暖'?'selected':''}>集中供暖</option>
											<option value="${house_particulars.house_heating}" ${house_particulars.house_heating=='自主采暖'?'selected':''}>自主采暖</option>
											<option value="${house_particulars.house_heating}" ${house_particulars.house_heating=='集中供暖'?'selected':''}>集中供暖</option>
										</select>
									</span>
                        </dd>
                        <dd class="ddwidth">
                            <span>洗衣机:</span>
                            <span class="dd_select_width">
										<select id="washing" name="washing" lay-verify="required">
											<option value="${house_particulars.washing}" ${house_particulars.washing==0?'selected':''}>有</option>
											<option value="${house_particulars.washing}" ${house_particulars.washing==1?'selected':''}>无</option>
										</select>
									</span>
                        </dd>
                        <dd class="ddwidth">
                            <span>空调:</span>
                            <span class="dd_select_width">
										<select id="airconditioner" name="airconditioner" lay-verify="required">
											<option value="${house_particulars.airconditioner}" ${house_particulars.airconditioner==0?'selected':''}>有</option>
											<option value="${house_particulars.airconditioner}" ${house_particulars.airconditioner==1?'selected':''}>无</option>
										</select>
									</span>
                        </dd>
                        <br />


                        <dd class="ddwidthmargin">
                            <span>衣柜:</span>
                            <span class="dd_select_width">
										<select id="closet" name="closet" lay-verify="required">
											<option value="${house_particulars.closet}" ${house_particulars.closet==0?'selected':''}>有</option>
											<option value="${house_particulars.closet}" ${house_particulars.closet==1?'selected':''}>无</option>
										</select>
									</span>
                        </dd>
                        <dd class="ddwidth">
                            <span>电视:</span>
                            <span class="dd_select_width">
										<select id="TV" name="TV" lay-verify="required">
											<option value="${house_particulars.TV}" ${house_particulars.TV==0?'selected':''}>有</option>
											<option value="${house_particulars.TV}" ${house_particulars.TV==1?'selected':''}>无</option>
										</select>
									</span>
                        </dd>
                        <dd class="ddwidth">
                            <span>冰箱:</span>
                            <span class="dd_select_width">
										<select id="refrigerator" name="refrigerator" lay-verify="required">
											<option value="${house_particulars.refrigerator}" ${house_particulars.refrigerator==0?'selected':''}>有</option>
											<option value="${house_particulars.refrigerator}" ${house_particulars.refrigerator==1?'selected':''}>无</option>
										</select>
									</span>
                        </dd>
                        <br />

                        <dd class="ddwidthmargin">
                            <span>热水器:</span>
                            <span style="width: 125px;">
										<select id="waterheater" name="waterheater" lay-verify="required">
											<option value="${house_particulars.waterheater}" ${house_particulars.waterheater==0?'selected':''}>有</option>
											<option value="${house_particulars.waterheater}" ${house_particulars.waterheater==1?'selected':''}>无</option>
										</select>
									</span>
                        </dd>
                        <dd class="ddwidth">
                            <span>床 :</span>
                            <span class="dd_select_width">
										<select id="bed" name="bed" lay-verify="required">
											<option value="${house_particulars.bed}" ${house_particulars.bed==0?'selected':''}>有</option>
											<option value="${house_particulars.bed}" ${house_particulars.bed==1?'selected':''}>无</option>
										</select>
									</span>
                        </dd>
                        <dd class="ddwidth">
                            <span>暖气:</span>
                            <span class="dd_select_width">
										<select id="heating" name="heating" lay-verify="required">
											<option value="${house_particulars.heating}" ${house_particulars.heating==0?'selected':''}>有</option>
											<option value="${house_particulars.heating}" ${house_particulars.heating==1?'selected':''}>无</option>
										</select>
									</span>
                        </dd>
                        <br />


                        <dd class="ddwidthmargin">
                            <span>宽带:</span>
                            <span class="dd_select_width">
										<select id="broadband" name="broadband" lay-verify="required">
											<option value="${house_particulars.broadband}" ${house_particulars.broadband==0?'selected':''}>有</option>
											<option value="${house_particulars.broadband}" ${house_particulars.broadband==1?'selected':''}>无</option>
										</select>
									</span>
                        </dd>
                        <dd class="ddwidth">
                            <span>天然气:</span>
                            <span class="dd_select_width">
										<select id="naturalgas" name="naturalgas" lay-verify="required">
											<option value="${house_particulars.naturalgas}" ${house_particulars.naturalgas==0?'selected':''}>有</option>
											<option value="${house_particulars.naturalgas}" ${house_particulars.naturalgas==1?'selected':''}>无</option>
										</select>
									</span>
                        </dd>


                        <dd class="ddwidth">
                            <span>电梯:</span>
                            <span class="dd_select_width">
										<select id="house_elevator" name="house_elevator" lay-verify="required">
											<option value="${house_particulars.house_elevator}" ${house_particulars.house_elevator=='有'?'selected':''}>有</option>
											<option value="${house_particulars.house_elevator}" ${house_particulars.house_elevator=='无'?'selected':''}>无</option>
										</select>
									</span>
                        </dd>
                        <br />

                        <dd class="ddwidthmargin">
                            <span>车位:</span>
                            <span class="dd_select_width">
										<select id="house_carstall" name="house_carstall" lay-verify="required">
											<option value="${house_particulars.house_carstall}" ${house_particulars.house_carstall=='有'?'selected':''}>有</option>
											<option value="${house_particulars.house_carstall}" ${house_particulars.house_carstall=='无'?'selected':''}>无</option>
											<option value="${house_particulars.house_carstall}" ${house_particulars.house_carstall=='租用车位'?'selected':''}>租用车位</option>
											<option value="${house_particulars.house_carstall}" ${house_particulars.house_carstall=='地面停车位'?'selected':''}>地面停车位</option>
											<option value="${house_particulars.house_carstall}" ${house_particulars.house_carstall=='地下车位'?'selected':''}>地下车位</option>
										</select>
									</span>
                        </dd>
                        <br />
                    </dl>
                    <!-- ----------------房屋配置完----------------- -->
                    <!-- ----------------房屋状态----------------- -->
                    <dl>
                        <dt>房屋状态</dt>

                        <dd class="">
                            <span>房屋状态:</span>
                            <span class="dd_select_width">
										<select id="state" name="state" lay-verify="required">
											<option value="${house.state}" ${house.state==0?'selected':''}>未出租</option>
											<option value="${house.state}" ${house.state==1?'selected':''}>已出租</option>
										</select>
									</span>
                        </dd>
                    </dl>
                    <!-- ----------------房屋状态完----------------- -->

                    <!-- ----------------房屋图片完----------------- -->

                    <!-- ----------------房屋收藏----------------- -->
                    <dl>
                        <dt>房屋收藏</dt>
                        <dd class="ddwidth">
                            <span>已被收藏次数:</span>
                            <input name="collectionCount" value="${collect}" type="text" placeholder="请输入您的房屋朝向" style="width: 40px;">
                        </dd>
                    </dl>
                    <!-- ----------------房屋收藏完----------------- -->

                    <!---------------------- 户主联系号码------------------ -->
                    <dl>
                        <dt>户主联系号码</dt>
                        <dd>
                            <input name="phone" value="${user.phone}" type="text" placeholder="您的联系方式，方便我们及时与您联系" autocomplete="off" style="width: 250px;">
                        </dd>
                    </dl>
                    <!---------------------- 户主联系号码------------------ -->

                    <!-- ----------------房屋图片----------------- -->
                    <dl>
                        <dt>房屋图片</dt>
                        <dd>
                            <span class="dd_select_width">房屋默认显示图片:</span>
                            <div class="jqzooms">
                                <img name="picture" id="MYimg" src="../images/${house.picture}" class="imgwidth" jqimg="images/${house.picture}"/>
                            </div>

                            <div style="margin-top: 50px;">
                                <a href="javascript:void(0)" class="file">
                                    <input type="file" name="" id="MYFile" />
                                </a>
                            </div>
                        </dd>
                    </dl>

                    <dl>
                        <dt>房屋详细图片</dt>
                        <dd class="house_xiangxi">
                           <%-- <div class="img_div">
                                <img src="img/imgEsc.png" style="width: 20px;" class="img_Esc" onclick="img_Esc(this)"/>
                                <img name="bigImg" id="upload" src="img/loginbagimg.jpg" class="imgwidth" onclick="imgwidth_click(this)"/>
                                <input class="upload_document" type="file" style="display: none;" accept="application/jpg/png/bmp/jpeg"/>
                            </div>--%>

                            <c:forEach items="${houseImgs}" var="img">
                                <div class="img_div">
                                    <img src="../img/imgEsc.png" style="width: 20px;" class="img_Esc" onclick="img_Esc(this)"/>
                                    <img name="bigImg" id="upload" src="../image/imgsmall/${img.smallImg}" class="imgwidth" onclick="imgwidth_click(this)"/>
                                    <input class="upload_document" type="file" style="display: none;" accept="application/jpg/png/bmp/jpeg"/>
                                </div>

                            </c:forEach>


                        </dd>
                    </dl>

                    <!-- ----------------房产证照片----------------- -->
                    <dl>
                        <dt>房产证照片</dt>
                        <dd>
                            <div class="jqzoom" style=" margin-left: 130px;">
                                <img id="Myhouse_proprietary" name="house_certificate_img" src="img/loginbagimg.jpg" style="width: 200px;height: 300px;" jqimg="img/loginbagimg.jpg" />
                            </div>
                            <div style="margin-top: 50px; margin-left: 120px;">
                                <a href="javascript:void(0)" class="file">
                                    <input type="file"  id="Myhouse_proprietary_File" />
                                </a>
                            </div>
                        </dd>
                    </dl>
                    <!-- ----------------房屋收藏完----------------- -->

                    <!-- ----------------房屋收藏---------------q-- -->
                    <!-- ----------------房屋收藏完----------------- -->
                    <dl>
                        <dt>图形验证码</dt>
                        <dd>
                            <input name="verify_code" id="verify_code" value="" type="text" placeholder="请输入图形验证码中的结果" autocomplete="off" style="width: 170px;">
                            <div class="btn-getcode-sms">
                               <%-- <img src="/aj/get/imgCode" alt="验证码">--%>

                                  <%-- <input type="text" id="check"
                                                                     name="check" class="check">--%>
                                   <img src="/user/draw" height="32px" alt="" onclick="changeCheckCode(this)"> <script
                                           type="text/javascript">
                                       //图片点击事件
                                       function changeCheckCode(img) {
                                           alert("s");
                                           img.src = "/user/draw"

                                       }
                                   </script>
                            </div>
                        </dd>
                    </dl>
                </div>


                <div class="m-submit">
                    <div class="wrap">
                        <div class="btn-submit" id="tijiao">
                            修改
                        </div>
                      <%--  <button type="button" id="tijiao">提交</button>--%>
                    </div>

                </div>

    </div>
        </form>
    <input type="hidden" value="${house_particulars.particulars_id}" id="particulars_id"/>
        <input type="hidden" value="${house.id}" id="id"/>
        <input type="hidden" value="${user.userid}" id="userid">
    </div>
</div>

<!-- 如果要使用Bootstrap的JS插件，必须引入jQuery -->
<script src="../js/jquery-3.3.1.js"></script>
<!-- Bootstrap的JS插件-->
<script src="../js/bootstrap.min.js"></script>
<script src="../layui/layui.js"></script>
<!-- 图片放大插件 -->
<script src="../js/jquery.jqzoom.js"></script>
<!-- 这是写的内容的JS -->
<script src="../js/Userrelease.js"></script>
<script>
    layui.use(['form','layedit'], function() {
        var form = layui.form,
            layedit = layui.layedit,
            $ = layui.jquery,
            layer = layui.layer;
            //获取城市列表
        form.on('select(provin)',function (data) {
            $.ajax({
                url:'/particulars/findCity',
                data:{area_index :data.value},
                type:"post",
                success:function (result) {
                    $("#zone").html('<option value="">请选择ba</option>');
                    if (result.length>0){
                        $("#zone").empty();
                        var proHtml ='';
                         $.each(JSON.parse(result),function (key,val) {
                             $("#zone").append(new Option(val.area_name,val.area_code));
                 });
                       form.render();
                    }
                    }
            });
        });

        //获取区域列表
        form.on('select(house_city_code)',function (data) {
            $.ajax({
                url:'/particulars/findCity',
                data:{area_index :data.value},
                type:"post",
                success:function (datas) {
                    alert(datas);
                    $("#area").html('<option value="">请选择ba</option>');
                    if (datas.length>0){
                        $("#area").empty();
                        $.each(JSON.parse(datas),function (key,val) {
                            $("#area").append(new Option(val.area_name,val.area_code));
                        });

                        form.render();
                    }
                }
            });
        });

    });


//form表单序列化
  /*  $.fn.serializeObject = function()
    {
        var o = {};
        var a = this.serializeArray();
        $.each(a, function() {
            if (o[this.name] !== undefined) {
                if (!o[this.name].push) {
                    o[this.name] = [o[this.name]];
                }
                o[this.name].push(this.value || '');
            } else {
                o[this.name] = this.value || '';
            }
        });
        return o;
    };
*/

$("#tijiao").click(function () {

    var updateHouse={
        "house":{
            "id":$("#id").val(),
            "house_area_code":$("#prov").val(),
            "house_city_code":$("#zone").val(),
            "district":$("#area").val(),
            "address":$("#address").val(),
            "floot":$("#floot").val(),
            "renttype":$("#renttype").val(),
            "state":$("#state").val(),
            "rname":$("#rname").val(),
            "houseIntroduce":$("#houseIntroduce").val(),
            "house_createYear":$("#house_createYear").val(),
            "house_issuetime":$("#house_issuetime").val(),
            "price":$("#MYFile").val(),
            "housesize":$("#housesize").val(),
            "houseType":$("#houseType").val(),
            "picture":$("#MYimg").val()

        },
        "user":{
            "phone":$("#phone").val(),
            "userid":$("#userid").val()
        },
        "particulars":{
            "particulars_id":$("#particulars_id").val(),
            "house_building_number":$("#house_building_number").val(),
            "house_element":$("#house_element").val(),
            "house_doorplate":$("#house_doorplate").val(),
            "house_user_updatedate":$("#house_user_updatedate").val(),
            "house_orientation":$("#house_orientation").val(),
            "house_water":$("#house_water").val(),
            "house_electricity":$("#house_electricity").val(),
            "house_fuelgas":$("#house_fuelgas").val(),
            "house_carstall":$("#house_carstall").val(),
            "TV":$("#TV").val(),
            "refrigerator":$("#refrigerator").val(),
            "waterheater":$("#waterheater").val(),
            "bed":$("#bed").val(),
            "heating":$("#heating").val(),
            "broadband":$("#broadband").val(),
            "naturalgas":$("#naturalgas").val(),
            "house_elevator":$("#house_elevator").val(),
            "closet":$("#closet").val(),
            "house_heating":$("#house_heating").val(),
            "washing":$("#washing").val(),
            "airconditioner":$("#airconditioner").val(),
            "house_see":$("#house_see").val(),
            "house_checkin":$("#house_checkin").val(),
            "house_maintain":$("#test1").val(),
            "house_floorcount":$("#house_floorcount").val(),
            "house_payment":$("#house_payment").val()
        },
        "houseImg":{

        }
    };
    alert(updateHouse);
    alert($("#Myhouse_proprietary_File").val());
    alert("s"+$(".smallImg").val());

    $.ajax({
        type:'post',
        url:'/particulars/updateHouse',
        dataType:'json',
        contentType:'application/json;charset=utf-8',
        data: JSON.stringify(updateHouse),
        success:function (data) {
           console.log(data);
            alert("成功！")
        }

    })

});










            //校验验证码
    function checkCode() {

        var check = $("#check").val();
        var flag = false;

        if (check == "") {
            $("#check").css("border", "1px solid red");
        } else {
            $("#check").css("border", "");
            flag = true;
        }
        return flag;
    }

  /*  function submitform(){
        alert("sss");
        if(formpd()){
            $("#user_houseinfo_form").submit();
        }else{
            $(".btn-submit").html("请将信息填写完整")
            $(".btn-submit").css("background","red");
            return false;
        }
    }

    function formpd(){
        if(null==$("#address").val() || "" ==$("#address").val()){
            $("#address").parent().addClass("borderinput")
            return false;
        }else if(null==$("#area").val() || "" ==$("#area").val()){
            $("#area").parent().addClass("borderinput")
            return false;
        }else if(null==$("#house_building_number").val() || "" ==$("#house_building_number").val()){
            $("#house_building_number").parent().addClass("borderinput")
            return false;
        }else if(null==$("#house_element").val() || "" ==$("#house_element").val()){
            $("#house_element").parent().addClass("borderinput")
            return false;
        }else if(null==$("#floot").val() || "" ==$("#floot").val()){
            $("#floot").parent().addClass("borderinput")
            return false;
        }else if(null==$("#verify_code").val() || "" ==$("#verify_code").val()){
            $("#verify_code").parent().addClass("borderinput")
            return false;
        }else{
            $("#address").parent().removeClass("borderinput");
            $("#area").parent().removeClass("borderinput");
            $("#house_building_number").parent().removeClass("borderinput");
            $("#house_element").parent().removeClass("borderinput");
            $("#floot").parent().removeClass("borderinput");
            $("#verify_code").parent().removeClass("borderinput");
            return true;
        }
    }*/
</script>
</body>

</html>
