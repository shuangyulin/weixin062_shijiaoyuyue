package com.dao;

import com.entity.YuejiesuantongjiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YuejiesuantongjiVO;
import com.entity.view.YuejiesuantongjiView;


/**
 * 月结算统计
 * 
 * @author 
 * @email 
 * @date 2021-05-26 20:54:46
 */
public interface YuejiesuantongjiDao extends BaseMapper<YuejiesuantongjiEntity> {
	
	List<YuejiesuantongjiVO> selectListVO(@Param("ew") Wrapper<YuejiesuantongjiEntity> wrapper);
	
	YuejiesuantongjiVO selectVO(@Param("ew") Wrapper<YuejiesuantongjiEntity> wrapper);
	
	List<YuejiesuantongjiView> selectListView(@Param("ew") Wrapper<YuejiesuantongjiEntity> wrapper);

	List<YuejiesuantongjiView> selectListView(Pagination page,@Param("ew") Wrapper<YuejiesuantongjiEntity> wrapper);
	
	YuejiesuantongjiView selectView(@Param("ew") Wrapper<YuejiesuantongjiEntity> wrapper);
	
}
