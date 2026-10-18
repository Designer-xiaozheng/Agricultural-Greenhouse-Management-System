<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','photographer_name') || $check_field('add','photographer_name') || $check_field('set','photographer_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="摄影师姓名" prop="photographer_name">
					<el-input id="photographer_name" v-model="form['photographer_name']" placeholder="请输入摄影师姓名"
							  v-if="user_group === '管理员' || (form['photographer_id'] && $check_field('set','photographer_name')) || (!form['photographer_id'] && $check_field('add','photographer_name'))" :disabled="disabledObj['photographer_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','photographer_name')">{{form['photographer_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','photographic_grade') || $check_field('add','photographic_grade') || $check_field('set','photographic_grade')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="摄影等级" prop="photographic_grade">
					<el-input id="photographic_grade" v-model="form['photographic_grade']" placeholder="请输入摄影等级"
							  v-if="user_group === '管理员' || (form['photographer_id'] && $check_field('set','photographic_grade')) || (!form['photographer_id'] && $check_field('add','photographic_grade'))" :disabled="disabledObj['photographic_grade_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','photographic_grade')">{{form['photographic_grade']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','head_portrait') || $check_field('add','head_portrait') || $check_field('set','head_portrait')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="头像" prop="head_portrait">
					<el-upload :disabled="disabledObj['head_portrait_isDisabled']" id="head_portrait" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_head_portrait"
						:show-file-list="false" v-if="user_group === '管理员' || (form['photographer_id'] && $check_field('set','head_portrait')) || (!form['photographer_id'] && $check_field('add','head_portrait'))">
						<img v-if="form['head_portrait']" :src="$fullUrl(form['head_portrait'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','head_portrait')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['head_portrait'])" :preview-src-list="[$fullUrl(form['head_portrait'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','reservation_price') || $check_field('add','reservation_price') || $check_field('set','reservation_price')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="预约价格" prop="reservation_price">
					<el-input id="reservation_price" v-model="form['reservation_price']" placeholder="请输入预约价格"
							  v-if="user_group === '管理员' || (form['photographer_id'] && $check_field('set','reservation_price')) || (!form['photographer_id'] && $check_field('add','reservation_price'))" :disabled="disabledObj['reservation_price_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','reservation_price')">{{form['reservation_price']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','subject_type') || $check_field('add','subject_type') || $check_field('set','subject_type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="主摄类型" prop="subject_type">
					<el-select id="subject_type" v-model="form['subject_type']"
						v-if="user_group === '管理员' || (form['photographer_id'] && $check_field('set','subject_type')) || (!form['photographer_id'] && $check_field('add','subject_type'))">
						<el-option v-for="o in list_subject_type" :key="o['photography_type']" :label="o['photography_type']"
							:value="o['photography_type']">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','subject_type')">{{form['subject_type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','award_record') || $check_field('add','award_record') || $check_field('set','award_record')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="获奖记录" prop="award_record">
					<el-input type="textarea" id="award_record" v-model="form['award_record']" placeholder="请输入获奖记录"
						v-if="user_group === '管理员' || (form['photographer_id'] && $check_field('set','award_record')) || (!form['photographer_id'] && $check_field('add','award_record'))" :disabled="disabledObj['award_record_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','award_record')">{{form['award_record']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','curriculum_vitae') || $check_field('add','curriculum_vitae') || $check_field('set','curriculum_vitae')" :xs="24" :sm="24" :lg="24" class="el_form_editor_warp">
				<el-form-item label="个人简历" prop="curriculum_vitae">
					<quill-editor v-model.number="form['curriculum_vitae']"
						v-if="user_group === '管理员' || (form['photographer_id'] && $check_field('set','curriculum_vitae')) || (!form['photographer_id'] && $check_field('add','curriculum_vitae')) ">
					</quill-editor>
					<div v-else-if="$check_field('get','curriculum_vitae')" v-html="form['curriculum_vitae']"></div>
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
				field: "photographer_id",
				url_add: "~/api/photographer/add?",
				url_set: "~/api/photographer/set?",
				url_get_obj: "~/api/photographer/get_obj?",
				url_upload: "~/api/photographer/upload?",

				query: {
					"photographer_id": 0,
				},

				form: {
					"photographer_name":'', // 摄影师姓名
					"photographic_grade":'', // 摄影等级
					"head_portrait":'', // 头像
					"reservation_price":'', // 预约价格
					"subject_type":'', // 主摄类型
					"award_record":'', // 获奖记录
					"curriculum_vitae":'', // 个人简历
					"photographer_id": 0, // ID

				},
				disabledObj:{
					"photographer_name_isDisabled": false,
					"photographic_grade_isDisabled": false,
					"head_portrait_isDisabled": false,
					"reservation_price_isDisabled": false,
					"subject_type_isDisabled": false,
					"award_record_isDisabled": false,
					"curriculum_vitae_isDisabled": false,
				},
				//主摄类型选项列表
				list_subject_type: [],
			}
		},
		methods: {
			/**
			 * 上传头像
			 * @param {Object} param图片参数
			 */
			upload_head_portrait(param){
				this.uploadFile(param.file, "head_portrait");
			},
			/**
			 * 获取主摄类型列表
			 */
			async get_list_subject_type() {
				var json = await this.$get("~/api/photographic_classification/get_list?");
				if(json.result && json.result.list){
					this.list_subject_type = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
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
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){
			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/photographer/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/photographer/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/photographer/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/photographer/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/photographer/view','get');
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
			this.get_list_subject_type();
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
