package com.entity.vo;

import com.entity.JianshenkechengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 健身课程
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-05-26 20:54:46
 */
public class JianshenkechengVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 课程类型
	 */
	
	private String kechengleixing;
		
	/**
	 * 课程内容
	 */
	
	private String kechengneirong;
		
	/**
	 * 健身效果
	 */
	
	private String jianshenxiaoguo;
		
	/**
	 * 课时
	 */
	
	private String keshi;
		
	/**
	 * 学费
	 */
	
	private Integer xuefei;
		
	/**
	 * 联系电话
	 */
	
	private String lianxidianhua;
		
	/**
	 * 课程图片
	 */
	
	private String kechengtupian;
		
	/**
	 * 教练编号
	 */
	
	private String jiaolianbianhao;
		
	/**
	 * 教练姓名
	 */
	
	private String jiaolianxingming;
		
	/**
	 * 用户id
	 */
	
	private Long userid;
				
	
	/**
	 * 设置：课程类型
	 */
	 
	public void setKechengleixing(String kechengleixing) {
		this.kechengleixing = kechengleixing;
	}
	
	/**
	 * 获取：课程类型
	 */
	public String getKechengleixing() {
		return kechengleixing;
	}
				
	
	/**
	 * 设置：课程内容
	 */
	 
	public void setKechengneirong(String kechengneirong) {
		this.kechengneirong = kechengneirong;
	}
	
	/**
	 * 获取：课程内容
	 */
	public String getKechengneirong() {
		return kechengneirong;
	}
				
	
	/**
	 * 设置：健身效果
	 */
	 
	public void setJianshenxiaoguo(String jianshenxiaoguo) {
		this.jianshenxiaoguo = jianshenxiaoguo;
	}
	
	/**
	 * 获取：健身效果
	 */
	public String getJianshenxiaoguo() {
		return jianshenxiaoguo;
	}
				
	
	/**
	 * 设置：课时
	 */
	 
	public void setKeshi(String keshi) {
		this.keshi = keshi;
	}
	
	/**
	 * 获取：课时
	 */
	public String getKeshi() {
		return keshi;
	}
				
	
	/**
	 * 设置：学费
	 */
	 
	public void setXuefei(Integer xuefei) {
		this.xuefei = xuefei;
	}
	
	/**
	 * 获取：学费
	 */
	public Integer getXuefei() {
		return xuefei;
	}
				
	
	/**
	 * 设置：联系电话
	 */
	 
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
				
	
	/**
	 * 设置：课程图片
	 */
	 
	public void setKechengtupian(String kechengtupian) {
		this.kechengtupian = kechengtupian;
	}
	
	/**
	 * 获取：课程图片
	 */
	public String getKechengtupian() {
		return kechengtupian;
	}
				
	
	/**
	 * 设置：教练编号
	 */
	 
	public void setJiaolianbianhao(String jiaolianbianhao) {
		this.jiaolianbianhao = jiaolianbianhao;
	}
	
	/**
	 * 获取：教练编号
	 */
	public String getJiaolianbianhao() {
		return jiaolianbianhao;
	}
				
	
	/**
	 * 设置：教练姓名
	 */
	 
	public void setJiaolianxingming(String jiaolianxingming) {
		this.jiaolianxingming = jiaolianxingming;
	}
	
	/**
	 * 获取：教练姓名
	 */
	public String getJiaolianxingming() {
		return jiaolianxingming;
	}
				
	
	/**
	 * 设置：用户id
	 */
	 
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	
	/**
	 * 获取：用户id
	 */
	public Long getUserid() {
		return userid;
	}
			
}
