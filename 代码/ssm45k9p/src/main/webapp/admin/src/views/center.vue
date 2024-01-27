<template>
  <div>
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      label-width="80px"
    >  
     <el-row>
      <el-col :span="12">
        <el-form-item   v-if="flag=='huiyuan'"  label="会员卡号" prop="huiyuankahao">
          <el-input v-model="ruleForm.huiyuankahao" readonly              placeholder="会员卡号" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='huiyuan'"  label="会员姓名" prop="huiyuanxingming">
          <el-input v-model="ruleForm.huiyuanxingming"               placeholder="会员姓名" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item v-if="flag=='huiyuan'"  label="性别" prop="xingbie">
          <el-select v-model="ruleForm.xingbie" placeholder="请选择性别">
            <el-option
                v-for="(item,index) in huiyuanxingbieOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='huiyuan'"  label="手机" prop="shouji">
          <el-input v-model="ruleForm.shouji"               placeholder="手机" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='huiyuan'"  label="身份证" prop="shenfenzheng">
          <el-input v-model="ruleForm.shenfenzheng"               placeholder="身份证" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item  v-if="flag=='huiyuan'" label="生日" prop="shengri">
            <el-date-picker
                format="yyyy 年 MM 月 dd 日"
                value-format="yyyy-MM-dd"
                v-model="ruleForm.shengri" 
                type="date"
                placeholder="生日">
            </el-date-picker> 
        </el-form-item>
      </el-col>
      <el-col :span="24">  
        <el-form-item v-if="flag=='huiyuan'" label="头像" prop="touxiang">
          <file-upload
          tip="点击上传头像"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.touxiang?ruleForm.touxiang:''"
          @change="huiyuantouxiangUploadChange"
          ></file-upload>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='jiaolian'"  label="教练编号" prop="jiaolianbianhao">
          <el-input v-model="ruleForm.jiaolianbianhao" readonly              placeholder="教练编号" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='jiaolian'"  label="教练姓名" prop="jiaolianxingming">
          <el-input v-model="ruleForm.jiaolianxingming"               placeholder="教练姓名" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='jiaolian'"  label="教龄" prop="jiaoling">
          <el-input v-model="ruleForm.jiaoling"               placeholder="教龄" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='jiaolian'"  label="等级" prop="dengji">
          <el-input v-model="ruleForm.dengji"               placeholder="等级" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='jiaolian'"  label="联系电话" prop="lianxidianhua">
          <el-input v-model="ruleForm.lianxidianhua"               placeholder="联系电话" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item   v-if="flag=='jiaolian'"  label="身份证" prop="shenfenzheng">
          <el-input v-model="ruleForm.shenfenzheng"               placeholder="身份证" clearable></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="24">  
        <el-form-item v-if="flag=='jiaolian'" label="头像" prop="touxiang">
          <file-upload
          tip="点击上传头像"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.touxiang?ruleForm.touxiang:''"
          @change="jiaoliantouxiangUploadChange"
          ></file-upload>
        </el-form-item>
      </el-col>
      <el-form-item v-if="flag=='users'" label="用户名" prop="username">
        <el-input v-model="ruleForm.username" 
        placeholder="用户名"></el-input>
      </el-form-item>
      <el-col :span="24">
      <el-form-item>
        <el-button type="primary" @click="onUpdateHandler">修 改</el-button>
      </el-form-item>
      </el-col>
      </el-row>
    </el-form>
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isMobile,isPhone,isURL,checkIdCard } from "@/utils/validate";

export default {
  data() {
    return {
      ruleForm: {},
      flag: '',
      usersFlag: false,
      huiyuanxingbieOptions: [],
    };
  },
  mounted() {
    var table = this.$storage.get("sessionTable");
    this.flag = table;
    this.$http({
      url: `${this.$storage.get("sessionTable")}/session`,
      method: "get"
    }).then(({ data }) => {
      if (data && data.code === 0) {
        this.ruleForm = data.data;
      } else {
        this.$message.error(data.msg);
      }
    });
    this.huiyuanxingbieOptions = "男,女".split(',')
  },
  methods: {
    huiyuantouxiangUploadChange(fileUrls) {
        this.ruleForm.touxiang = fileUrls;
    },
    jiaoliantouxiangUploadChange(fileUrls) {
        this.ruleForm.touxiang = fileUrls;
    },
    onUpdateHandler() {
      if((!this.ruleForm.huiyuankahao)&& 'huiyuan'==this.flag){
        this.$message.error('会员卡号不能为空');
        return
      }
      if((!this.ruleForm.mima)&& 'huiyuan'==this.flag){
        this.$message.error('密码不能为空');
        return
      }
      if((!this.ruleForm.huiyuanxingming)&& 'huiyuan'==this.flag){
        this.$message.error('会员姓名不能为空');
        return
      }
      if( 'huiyuan' ==this.flag && this.ruleForm.shouji&&(!isMobile(this.ruleForm.shouji))){
        this.$message.error(`手机应输入手机格式`);
        return
      }
      if( 'huiyuan' ==this.flag && this.ruleForm.shenfenzheng&&(!checkIdCard(this.ruleForm.shenfenzheng))){
        this.$message.error(`身份证应输入身份证格式`);
        return
      }
      if((!this.ruleForm.jiaolianbianhao)&& 'jiaolian'==this.flag){
        this.$message.error('教练编号不能为空');
        return
      }
      if((!this.ruleForm.jiaolianxingming)&& 'jiaolian'==this.flag){
        this.$message.error('教练姓名不能为空');
        return
      }
      if((!this.ruleForm.mima)&& 'jiaolian'==this.flag){
        this.$message.error('密码不能为空');
        return
      }
      if( 'jiaolian' ==this.flag && this.ruleForm.jiaoling&&(!isIntNumer(this.ruleForm.jiaoling))){
       this.$message.error(`教龄应输入整数`);
        return
      }
      if( 'jiaolian' ==this.flag && this.ruleForm.lianxidianhua&&(!isMobile(this.ruleForm.lianxidianhua))){
        this.$message.error(`联系电话应输入手机格式`);
        return
      }
      if( 'jiaolian' ==this.flag && this.ruleForm.shenfenzheng&&(!checkIdCard(this.ruleForm.shenfenzheng))){
        this.$message.error(`身份证应输入身份证格式`);
        return
      }
      if('users'==this.flag && this.ruleForm.username.trim().length<1) {
	this.$message.error(`用户名不能为空`);
        return	
      }
      this.$http({
        url: `${this.$storage.get("sessionTable")}/update`,
        method: "post",
        data: this.ruleForm
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.$message({
            message: "修改信息成功",
            type: "success",
            duration: 1500,
            onClose: () => {
            }
          });
        } else {
          this.$message.error(data.msg);
        }
      });
    }
  }
};
</script>
<style lang="scss" scoped>
</style>
