package com.ldz.jsta.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class Value implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 参数值id
     */
    @TableId(value = "value_id", type = IdType.AUTO)
    private Integer valueId;

    /**
     * 产品id
     */
    private Integer valueProductId;

    /**
     * 参数名
     */
    private String valueParameterName;

    /**
     * 参数id
     */
    private Integer valueParameterId;

    /**
     * 参数值
     */
    private String valueParameterValue;


}
