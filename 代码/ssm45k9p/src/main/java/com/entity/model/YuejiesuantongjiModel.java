package com.entity.model;

import com.entity.YuejiesuantongjiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 月结算统计
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-05-26 20:54:46
 */
public class YuejiesuantongjiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 课程类型
	 */
	
	private String kechengleixing;
		
	/**
	 * 课时
	 */
	
	private String keshi;
		
	/**
	 * 学费
	 */
	
	private Integer xuefei;
		
	/**
	 * 完成人数
	 */
	
	private Integer wanchengrenshu;
		
	/**
	 * 月份
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date yuefen;
		
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
	 * 设置：完成人数
	 */
	 
	public void setWanchengrenshu(Integer wanchengrenshu) {
		this.wanchengrenshu = wanchengrenshu;
	}
	
	/**
	 * 获取：完成人数
	 */
	public Integer getWanchengrenshu() {
		return wanchengrenshu;
	}
				
	
	/**
	 * 设置：月份
	 */
	 
	public void setYuefen(Date yuefen) {
		this.yuefen = yuefen;
	}
	
	/**
	 * 获取：月份
	 */
	public Date getYuefen() {
		return yuefen;
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
