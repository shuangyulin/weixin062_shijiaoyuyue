package com.dao;

import com.entity.ZongjiesuantongjiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZongjiesuantongjiVO;
import com.entity.view.ZongjiesuantongjiView;


/**
 * 总结算统计
 * 
 * @author 
 * @email 
 * @date 2021-05-26 20:54:46
 */
public interface ZongjiesuantongjiDao extends BaseMapper<ZongjiesuantongjiEntity> {
	
	List<ZongjiesuantongjiVO> selectListVO(@Param("ew") Wrapper<ZongjiesuantongjiEntity> wrapper);
	
	ZongjiesuantongjiVO selectVO(@Param("ew") Wrapper<ZongjiesuantongjiEntity> wrapper);
	
	List<ZongjiesuantongjiView> selectListView(@Param("ew") Wrapper<ZongjiesuantongjiEntity> wrapper);

	List<ZongjiesuantongjiView> selectListView(Pagination page,@Param("ew") Wrapper<ZongjiesuantongjiEntity> wrapper);
	
	ZongjiesuantongjiView selectView(@Param("ew") Wrapper<ZongjiesuantongjiEntity> wrapper);
	
}
