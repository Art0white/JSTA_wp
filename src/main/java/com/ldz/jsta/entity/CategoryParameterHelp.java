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
public class CategoryParameterHelp implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 参数和分类维护id
     */
    @TableId(value = "category_parameter_help_id", type = IdType.AUTO)
    private Integer categoryParameterHelpId;

    /**
     * 分类id
     */
    private Integer categoryParameterHelpCategoryId;

    /**
     * 参数id
     */
    private Integer categoryParameterHelpParameterId;


}
