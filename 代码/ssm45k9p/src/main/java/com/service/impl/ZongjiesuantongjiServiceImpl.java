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


import com.dao.ZongjiesuantongjiDao;
import com.entity.ZongjiesuantongjiEntity;
import com.service.ZongjiesuantongjiService;
import com.entity.vo.ZongjiesuantongjiVO;
import com.entity.view.ZongjiesuantongjiView;

@Service("zongjiesuantongjiService")
public class ZongjiesuantongjiServiceImpl extends ServiceImpl<ZongjiesuantongjiDao, ZongjiesuantongjiEntity> implements ZongjiesuantongjiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZongjiesuantongjiEntity> page = this.selectPage(
                new Query<ZongjiesuantongjiEntity>(params).getPage(),
                new EntityWrapper<ZongjiesuantongjiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZongjiesuantongjiEntity> wrapper) {
		  Page<ZongjiesuantongjiView> page =new Query<ZongjiesuantongjiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZongjiesuantongjiVO> selectListVO(Wrapper<ZongjiesuantongjiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZongjiesuantongjiVO selectVO(Wrapper<ZongjiesuantongjiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZongjiesuantongjiView> selectListView(Wrapper<ZongjiesuantongjiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZongjiesuantongjiView selectView(Wrapper<ZongjiesuantongjiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
