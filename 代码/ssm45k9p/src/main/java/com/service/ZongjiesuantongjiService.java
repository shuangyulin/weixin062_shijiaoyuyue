package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZongjiesuantongjiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZongjiesuantongjiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZongjiesuantongjiView;


/**
 * 总结算统计
 *
 * @author 
 * @email 
 * @date 2021-05-26 20:54:46
 */
public interface ZongjiesuantongjiService extends IService<ZongjiesuantongjiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZongjiesuantongjiVO> selectListVO(Wrapper<ZongjiesuantongjiEntity> wrapper);
   	
   	ZongjiesuantongjiVO selectVO(@Param("ew") Wrapper<ZongjiesuantongjiEntity> wrapper);
   	
   	List<ZongjiesuantongjiView> selectListView(Wrapper<ZongjiesuantongjiEntity> wrapper);
   	
   	ZongjiesuantongjiView selectView(@Param("ew") Wrapper<ZongjiesuantongjiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZongjiesuantongjiEntity> wrapper);
   	
}

