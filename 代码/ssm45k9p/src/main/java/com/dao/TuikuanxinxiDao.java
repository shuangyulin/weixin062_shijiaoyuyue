package com.dao;

import com.entity.TuikuanxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.TuikuanxinxiVO;
import com.entity.view.TuikuanxinxiView;


/**
 * 退款信息
 * 
 * @author 
 * @email 
 * @date 2021-05-26 20:54:46
 */
public interface TuikuanxinxiDao extends BaseMapper<TuikuanxinxiEntity> {
	
	List<TuikuanxinxiVO> selectListVO(@Param("ew") Wrapper<TuikuanxinxiEntity> wrapper);
	
	TuikuanxinxiVO selectVO(@Param("ew") Wrapper<TuikuanxinxiEntity> wrapper);
	
	List<TuikuanxinxiView> selectListView(@Param("ew") Wrapper<TuikuanxinxiEntity> wrapper);

	List<TuikuanxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<TuikuanxinxiEntity> wrapper);
	
	TuikuanxinxiView selectView(@Param("ew") Wrapper<TuikuanxinxiEntity> wrapper);
	
}
