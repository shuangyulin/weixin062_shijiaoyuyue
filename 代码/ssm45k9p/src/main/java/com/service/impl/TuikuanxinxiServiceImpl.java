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


import com.dao.TuikuanxinxiDao;
import com.entity.TuikuanxinxiEntity;
import com.service.TuikuanxinxiService;
import com.entity.vo.TuikuanxinxiVO;
import com.entity.view.TuikuanxinxiView;

@Service("tuikuanxinxiService")
public class TuikuanxinxiServiceImpl extends ServiceImpl<TuikuanxinxiDao, TuikuanxinxiEntity> implements TuikuanxinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<TuikuanxinxiEntity> page = this.selectPage(
                new Query<TuikuanxinxiEntity>(params).getPage(),
                new EntityWrapper<TuikuanxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<TuikuanxinxiEntity> wrapper) {
		  Page<TuikuanxinxiView> page =new Query<TuikuanxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<TuikuanxinxiVO> selectListVO(Wrapper<TuikuanxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public TuikuanxinxiVO selectVO(Wrapper<TuikuanxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<TuikuanxinxiView> selectListView(Wrapper<TuikuanxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public TuikuanxinxiView selectView(Wrapper<TuikuanxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
