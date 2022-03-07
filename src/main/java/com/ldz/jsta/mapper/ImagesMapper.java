package com.ldz.jsta.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ldz.jsta.entity.Admin;
import com.ldz.jsta.entity.Images;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
@Repository
@Mapper
public interface ImagesMapper extends BaseMapper<Images> {

}
