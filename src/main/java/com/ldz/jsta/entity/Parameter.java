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
public class Parameter implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 参数id
     */
    @TableId(value = "parameter_id", type = IdType.AUTO)
    private Integer parameterId;

    /**
     * 参数名
     */
    private String parameterName;


}
