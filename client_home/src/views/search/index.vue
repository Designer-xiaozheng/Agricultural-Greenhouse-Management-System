<template>
  <div class="page_search">
	<div class="warp">
	  <div class="container">
		<div class="row">
		  <div class="col-12">
			<div class="card_result_search">
			  <div class="title">搜索结果</div>
				<!-- 文章搜索结果 -->
			  <list_result_search
				:list="result_article"
				title="小店新闻"
				source_table="article"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/photographic_classification/list', 'get')"
				:list="result_photographic_classification_photography_type"
				title="摄影分类摄影类型"
				source_table="photographic_classification"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/photographic_works/list', 'get')"
				:list="result_photographic_works_work_name"
				title="摄影作品作品名称"
				source_table="photographic_works"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/photographic_works/list', 'get')"
				:list="result_photographic_works_photography_type"
				title="摄影作品摄影类型"
				source_table="photographic_works"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/photographer/list', 'get')"
				:list="result_photographer_photographer_name"
				title="摄影师摄影师姓名"
				source_table="photographer"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/reservation_information/list', 'get')"
				:list="result_reservation_information_time_of_appointment"
				title="预约信息预约时间"
				source_table="reservation_information"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/reservation_information/list', 'get')"
				:list="result_reservation_information_reservation_status"
				title="预约信息预约状态"
				source_table="reservation_information"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/cancel_reservation/list', 'get')"
				:list="result_cancel_reservation_time_of_appointment"
				title="取消预约预约时间"
				source_table="cancel_reservation"
			  ></list_result_search>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </div>
</template>

<script>
import mixin from "../../mixins/page.js";
import list_result_search from "../../components/diy/list_result_search.vue";

export default {
  mixins: [mixin],
  data() {
	return {
	  "query": {
		word: "",
	  },
	  "result_article": [],
			"result_photographic_classification_photography_type":[],
			"result_photographic_works_work_name":[],
			"result_photographic_works_photography_type":[],
			"result_photographer_photographer_name":[],
			"result_reservation_information_time_of_appointment":[],
			"result_reservation_information_reservation_status":[],
			"result_cancel_reservation_time_of_appointment":[],
	};
  },
  methods: {
	/**
	 * 获取文章
	 */
	get_article() {
	  this.$get("~/api/article/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_article = json.result.list;
		}
	  });
	},
	/**
	 * 获取photography_type
	 */
	get_photographic_classification_photography_type(){
		this.$get("~/api/photographic_classification/get_list?like=0", { page: 1, size: 10, "photography_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_photographic_classification_photography_type = json.result.list;
			result_photographic_classification_photography_type.map(o => o.title = o['photography_type'])
	  			this.result_photographic_classification_photography_type = result_photographic_classification_photography_type
		 	}
		});
	},
	/**
	 * 获取work_name
	 */
	get_photographic_works_work_name(){
		this.$get("~/api/photographic_works/get_list?like=0", { page: 1, size: 10, "work_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_photographic_works_work_name = json.result.list;
			result_photographic_works_work_name.map(o => o.title = o['work_name'])
	  			this.result_photographic_works_work_name = result_photographic_works_work_name
		 	}
		});
	},
	/**
	 * 获取photography_type
	 */
	get_photographic_works_photography_type(){
		this.$get("~/api/photographic_works/get_list?like=0", { page: 1, size: 10, "photography_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_photographic_works_photography_type = json.result.list;
			result_photographic_works_photography_type.map(o => o.title = o['photography_type'])
	  			this.result_photographic_works_photography_type = result_photographic_works_photography_type
		 	}
		});
	},
	/**
	 * 获取photographer_name
	 */
	get_photographer_photographer_name(){
		this.$get("~/api/photographer/get_list?like=0", { page: 1, size: 10, "photographer_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_photographer_photographer_name = json.result.list;
			result_photographer_photographer_name.map(o => o.title = o['photographer_name'])
	  			this.result_photographer_photographer_name = result_photographer_photographer_name
		 	}
		});
	},
	/**
	 * 获取time_of_appointment
	 */
	get_reservation_information_time_of_appointment(){
		this.$get("~/api/reservation_information/get_list?like=0", { page: 1, size: 10, "time_of_appointment": this.query.word }, (json) => {
		  if (json.result) {
			var result_reservation_information_time_of_appointment = json.result.list;
			result_reservation_information_time_of_appointment.map(o => o.title = o['time_of_appointment'])
	  			this.result_reservation_information_time_of_appointment = result_reservation_information_time_of_appointment
		 	}
		});
	},
	/**
	 * 获取reservation_status
	 */
	get_reservation_information_reservation_status(){
		this.$get("~/api/reservation_information/get_list?like=0", { page: 1, size: 10, "reservation_status": this.query.word }, (json) => {
		  if (json.result) {
			var result_reservation_information_reservation_status = json.result.list;
			result_reservation_information_reservation_status.map(o => o.title = o['reservation_status'])
	  			this.result_reservation_information_reservation_status = result_reservation_information_reservation_status
		 	}
		});
	},
	/**
	 * 获取time_of_appointment
	 */
	get_cancel_reservation_time_of_appointment(){
		this.$get("~/api/cancel_reservation/get_list?like=0", { page: 1, size: 10, "time_of_appointment": this.query.word }, (json) => {
		  if (json.result) {
			var result_cancel_reservation_time_of_appointment = json.result.list;
			result_cancel_reservation_time_of_appointment.map(o => o.title = o['time_of_appointment'])
	  			this.result_cancel_reservation_time_of_appointment = result_cancel_reservation_time_of_appointment
		 	}
		});
	},

  },
  components: { list_result_search },
	created(){
    this.query.word = this.$route.query.word || "";
  },
  mounted() {
	this.get_article();
		this.get_photographic_classification_photography_type();
		this.get_photographic_works_work_name();
		this.get_photographic_works_photography_type();
		this.get_photographer_photographer_name();
		this.get_reservation_information_time_of_appointment();
		this.get_reservation_information_reservation_status();
		this.get_cancel_reservation_time_of_appointment();
  },
  watch: {
	$route() {
	  $.push(this.query, this.$route.query);
	  this.get_article();
	  this.get_photographic_classification_photography_type();
	  this.get_photographic_works_work_name();
	  this.get_photographic_works_photography_type();
	  this.get_photographer_photographer_name();
	  this.get_reservation_information_time_of_appointment();
	  this.get_reservation_information_reservation_status();
	  this.get_cancel_reservation_time_of_appointment();
	},
  },
};
</script>

<style scoped>
.card_search {
  text-align: center;
}
.card_result_search>.title {
  text-align: center;
  padding: 10px 0;
}
</style>
