<template>
	<view class="content">
		<view class="logo" v-if="true">
			<image :style='{"boxShadow":"","borderColor":"rgba(74, 209, 242, 1)","borderRadius":"40rpx","borderWidth":"2rpx","width":"160rpx","borderStyle":"solid","url":"http://codegen.caihongy.cn/20201207/3879163aa3c7416b84df7dea4949bc01.png","isShow":true,"height":"160rpx"}' src='http://codegen.caihongy.cn/20201207/3879163aa3c7416b84df7dea4949bc01.png' mode="aspectFill"></image>
		</view>
		<view v-if="tableName=='huiyuan'" class="uni-form-item uni-column">
			<input :style='{"borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"40rpx","color":"#333","textAlign":"left","borderWidth":"4rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.huiyuankahao" type="text" class="uni-input" name="" placeholder="会员卡号" />
		</view>
		<view v-if="tableName=='huiyuan'" class="uni-form-item uni-column">
			<input :style='{"borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"40rpx","color":"#333","textAlign":"left","borderWidth":"4rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.mima" type="text" class="uni-input" name="" placeholder="密码" />
		</view>
		<view v-if="tableName=='huiyuan'" class="uni-form-item uni-column">
			<input :style='{"borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"40rpx","color":"#333","textAlign":"left","borderWidth":"4rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.huiyuanxingming" type="text" class="uni-input" name="" placeholder="会员姓名" />
		</view>
		<view v-if="tableName=='huiyuan'" class="uni-form-item uni-column">
                        <picker @change="huiyuanxingbieChange" :value="huiyuanxingbieIndex" :range="huiyuanxingbieOptions">
                                <view :style='{"borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"40rpx","color":"#333","textAlign":"left","borderWidth":"4rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' class="uni-input">{{ruleForm.xingbie?ruleForm.xingbie:"请选择性别"}}</view>
                        </picker>
                </view>
		<view v-if="tableName=='huiyuan'" class="uni-form-item uni-column">
			<input :style='{"borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"40rpx","color":"#333","textAlign":"left","borderWidth":"4rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.shouji" type="text" class="uni-input" name="" placeholder="手机" />
		</view>
		<view v-if="tableName=='huiyuan'" class="uni-form-item uni-column">
			<input :style='{"borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"40rpx","color":"#333","textAlign":"left","borderWidth":"4rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.shenfenzheng" type="text" class="uni-input" name="" placeholder="身份证" />
		</view>
		<view v-if="tableName=='jiaolian'" class="uni-form-item uni-column">
			<input :style='{"borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"40rpx","color":"#333","textAlign":"left","borderWidth":"4rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.jiaolianbianhao" type="text" class="uni-input" name="" placeholder="教练编号" />
		</view>
		<view v-if="tableName=='jiaolian'" class="uni-form-item uni-column">
			<input :style='{"borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"40rpx","color":"#333","textAlign":"left","borderWidth":"4rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.jiaolianxingming" type="text" class="uni-input" name="" placeholder="教练姓名" />
		</view>
		<view v-if="tableName=='jiaolian'" class="uni-form-item uni-column">
			<input :style='{"borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"40rpx","color":"#333","textAlign":"left","borderWidth":"4rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.mima" type="text" class="uni-input" name="" placeholder="密码" />
		</view>
		<view v-if="tableName=='jiaolian'" class="uni-form-item uni-column">
			<input :style='{"borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"40rpx","color":"#333","textAlign":"left","borderWidth":"4rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.jiaoling" type="text" class="uni-input" name="" placeholder="教龄" />
		</view>
		<view v-if="tableName=='jiaolian'" class="uni-form-item uni-column">
			<input :style='{"borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"40rpx","color":"#333","textAlign":"left","borderWidth":"4rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.dengji" type="text" class="uni-input" name="" placeholder="等级" />
		</view>
		<view v-if="tableName=='jiaolian'" class="uni-form-item uni-column">
			<input :style='{"borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"40rpx","color":"#333","textAlign":"left","borderWidth":"4rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.lianxidianhua" type="text" class="uni-input" name="" placeholder="联系电话" />
		</view>
		<view v-if="tableName=='jiaolian'" class="uni-form-item uni-column">
			<input :style='{"borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"40rpx","color":"#333","textAlign":"left","borderWidth":"4rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="ruleForm.shenfenzheng" type="text" class="uni-input" name="" placeholder="身份证" />
		</view>
		<view>
			<button @tap="register" type="primary" :style='{"borderColor":"#ccc","backgroundColor":"rgba(48, 235, 157, 1)","borderRadius":"40rpx","color":"#333","borderWidth":"2rpx","fontSize":"32rpx","borderStyle":"solid","height":"88rpx"}'>注册</button>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
                                huiyuanxingbieOptions: [],
                                huiyuanxingbieIndex: 0,
				ruleForm: {
				},
				tableName:""
			}
		},
		async onLoad() {
			let res = [];
			let table = uni.getStorageSync("loginTable");
	    		this.tableName = table;

                        // 自定义下拉框值
			if(this.tableName=='huiyuan'){
                        	this.huiyuanxingbieOptions = "男,女".split(',');
				this.ruleForm.xingbie=this.huiyuanxingbieOptions[0]
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
					// document.querySelectorAll('.uni-input .uni-input-input').forEach(el=>{
					//   el.style.backgroundColor = this.registerFrom.content.input.backgroundColor
					// })
				})
			},
			// 获取uuid
			getUUID () {
				return new Date().getTime();
			},
			// 注册
			async register() {
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
				await this.$api.register(`${this.tableName}`, this.ruleForm);
				this.$utils.msgBack('注册成功');;
			}
		}
	}
</script>

<style lang="scss" scoped>
	$color-primary: #b49950;

	.content {
		padding: 100upx;
	}
	
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

	.logo {
		text-align: center;

		image {
			height: 200upx;
			width: 200upx;
			margin: 0 0 60upx;
		}
	}

	.uni-form-item {
		margin-bottom: 40upx;
		padding: 0;

		.uni-input {
			font-size: 30upx;
			padding: 7px 0;
		}
	}

	button[type="primary"] {
		background-color: $color-primary;
		border-radius: 0;
		font-size: 34upx;
		margin-top: 60upx;
	}

	.links {
		text-align: center;
		margin-top: 40upx;
		font-size: 26upx;
		color: #999;

		view {
			display: inline-block;
			vertical-align: top;
			margin: 0 10upx;
		}

		.link-highlight {
			color: $color-primary
		}
	}
.picker-select-input {
	line-height: 88rpx;
}

</style>
