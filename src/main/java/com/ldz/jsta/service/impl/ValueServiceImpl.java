package com.ldz.jsta.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ldz.jsta.entity.Value;
import com.ldz.jsta.mapper.ValueMapper;
import com.ldz.jsta.service.IValueService;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
@Service
public class ValueServiceImpl extends ServiceImpl<ValueMapper, Value> implements IValueService {

}
