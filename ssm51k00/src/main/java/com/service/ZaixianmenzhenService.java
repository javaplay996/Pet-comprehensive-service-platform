package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZaixianmenzhenEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZaixianmenzhenVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZaixianmenzhenView;


/**
 * 在线门诊
 *
 * @author 
 * @email 
 * @date 2021-05-02 09:22:13
 */
public interface ZaixianmenzhenService extends IService<ZaixianmenzhenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZaixianmenzhenVO> selectListVO(Wrapper<ZaixianmenzhenEntity> wrapper);
   	
   	ZaixianmenzhenVO selectVO(@Param("ew") Wrapper<ZaixianmenzhenEntity> wrapper);
   	
   	List<ZaixianmenzhenView> selectListView(Wrapper<ZaixianmenzhenEntity> wrapper);
   	
   	ZaixianmenzhenView selectView(@Param("ew") Wrapper<ZaixianmenzhenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZaixianmenzhenEntity> wrapper);
   	
}

