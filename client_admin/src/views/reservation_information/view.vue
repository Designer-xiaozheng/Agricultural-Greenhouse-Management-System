<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','photographer_name') || $check_field('add','photographer_name') || $check_field('set','photographer_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="摄影师姓名" prop="photographer_name">
					<el-input id="photographer_name" v-model="form['photographer_name']" placeholder="请输入摄影师姓名"
							  v-if="user_group === '管理员' || (form['reservation_information_id'] && $check_field('set','photographer_name')) || (!form['reservation_information_id'] && $check_field('add','photographer_name'))" :disabled="disabledObj['photographer_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','photographer_name')">{{form['photographer_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','photographic_grade') || $check_field('add','photographic_grade') || $check_field('set','photographic_grade')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="摄影等级" prop="photographic_grade">
					<el-input id="photographic_grade" v-model="form['photographic_grade']" placeholder="请输入摄影等级"
							  v-if="user_group === '管理员' || (form['reservation_information_id'] && $check_field('set','photographic_grade')) || (!form['reservation_information_id'] && $check_field('add','photographic_grade'))" :disabled="disabledObj['photographic_grade_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','photographic_grade')">{{form['photographic_grade']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','reservation_price') || $check_field('add','reservation_price') || $check_field('set','reservation_price')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="预约价格" prop="reservation_price">
					<el-input id="reservation_price" v-model="form['reservation_price']" placeholder="请输入预约价格"
							  v-if="user_group === '管理员' || (form['reservation_information_id'] && $check_field('set','reservation_price')) || (!form['reservation_information_id'] && $check_field('add','reservation_price'))" :disabled="disabledObj['reservation_price_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','reservation_price')">{{form['reservation_price']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','user') || $check_field('add','user') || $check_field('set','user')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="用户" prop="user">
						<div v-if="user_group !== '管理员'">
							{{ get_user_session_user(form['user']) }}
							<!--<el-input id="business_name" v-model="form['user']" placeholder="请输入用户"-->
							<!--v-if="user_group === '管理员' || (form['reservation_information_id'] && $check_field('set','user')) || (!form['reservation_information_id'] && $check_field('add','user'))" :disabled="disabledObj['user_isDisabled']"></el-input>-->
							<!--<div v-else-if="$check_field('get','user')">{{form['user']}}</div>-->
							<el-select v-if="user_group === '管理员' || (form['reservation_information_id'] && $check_field('set','user')) || (!form['reservation_information_id'] && $check_field('add','user'))" id="user" v-model="form['user']" :disabled="disabledObj['user_isDisabled']">
								<el-option v-for="o in list_user_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
							<el-select v-else-if="$check_field('get','user')" id="user" v-model="form['user']" :disabled="true">
								<el-option v-for="o in list_user_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
						</div>
						<el-select v-else id="user" v-model="form['user']" :disabled="disabledObj['user_isDisabled']">
							<el-option v-for="o in list_user_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','time_of_appointment') || $check_field('add','time_of_appointment') || $check_field('set','time_of_appointment')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="预约时间" prop="time_of_appointment">
					<el-date-picker :disabled="disabledObj['time_of_appointment_isDisabled']" v-if="user_group === '管理员' || (form['reservation_information_id'] && $check_field('set','time_of_appointment')) || (!form['reservation_information_id'] && $check_field('add','time_of_appointment'))" id="time_of_appointment"
						v-model="form['time_of_appointment']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','time_of_appointment')">{{form['time_of_appointment']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','photography_location') || $check_field('add','photography_location') || $check_field('set','photography_location')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="摄影地点" prop="photography_location">
					<el-input id="photography_location" v-model="form['photography_location']" placeholder="请输入摄影地点"
							  v-if="user_group === '管理员' || (form['reservation_information_id'] && $check_field('set','photography_location')) || (!form['reservation_information_id'] && $check_field('add','photography_location'))" :disabled="disabledObj['photography_location_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','photography_location')">{{form['photography_location']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','reservation_status') || $check_field('add','reservation_status') || $check_field('set','reservation_status')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="预约状态" prop="reservation_status">
					<el-select id="reservation_status" v-model="form['reservation_status']"
						v-if="user_group === '管理员' || (form['reservation_information_id'] && $check_field('set','reservation_status')) || (!form['reservation_information_id'] && $check_field('add','reservation_status'))">
						<el-option v-for="o in list_reservation_status" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','reservation_status')">{{form['reservation_status']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','reservation_reply') || $check_field('add','reservation_reply') || $check_field('set','reservation_reply')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="预约回复" prop="reservation_reply">
					<el-input id="reservation_reply" v-model="form['reservation_reply']" placeholder="请输入预约回复"
							  v-if="user_group === '管理员' || (form['reservation_information_id'] && $check_field('set','reservation_reply')) || (!form['reservation_information_id'] && $check_field('add','reservation_reply'))" :disabled="disabledObj['reservation_reply_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','reservation_reply')">{{form['reservation_reply']}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8" class="el_form_btn_warp">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "reservation_information_id",
				url_add: "~/api/reservation_information/add?",
				url_set: "~/api/reservation_information/set?",
				url_get_obj: "~/api/reservation_information/get_obj?",
				url_upload: "~/api/reservation_information/upload?",

				query: {
					"reservation_information_id": 0,
				},

				form: {
					"photographer_name":'', // 摄影师姓名
					"photographic_grade":'', // 摄影等级
					"reservation_price":'', // 预约价格
					"user": 0, // 用户
					"time_of_appointment":'', // 预约时间
					"photography_location":'', // 摄影地点
					"reservation_status":'', // 预约状态
					"reservation_reply":'', // 预约回复
					"reservation_information_id": 0, // ID

				},
				disabledObj:{
					"photographer_name_isDisabled": false,
					"photographic_grade_isDisabled": false,
					"reservation_price_isDisabled": false,
					"user_isDisabled": false,
					"time_of_appointment_isDisabled": false,
					"photography_location_isDisabled": false,
					"reservation_status_isDisabled": false,
					"reservation_reply_isDisabled": false,
				},
				// 用户列表
				list_user_user: [],
				// 用户组
				group_user_user: "",
				//预约状态选项列表
				list_reservation_status: ['已预约','预约失败','已取消'],
			}
		},
		methods: {
			/**
			 * 获取普通用户用户列表
			 */
			async get_list_user_user() {
                // if(this.user_group !== "管理员" && this.form["user"] === 0) {
                //     this.form["user"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=普通用户");
                if(json.result && json.result.list){
                    this.list_user_user = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
			/**
			 * 获取普通用户用户组
			 */
			async get_group_user_user() {
				this.form["user"] = this.user.user_id;
				var json = await this.$get("~/api/user_group/get_obj?name=普通用户");
				if(json.result && json.result.obj){
					this.group_user_user = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_user(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_user.source_table+"/get_obj?"
				this.$get(url, user_id, function(res) {
					if (res.result && res.result.obj) {
						var arr = []
						for (let key in res.result.obj) {
							arr.push(key)
						}
						var arrForm = []
						for (let key in _this.form) {
							arrForm.push(key)
						}
						for (var i=0;i<arr.length;i++){
						  if (arr[i]!=='examine_state' && arr[i]!=='examine_reply') {
                for (var j = 0; j < arrForm.length; j++) {
                  if (arr[i] === arrForm[j]) {
                    if (arr[i] !== "user") {
                      _this.form[arrForm[j]] = res.result.obj[arr[i]]
                      _this.disabledObj[arrForm[j] + '_isDisabled'] = true
                      break;
                    } else {
                      _this.disabledObj[arrForm[j] + '_isDisabled'] = true
                    }
                  }
                }
              }
						}
					}
				});
			},
			get_user_user(id){
				var obj = this.list_user_user.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				// 获取缓存数据附加
				form = $.db.get("form");
				$.push(this.form ,form);
				/**
				* 请求列表前
				* @param {Object} param
				*/
				var user_group = this.user.user_group;
				if (user_group !== "管理员") {
					switch (user_group) {
						case "用户":
							if(param["user"] > 0){
								param["user"] = this.user.user_id;
							}
							break;
					}
				}
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
        if (this.form["time_of_appointment"].indexOf("-")===-1){
          this.form["time_of_appointment"] = this.$toTime(parseInt(this.form["time_of_appointment"]),"yyyy-MM-dd")
        }
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){
        if(this.form["time_of_appointment"]=="0000-00-00"){
          this.form["time_of_appointment"] = null;
        }
				if(parseInt(this.form["time_of_appointment"]) > 9999){
					this.form["time_of_appointment"] = this.$toTime(parseInt(this.form["time_of_appointment"]),"yyyy-MM-dd")
				}
			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/reservation_information/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/reservation_information/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/reservation_information/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/reservation_information/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/reservation_information/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
			this.get_list_user_user();
			this.get_group_user_user();
		},
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}
</style>
