<template>
	<view class="content">
		<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' v-if="tableName=='huiyuan'" class="cu-form-group">
			<view class="title" :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(14, 13, 13, 1)","textAlign":"left"}'>会员卡号</view>
			<input  style="padding: 0 30upx" :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"20rpx","color":"rgba(16, 15, 15, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.huiyuankahao" placeholder="会员卡号"></input>
		</view>
		<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' v-if="tableName=='huiyuan'" class="cu-form-group">
			<view class="title" :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(14, 13, 13, 1)","textAlign":"left"}'>密码</view>
			<input type="password" style="padding: 0 30upx" :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"20rpx","color":"rgba(16, 15, 15, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.mima" placeholder="密码"></input>
		</view>
		<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' v-if="tableName=='huiyuan'" class="cu-form-group">
			<view class="title" :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(14, 13, 13, 1)","textAlign":"left"}'>会员姓名</view>
			<input  style="padding: 0 30upx" :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"20rpx","color":"rgba(16, 15, 15, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.huiyuanxingming" placeholder="会员姓名"></input>
		</view>
			<view v-if="tableName=='huiyuan'" :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"rgba(252, 252, 252, 1)","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' class="cu-form-group select">
                                <view :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(14, 13, 13, 1)","textAlign":"left"}' class="title">性别</view>
                                <picker @change="huiyuanxingbieChange" :value="huiyuanxingbieIndex" :range="huiyuanxingbieOptions">
                                        <view style="padding: 0 30upx" :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"20rpx","color":"rgba(16, 15, 15, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' class="uni-input picker-select-input">{{ruleForm.xingbie?ruleForm.xingbie:"请选择性别"}}</view>
                                </picker>
                        </view>
		<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' v-if="tableName=='huiyuan'" class="cu-form-group">
			<view class="title" :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(14, 13, 13, 1)","textAlign":"left"}'>手机</view>
			<input  style="padding: 0 30upx" :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"20rpx","color":"rgba(16, 15, 15, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.shouji" placeholder="手机"></input>
		</view>
		<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' v-if="tableName=='huiyuan'" class="cu-form-group">
			<view class="title" :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(14, 13, 13, 1)","textAlign":"left"}'>身份证</view>
			<input  style="padding: 0 30upx" :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"20rpx","color":"rgba(16, 15, 15, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.shenfenzheng" placeholder="身份证"></input>
		</view>
		<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' v-if="tableName=='huiyuan'" @tap="huiyuantouxiangTap" class="cu-form-group" :class="left == 'left'?'':'active'">
			<view class="title" :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(14, 13, 13, 1)","textAlign":"left"}'>头像</view>
			<view style="flex: 1;textAlign:left">
				<image :style='{"width":"88rpx","boxShadow":"0 0 16rpx rgba(0,0,0,.3)","borderRadius":"100%","textAlign":"left","height":"88rpx"}' v-if="ruleForm.touxiang" style="margin: 0;" class="avator" :src="ruleForm.touxiang" mode=""></image>
				<image :style='{"width":"88rpx","boxShadow":"0 0 16rpx rgba(0,0,0,.3)","borderRadius":"100%","textAlign":"left","height":"88rpx"}' v-else class="avator" style="margin: 0;" src="../../static/center/face.jpeg" mode=""></image>
			</view>
		</view>
		<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' v-if="tableName=='jiaolian'" class="cu-form-group">
			<view class="title" :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(14, 13, 13, 1)","textAlign":"left"}'>教练编号</view>
			<input  style="padding: 0 30upx" :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"20rpx","color":"rgba(16, 15, 15, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.jiaolianbianhao" placeholder="教练编号"></input>
		</view>
		<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' v-if="tableName=='jiaolian'" class="cu-form-group">
			<view class="title" :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(14, 13, 13, 1)","textAlign":"left"}'>教练姓名</view>
			<input  style="padding: 0 30upx" :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"20rpx","color":"rgba(16, 15, 15, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.jiaolianxingming" placeholder="教练姓名"></input>
		</view>
		<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' v-if="tableName=='jiaolian'" class="cu-form-group">
			<view class="title" :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(14, 13, 13, 1)","textAlign":"left"}'>密码</view>
			<input type="password" style="padding: 0 30upx" :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"20rpx","color":"rgba(16, 15, 15, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.mima" placeholder="密码"></input>
		</view>
		<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' v-if="tableName=='jiaolian'" class="cu-form-group">
			<view class="title" :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(14, 13, 13, 1)","textAlign":"left"}'>教龄</view>
			<input  style="padding: 0 30upx" :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"20rpx","color":"rgba(16, 15, 15, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.jiaoling" placeholder="教龄"></input>
		</view>
		<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' v-if="tableName=='jiaolian'" class="cu-form-group">
			<view class="title" :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(14, 13, 13, 1)","textAlign":"left"}'>等级</view>
			<input  style="padding: 0 30upx" :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"20rpx","color":"rgba(16, 15, 15, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.dengji" placeholder="等级"></input>
		</view>
		<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' v-if="tableName=='jiaolian'" class="cu-form-group">
			<view class="title" :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(14, 13, 13, 1)","textAlign":"left"}'>联系电话</view>
			<input  style="padding: 0 30upx" :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"20rpx","color":"rgba(16, 15, 15, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.lianxidianhua" placeholder="联系电话"></input>
		</view>
		<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' v-if="tableName=='jiaolian'" class="cu-form-group">
			<view class="title" :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(14, 13, 13, 1)","textAlign":"left"}'>身份证</view>
			<input  style="padding: 0 30upx" :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"20rpx","color":"rgba(16, 15, 15, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.shenfenzheng" placeholder="身份证"></input>
		</view>
		<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' v-if="tableName=='jiaolian'" @tap="jiaoliantouxiangTap" class="cu-form-group" :class="left == 'left'?'':'active'">
			<view class="title" :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(14, 13, 13, 1)","textAlign":"left"}'>头像</view>
			<view style="flex: 1;textAlign:left">
				<image :style='{"width":"88rpx","boxShadow":"0 0 16rpx rgba(0,0,0,.3)","borderRadius":"100%","textAlign":"left","height":"88rpx"}' v-if="ruleForm.touxiang" style="margin: 0;" class="avator" :src="ruleForm.touxiang" mode=""></image>
				<image :style='{"width":"88rpx","boxShadow":"0 0 16rpx rgba(0,0,0,.3)","borderRadius":"100%","textAlign":"left","height":"88rpx"}' v-else class="avator" style="margin: 0;" src="../../static/center/face.jpeg" mode=""></image>
			</view>
		</view>
		
		<view class="btn">
			<view class="box" :style="{width: 'auto'}">
				<button @tap="update()" class="cu-btn lg" :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,0) inset","backgroundColor":"#409EFF","borderColor":"#409EFF","borderRadius":"32rpx","color":"#fff","borderWidth":"1","width":"auto","fontSize":"28rpx","borderStyle":"solid","height":"80rpx"}'>保存</button>
			</view>

			<view class="box" :style="{width: 'auto'}">
				<button @tap="logout()" class="cu-btn lg" :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,0) inset","backgroundColor":"#E6A23C","borderColor":"#E6A23C","borderRadius":"32rpx","color":"#fff","borderWidth":"2rpx","width":"auto","fontSize":"28rpx","borderStyle":"solid","height":"80rpx"}'>退出登录</button>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				ruleForm: {
				},
				tableName:"",
				huiyuanxingbieOptions: [],
				huiyuanxingbieIndex: 0,
			}
		},
		async onLoad() {
			let table = uni.getStorageSync("nowTable");
			let res = await this.$api.session(table);
			this.ruleForm = res.data;
			this.tableName = table;
			// 自定义下拉框值
			if(this.tableName=='huiyuan'){
				this.huiyuanxingbieOptions = "男,女".split(',');
				this.huiyuanxingbieOptions.forEach((item, index) => {
					if(item==this.ruleForm.xingbie) {
						this.huiyuanxingbieIndex = index;
					}
				});
			}
			this.styleChange()
		},
		methods: {
                        // 下拉变化
                        huiyuanxingbieChange(e) {
                                this.huiyuanxingbieIndex = e.target.value
                                this.ruleForm.xingbie = this.huiyuanxingbieOptions[this.huiyuanxingbieIndex]
                        },
			styleChange() {
				this.$nextTick(()=>{
					// document.querySelectorAll('.cu-form-group .uni-input-input').forEach(el=>{
					//   el.style.backgroundColor = this.userInfoForm.list.input.backgroundColor
					// })
				})
			},
			// 获取uuid
			getUUID () {
				return new Date().getTime();
			},
			logout() {
				uni.setStorageSync('token', '');
				this.$utils.jump('../login/login');
			},
			// 注册
			async update() {
				if((!this.ruleForm.huiyuankahao) && `huiyuan` == this.tableName){
					this.$utils.msg(`会员卡号不能为空`);
					return
				}
				if((!this.ruleForm.mima) && `huiyuan` == this.tableName){
					this.$utils.msg(`密码不能为空`);
					return
				}
				if((!this.ruleForm.huiyuanxingming) && `huiyuan` == this.tableName){
					this.$utils.msg(`会员姓名不能为空`);
					return
				}
				if(`huiyuan` == this.tableName && this.ruleForm.shouji&&(!this.$validate.isMobile(this.ruleForm.shouji))){
					this.$utils.msg(`手机应输入手机格式`);
					return
				}
				if(`huiyuan` == this.tableName && this.ruleForm.shenfenzheng&&(!this.$validate.checkIdCard(this.ruleForm.shenfenzheng))){
					this.$utils.msg(`身份证应输入身份证格式`);
					return
				}
				if((!this.ruleForm.jiaolianbianhao) && `jiaolian` == this.tableName){
					this.$utils.msg(`教练编号不能为空`);
					return
				}
				if((!this.ruleForm.jiaolianxingming) && `jiaolian` == this.tableName){
					this.$utils.msg(`教练姓名不能为空`);
					return
				}
				if((!this.ruleForm.mima) && `jiaolian` == this.tableName){
					this.$utils.msg(`密码不能为空`);
					return
				}
				if(`jiaolian` == this.tableName && this.ruleForm.jiaoling&&(!this.$validate.isIntNumer(this.ruleForm.jiaoling))){
					this.$utils.msg(`教龄应输入整数`);
					return
				}
				if(`jiaolian` == this.tableName && this.ruleForm.lianxidianhua&&(!this.$validate.isMobile(this.ruleForm.lianxidianhua))){
					this.$utils.msg(`联系电话应输入手机格式`);
					return
				}
				if(`jiaolian` == this.tableName && this.ruleForm.shenfenzheng&&(!this.$validate.checkIdCard(this.ruleForm.shenfenzheng))){
					this.$utils.msg(`身份证应输入身份证格式`);
					return
				}
				let table = uni.getStorageSync("nowTable");
				await this.$api.update(table, this.ruleForm);
				this.$utils.msgBack('修改成功');;
			}

			,huiyuantouxiangTap() {
				let _this = this;
				this.$api.upload(function(res) {
					_this.ruleForm.touxiang = _this.$base.url + 'upload/' + res.file;
					_this.$forceUpdate();
				});
			}
			,jiaoliantouxiangTap() {
				let _this = this;
				this.$api.upload(function(res) {
					_this.ruleForm.touxiang = _this.$base.url + 'upload/' + res.file;
					_this.$forceUpdate();
				});
			}
		}
	}
</script>

<style lang="scss" scoped>
	.content:after {
		position: fixed;
		top: 0;
		right: 0;
		left: 0;
		bottom: 0;
		content: '';
				background-attachment: fixed;
		background-size: cover;
		background-position: center;
	}

	.avator {
		width: 110upx;
		height: 110upx;
		border-radius: 50%;
		margin-left: 30upx;
	}
	
	.cu-form-group.active {
		justify-content: space-between;
	}

	.cu-btn {
		width: 100%;
	}

	.right-input {
		flex: 1;
		text-align: left;
		line-height: 88rpx;
	}
	.btn {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  flex-wrap: wrap;
	  padding: 20upx 0;
	}
	
	.box {
	  width: auto;
	  padding: 0 10upx;
	  box-sizing: border-box;
	  margin-bottom: 20upx;
	}
	
	.cu-btn {
	  width: 100% !important;
	}

.picker-select-input {
	line-height: 88rpx;
}
</style>
