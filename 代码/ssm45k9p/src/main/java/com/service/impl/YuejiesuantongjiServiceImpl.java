package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.YuejiesuantongjiDao;
import com.entity.YuejiesuantongjiEntity;
import com.service.YuejiesuantongjiService;
import com.entity.vo.YuejiesuantongjiVO;
import com.entity.view.YuejiesuantongjiView;

@Service("yuejiesuantongjiService")
public class YuejiesuantongjiServiceImpl extends ServiceImpl<YuejiesuantongjiDao, YuejiesuantongjiEntity> implements YuejiesuantongjiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YuejiesuantongjiEntity> page = this.selectPage(
                new Query<YuejiesuantongjiEntity>(params).getPage(),
                new EntityWrapper<YuejiesuantongjiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YuejiesuantongjiEntity> wrapper) {
		  Page<YuejiesuantongjiView> page =new Query<YuejiesuantongjiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YuejiesuantongjiVO> selectListVO(Wrapper<YuejiesuantongjiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YuejiesuantongjiVO selectVO(Wrapper<YuejiesuantongjiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YuejiesuantongjiView> selectListView(Wrapper<YuejiesuantongjiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YuejiesuantongjiView selectView(Wrapper<YuejiesuantongjiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
