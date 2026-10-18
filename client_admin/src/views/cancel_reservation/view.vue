<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','photographer_name') || $check_field('add','photographer_name') || $check_field('set','photographer_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="摄影师姓名" prop="photographer_name">
					<el-input id="photographer_name" v-model="form['photographer_name']" placeholder="请输入摄影师姓名"
							  v-if="user_group === '管理员' || (form['cancel_reservation_id'] && $check_field('set','photographer_name')) || (!form['cancel_reservation_id'] && $check_field('add','photographer_name'))" :disabled="disabledObj['photographer_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','photographer_name')">{{form['photographer_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','photographic_grade') || $check_field('add','photographic_grade') || $check_field('set','photographic_grade')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="摄影等级" prop="photographic_grade">
					<el-input id="photographic_grade" v-model="form['photographic_grade']" placeholder="请输入摄影等级"
							  v-if="user_group === '管理员' || (form['cancel_reservation_id'] && $check_field('set','photographic_grade')) || (!form['cancel_reservation_id'] && $check_field('add','photographic_grade'))" :disabled="disabledObj['photographic_grade_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','photographic_grade')">{{form['photographic_grade']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','reservation_price') || $check_field('add','reservation_price') || $check_field('set','reservation_price')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="预约价格" prop="reservation_price">
					<el-input id="reservation_price" v-model="form['reservation_price']" placeholder="请输入预约价格"
							  v-if="user_group === '管理员' || (form['cancel_reservation_id'] && $check_field('set','reservation_price')) || (!form['cancel_reservation_id'] && $check_field('add','reservation_price'))" :disabled="disabledObj['reservation_price_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','reservation_price')">{{form['reservation_price']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','user') || $check_field('add','user') || $check_field('set','user')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="用户" prop="user">
						<el-select v-if="user_group === '管理员' || (form['cancel_reservation_id'] && $check_field('set','user')) || (!form['cancel_reservation_id'] && $check_field('add','user'))" id="user" v-model="form['user']" :disabled="disabledObj['user_isDisabled']">
							<el-option v-for="o in list_user_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
						<el-select v-else-if="$check_field('get','user')" id="user" v-model="form['user']" :disabled="true">
							<el-option v-for="o in list_user_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','time_of_appointment') || $check_field('add','time_of_appointment') || $check_field('set','time_of_appointment')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="预约时间" prop="time_of_appointment">
					<el-date-picker :disabled="disabledObj['time_of_appointment_isDisabled']" v-if="user_group === '管理员' || (form['cancel_reservation_id'] && $check_field('set','time_of_appointment')) || (!form['cancel_reservation_id'] && $check_field('add','time_of_appointment'))" id="time_of_appointment"
						v-model="form['time_of_appointment']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','time_of_appointment')">{{form['time_of_appointment']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','photography_location') || $check_field('add','photography_location') || $check_field('set','photography_location')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="摄影地点" prop="photography_location">
					<el-input id="photography_location" v-model="form['photography_location']" placeholder="请输入摄影地点"
							  v-if="user_group === '管理员' || (form['cancel_reservation_id'] && $check_field('set','photography_location')) || (!form['cancel_reservation_id'] && $check_field('add','photography_location'))" :disabled="disabledObj['photography_location_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','photography_location')">{{form['photography_location']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','cancellation_reason') || $check_field('add','cancellation_reason') || $check_field('set','cancellation_reason')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="取消原因" prop="cancellation_reason">
					<el-input type="textarea" id="cancellation_reason" v-model="form['cancellation_reason']" placeholder="请输入取消原因"
						v-if="user_group === '管理员' || (form['cancel_reservation_id'] && $check_field('set','cancellation_reason')) || (!form['cancel_reservation_id'] && $check_field('add','cancellation_reason'))" :disabled="disabledObj['cancellation_reason_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','cancellation_reason')">{{form['cancellation_reason']}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="审核状态" prop="examine_state">
					<el-select id="examine_state" v-model="form['examine_state']"
						v-if="user_group === '管理员' || (form['examine_state'] && $check_examine()) || (!form['examine_state'] && $check_examine())">
						<el-option key="未审核" label="未审核" value="未审核"></el-option>
						<el-option key="已通过" label="已通过" value="已通过"></el-option>
						<el-option key="未通过" label="未通过" value="未通过"></el-option>
					</el-select>
					<div v-else>{{form["examine_state"]}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="审核回复" prop="examine_reply">
					<el-input id="examine_reply" v-model="form['examine_reply']" placeholder="请输入审核回复"
						v-if="user_group === '管理员' || (form['examine_reply'] && $check_examine()) || (!form['examine_reply'] && $check_examine())"></el-input>
					<div v-else>{{form["examine_reply"]}}</div>
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
				field: "cancel_reservation_id",
				url_add: "~/api/cancel_reservation/add?",
				url_set: "~/api/cancel_reservation/set?",
				url_get_obj: "~/api/cancel_reservation/get_obj?",
				url_upload: "~/api/cancel_reservation/upload?",

				query: {
					"cancel_reservation_id": 0,
				},

				form: {
					"photographer_name":'', // 摄影师姓名
					"photographic_grade":'', // 摄影等级
					"reservation_price":'', // 预约价格
					"user": 0, // 用户
					"time_of_appointment":'', // 预约时间
					"photography_location":'', // 摄影地点
					"cancellation_reason":'', // 取消原因
					"examine_state": "未审核",
					"examine_reply": "",
					"cancel_reservation_id": 0, // ID

				},
				disabledObj:{
					"photographer_name_isDisabled": false,
					"photographic_grade_isDisabled": false,
					"reservation_price_isDisabled": false,
					"user_isDisabled": false,
					"time_of_appointment_isDisabled": false,
					"photography_location_isDisabled": false,
					"cancellation_reason_isDisabled": false,
				},
				// 用户列表
				list_user_user: [],
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
					bl = this.$check_action('/cancel_reservation/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/cancel_reservation/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/cancel_reservation/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/cancel_reservation/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/cancel_reservation/view','get');
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
