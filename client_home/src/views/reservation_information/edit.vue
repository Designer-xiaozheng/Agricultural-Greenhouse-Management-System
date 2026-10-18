<template>
	<div class="diy_edit page_reservation_information" id="reservation_information_edit">
		<div class='warp'>
			<div class='container'>
				<div class='row diy_edit_content_box'>
					<div v-if="$check_field('set','photographer_name') || $check_field('add','photographer_name') || $check_field('get','photographer_name')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>摄影师姓名:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_photographer_name" v-model="form['photographer_name']" placeholder="请输入摄影师姓名" v-if="(form['photographer_name'] && $check_field('set','photographer_name')) || (!form['photographer_name'] && $check_field('add','photographer_name'))"  :disabled="disabledObj['photographer_name_isDisabled']"/>
							<span v-else-if="$check_field('get','photographer_name')">{{ form['photographer_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','photographic_grade') || $check_field('add','photographic_grade') || $check_field('get','photographic_grade')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>摄影等级:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_photographic_grade" v-model="form['photographic_grade']" placeholder="请输入摄影等级" v-if="(form['photographic_grade'] && $check_field('set','photographic_grade')) || (!form['photographic_grade'] && $check_field('add','photographic_grade'))"  :disabled="disabledObj['photographic_grade_isDisabled']"/>
							<span v-else-if="$check_field('get','photographic_grade')">{{ form['photographer_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','reservation_price') || $check_field('add','reservation_price') || $check_field('get','reservation_price')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>预约价格:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_reservation_price" v-model="form['reservation_price']" placeholder="请输入预约价格" v-if="(form['reservation_price'] && $check_field('set','reservation_price')) || (!form['reservation_price'] && $check_field('add','reservation_price'))"  :disabled="disabledObj['reservation_price_isDisabled']"/>
							<span v-else-if="$check_field('get','reservation_price')">{{ form['photographer_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','user') || $check_field('add','user') || $check_field('get','user')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>用户:
							</span>
						</div>
						<div class="diy_field diy_down">
							<select id="form_user" :disabled="disabledObj['user_isDisabled']" v-model="form['user']" v-if="(form['user'] && $check_field('set','user')) || (!form['user'] && $check_field('add','user'))" >
								<option v-for="o in list_user_user" :value="o['user_id']">
									{{o['nickname'] + '-' + o['username']}}
								</option>
							</select>
							<span v-else-if="$check_field('get','user')">{{ form['user'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','time_of_appointment') || $check_field('add','time_of_appointment') || $check_field('get','time_of_appointment')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>预约时间:
							</span>
						</div>
						<!-- 日期 -->
						<div class="diy_field diy_date">
							<input type="date" :disabled="disabledObj['time_of_appointment_isDisabled']" id="form_time_of_appointment" v-model="form['time_of_appointment']" placeholder="请输入预约时间" v-if="(form['time_of_appointment'] && $check_field('set','time_of_appointment')) || (!form['time_of_appointment'] && $check_field('add','time_of_appointment'))" />
							<span v-else-if="$check_field('get','time_of_appointment')">{{ form['photographer_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','photography_location') || $check_field('add','photography_location') || $check_field('get','photography_location')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>摄影地点:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_photography_location" v-model="form['photography_location']" placeholder="请输入摄影地点" v-if="(form['photography_location'] && $check_field('set','photography_location')) || (!form['photography_location'] && $check_field('add','photography_location'))"  :disabled="disabledObj['photography_location_isDisabled']"/>
							<span v-else-if="$check_field('get','photography_location')">{{ form['photographer_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','reservation_status') || $check_field('add','reservation_status') || $check_field('get','reservation_status')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>预约状态:
							</span>
						</div>
						<!-- 选项 -->
						<div class="diy_field diy_down">
							<select id="form_reservation_status" v-model="form['reservation_status']" v-if="(form['reservation_status'] && $check_field('set','reservation_status')) || (!form['reservation_status'] && $check_field('add','reservation_status'))" >
								<option v-for="o in list_reservation_status" :value="o">
									{{o}}
								</option>
							</select>
							<span v-else-if="$check_field('get','reservation_status')">{{ form['reservation_status'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','reservation_reply') || $check_field('add','reservation_reply') || $check_field('get','reservation_reply')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>预约回复:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_reservation_reply" v-model="form['reservation_reply']" placeholder="请输入预约回复" v-if="(form['reservation_reply'] && $check_field('set','reservation_reply')) || (!form['reservation_reply'] && $check_field('add','reservation_reply'))"  :disabled="disabledObj['reservation_reply_isDisabled']"/>
							<span v-else-if="$check_field('get','reservation_reply')">{{ form['photographer_name'] }}</span>
						</div>
					</div>
				</div>
				<div class="diy_edit_submit_box row">
					<div class="col-12">
						<div class="btn_box">
							<button class="btn_submit" @click="submit()">提交</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import mixin from "@/mixins/page.js";
	export default {
		mixins: [mixin],
		components: {},
		data() {
			return {
				url_get_obj: "~/api/reservation_information/get_obj?",
				url_add: "~/api/reservation_information/add?",
				url_set: "~/api/reservation_information/set?",

				// 登录权限
				oauth: {
					"signIn": true,
					"user_group": []
				},

				// 查询条件
				query: {
					"photographer_name": "",
					"photographic_grade": "",
					"reservation_price": "",
					"user": 0,
					"time_of_appointment": "",
					"photography_location": "",
					"reservation_status": "",
					"reservation_reply": "",
					"reservation_information_id": 0,
				},

				obj: {
					"photographer_name":'', // 摄影师姓名
					"photographic_grade":'', // 摄影等级
					"reservation_price":'', // 预约价格
					"user": 0, // 用户
					"time_of_appointment": new Date().getTime(),
					"photography_location":'', // 摄影地点
					"reservation_status":'', // 预约状态
					"reservation_reply":'', // 预约回复
					"reservation_information_id": 0,
				},

				// 表单字段
				form: {
					"photographer_name":'', // 摄影师姓名
					"photographic_grade":'', // 摄影等级
					"reservation_price":'', // 预约价格
					"user": 0, // 用户
					"time_of_appointment": new Date().getTime(),
					"photography_location":'', // 摄影地点
					"reservation_status":'', // 预约状态
					"reservation_reply":'', // 预约回复
					"reservation_information_id": 0,
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
				//预约状态选项列表
				list_reservation_status: ['已预约','预约失败','已取消'],

				// ID字段
				field: "reservation_information_id",
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
			async get_user_session_user(){
				var _this = this;
				var json = await this.$get("~/api/user_group/get_obj?name=普通用户");
				if(json.result && json.result.obj){
					var source_table = json.result.obj.source_table;
					var user_id = _this.$store.state.user.user_id;
					if (user_id){
						var url = "~/api/"+source_table+"/get_obj?"
						this.$get(url, {"user_id":_this.$store.state.user.user_id}, function(res) {
							if (res.result && res.result.obj) {
								var arr = []
								for (let key in res.result.obj) {
									arr.push(key)
								}
								var arrForm = []
								for (let key in _this.form) {
									arrForm.push(key)
								}
								_this.form["user"] = user_id
								_this.disabledObj['user' + '_isDisabled'] = true
								for (var i=0;i<arr.length;i++){
                  if (arr[i]!=='examine_state' && arr[i]!=='examine_reply') {
                    for (var j = 0; j < arrForm.length; j++) {
                      if (arr[i] === arrForm[j]) {
                        if (arr[i] !== "user") {
                          _this.form[arrForm[j]] = res.result.obj[arr[i]]
                          _this.disabledObj[arrForm[j] + '_isDisabled'] = true
                          break;
                        }
                      }
                    }
                  }
								}
							}
						});
					}
				}
				else if(json.error){
					console.error(json.error);
				}
			},

			/**
			 * 修改文件
			 * @param { Object } files 上传文件对象
			 * @param { String } str 表单的属性名
			 */
			change_file(files, str) {
				var form = new FormData();
				form.append("file", files[0]);
				this.$post("~/api/reservation_information/upload?", form, (res) => {
					if (res.result) {
						this.form[str] = res.result.url;
					} else if (res.error) {
						this.$toast(res.error.message);
					}
				});
			},

			/**
			 * 获取对象后获取缓存表单
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_before(param){
				var form = $.db.get("form");
				// if (form) {
        //   delete(form.examine_state)
        //   delete(form.examine_reply)
        //   this.obj = $.push(this.obj ,form);
				// 	this.form = $.push(this.form ,form);
				// }
				// var arr = []
				// for (let key in form) {
				// 	arr.push(key)
				// }
				// for (var i=0;i<arr.length;i++){
				// 	this.disabledObj[arr[i] + '_isDisabled'] = true
				// }
        if (form) {
          var arr = []
          for (let key in form) {
            arr.push(key)
          }
          var arrForm = []
          for (let key in this.form) {
            arrForm.push(key)
          }
          for (var i=0;i<arr.length;i++){
            if (arr[i]!=='examine_state' && arr[i]!=='examine_reply') {
              for (var j = 0; j < arrForm.length; j++) {
                if (arrForm[j] === arr[i]) {
                  this.form[arrForm[j]] = form[arr[i]]
                  this.obj[arrForm[j]] = form[arr[i]]
                  this.disabledObj[arrForm[j] + '_isDisabled'] = true
                  break;
                }
              }
            }
          }
        }
        if (JSON.stringify(this.form["time_of_appointment"]).indexOf("-")===-1) {
          this.form["time_of_appointment"] = this.$toTime(parseInt(this.form["time_of_appointment"]), "yyyy-MM-dd")
        }

        $.db.del("form");
				return param;
			},

			/**
			 * 获取对象后获取缓存表单
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json ,func){
				// var form = $.db.get("form");
				// var obj = Object.assign({} ,form ,this.obj);
				// if (obj) {
        //   delete(obj.examine_state)
        //   delete(obj.examine_reply)
				// 	this.obj = $.push(this.obj ,obj);
				// }
				// if (form) {
        //   delete(form.examine_state)
        //   delete(form.examine_reply)
				// 	this.form = $.push(this.form ,form);
				// }
				if(func){
					func(json);
				}
			},

		},
		created() {
			this.get_user_session_user();
			this.get_list_user_user();
		},
	}
</script>

<style>
</style>
