package com.ldz.jsta.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ldz.jsta.entity.Information;
import com.ldz.jsta.mapper.ImagesMapper;
import com.ldz.jsta.mapper.InformationMapper;
import com.ldz.jsta.service.IInformationService;
import com.ldz.jsta.util.RespBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
@Service
public class InformationServiceImpl extends ServiceImpl<InformationMapper, Information> implements IInformationService {

    @Autowired
    InformationMapper informationMapper;

    /**
     * 获取联系信息
     * @return
     */
    @Override
    public RespBean getInformation() {
        QueryWrapper<Information> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("information_id","information_address","information_tel","information_email","information_hotline","information_fac");
        List<Information> information = informationMapper.selectList(queryWrapper);
        return RespBean.success(information);
    }
}