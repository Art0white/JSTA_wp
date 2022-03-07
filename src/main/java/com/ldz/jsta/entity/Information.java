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
public class Information implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 联系信息id
     */
    @TableId(value = "information_id", type = IdType.AUTO)
    private Integer informationId;

    /**
     * 联系地址
     */
    private String informationAddress;

    /**
     * 联系电话
     */
    private String informationTel;

    /**
     * 联系邮箱
     */
    private String informationEmail;

    /**
     * 联系热线
     */
    private String informationHotline;

    /**
     * 联系传真
     */
    private String informationFac;


}
