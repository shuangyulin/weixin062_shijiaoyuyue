package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.TuikuanxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.TuikuanxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.TuikuanxinxiView;


/**
 * 退款信息
 *
 * @author 
 * @email 
 * @date 2021-05-26 20:54:46
 */
public interface TuikuanxinxiService extends IService<TuikuanxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<TuikuanxinxiVO> selectListVO(Wrapper<TuikuanxinxiEntity> wrapper);
   	
   	TuikuanxinxiVO selectVO(@Param("ew") Wrapper<TuikuanxinxiEntity> wrapper);
   	
   	List<TuikuanxinxiView> selectListView(Wrapper<TuikuanxinxiEntity> wrapper);
   	
   	TuikuanxinxiView selectView(@Param("ew") Wrapper<TuikuanxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<TuikuanxinxiEntity> wrapper);
   	
}

