package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YuejiesuantongjiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YuejiesuantongjiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YuejiesuantongjiView;


/**
 * 月结算统计
 *
 * @author 
 * @email 
 * @date 2021-05-26 20:54:46
 */
public interface YuejiesuantongjiService extends IService<YuejiesuantongjiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YuejiesuantongjiVO> selectListVO(Wrapper<YuejiesuantongjiEntity> wrapper);
   	
   	YuejiesuantongjiVO selectVO(@Param("ew") Wrapper<YuejiesuantongjiEntity> wrapper);
   	
   	List<YuejiesuantongjiView> selectListView(Wrapper<YuejiesuantongjiEntity> wrapper);
   	
   	YuejiesuantongjiView selectView(@Param("ew") Wrapper<YuejiesuantongjiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YuejiesuantongjiEntity> wrapper);
   	
}

