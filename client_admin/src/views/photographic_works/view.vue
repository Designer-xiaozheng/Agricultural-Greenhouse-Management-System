<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','work_name') || $check_field('add','work_name') || $check_field('set','work_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="作品名称" prop="work_name">
					<el-input id="work_name" v-model="form['work_name']" placeholder="请输入作品名称"
							  v-if="user_group === '管理员' || (form['photographic_works_id'] && $check_field('set','work_name')) || (!form['photographic_works_id'] && $check_field('add','work_name'))" :disabled="disabledObj['work_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','work_name')">{{form['work_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','photography_type') || $check_field('add','photography_type') || $check_field('set','photography_type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="摄影类型" prop="photography_type">
					<el-select id="photography_type" v-model="form['photography_type']"
						v-if="user_group === '管理员' || (form['photographic_works_id'] && $check_field('set','photography_type')) || (!form['photographic_works_id'] && $check_field('add','photography_type'))">
						<el-option v-for="o in list_photography_type" :key="o['photography_type']" :label="o['photography_type']"
							:value="o['photography_type']">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','photography_type')">{{form['photography_type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','photographic_cover') || $check_field('add','photographic_cover') || $check_field('set','photographic_cover')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="摄影封面" prop="photographic_cover">
					<el-upload :disabled="disabledObj['photographic_cover_isDisabled']" id="photographic_cover" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_photographic_cover"
						:show-file-list="false" v-if="user_group === '管理员' || (form['photographic_works_id'] && $check_field('set','photographic_cover')) || (!form['photographic_works_id'] && $check_field('add','photographic_cover'))">
						<img v-if="form['photographic_cover']" :src="$fullUrl(form['photographic_cover'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','photographic_cover')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['photographic_cover'])" :preview-src-list="[$fullUrl(form['photographic_cover'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','shooting_time') || $check_field('add','shooting_time') || $check_field('set','shooting_time')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="拍摄时间" prop="shooting_time">
					<el-date-picker :disabled="disabledObj['shooting_time_isDisabled']" v-if="user_group === '管理员' || (form['photographic_works_id'] && $check_field('set','shooting_time')) || (!form['photographic_works_id'] && $check_field('add','shooting_time'))" id="shooting_time"
						v-model="form['shooting_time']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','shooting_time')">{{form['shooting_time']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','shooting_location') || $check_field('add','shooting_location') || $check_field('set','shooting_location')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="拍摄地点" prop="shooting_location">
					<el-input id="shooting_location" v-model="form['shooting_location']" placeholder="请输入拍摄地点"
							  v-if="user_group === '管理员' || (form['photographic_works_id'] && $check_field('set','shooting_location')) || (!form['photographic_works_id'] && $check_field('add','shooting_location'))" :disabled="disabledObj['shooting_location_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','shooting_location')">{{form['shooting_location']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','photographer') || $check_field('add','photographer') || $check_field('set','photographer')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="摄影师" prop="photographer">
					<el-input id="photographer" v-model="form['photographer']" placeholder="请输入摄影师"
							  v-if="user_group === '管理员' || (form['photographic_works_id'] && $check_field('set','photographer')) || (!form['photographic_works_id'] && $check_field('add','photographer'))" :disabled="disabledObj['photographer_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','photographer')">{{form['photographer']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','work_details') || $check_field('add','work_details') || $check_field('set','work_details')" :xs="24" :sm="24" :lg="24" class="el_form_editor_warp">
				<el-form-item label="作品详情" prop="work_details">
					<quill-editor v-model.number="form['work_details']"
						v-if="user_group === '管理员' || (form['photographic_works_id'] && $check_field('set','work_details')) || (!form['photographic_works_id'] && $check_field('add','work_details')) ">
					</quill-editor>
					<div v-else-if="$check_field('get','work_details')" v-html="form['work_details']"></div>
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
				field: "photographic_works_id",
				url_add: "~/api/photographic_works/add?",
				url_set: "~/api/photographic_works/set?",
				url_get_obj: "~/api/photographic_works/get_obj?",
				url_upload: "~/api/photographic_works/upload?",

				query: {
					"photographic_works_id": 0,
				},

				form: {
					"work_name":'', // 作品名称
					"photography_type":'', // 摄影类型
					"photographic_cover":'', // 摄影封面
					"shooting_time":'', // 拍摄时间
					"shooting_location":'', // 拍摄地点
					"photographer":'', // 摄影师
					"work_details":'', // 作品详情
					"photographic_works_id": 0, // ID

				},
				disabledObj:{
					"work_name_isDisabled": false,
					"photography_type_isDisabled": false,
					"photographic_cover_isDisabled": false,
					"shooting_time_isDisabled": false,
					"shooting_location_isDisabled": false,
					"photographer_isDisabled": false,
					"work_details_isDisabled": false,
				},
				//摄影类型选项列表
				list_photography_type: [],
			}
		},
		methods: {
			/**
			 * 获取摄影类型列表
			 */
			async get_list_photography_type() {
				var json = await this.$get("~/api/photographic_classification/get_list?");
				if(json.result && json.result.list){
					this.list_photography_type = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			/**
			 * 上传摄影封面
			 * @param {Object} param图片参数
			 */
			upload_photographic_cover(param){
				this.uploadFile(param.file, "photographic_cover");
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
        if (this.form["shooting_time"].indexOf("-")===-1){
          this.form["shooting_time"] = this.$toTime(parseInt(this.form["shooting_time"]),"yyyy-MM-dd")
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
        if(this.form["shooting_time"]=="0000-00-00"){
          this.form["shooting_time"] = null;
        }
				if(parseInt(this.form["shooting_time"]) > 9999){
					this.form["shooting_time"] = this.$toTime(parseInt(this.form["shooting_time"]),"yyyy-MM-dd")
				}
			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/photographic_works/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/photographic_works/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/photographic_works/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/photographic_works/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/photographic_works/view','get');
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
			this.get_list_photography_type();
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
