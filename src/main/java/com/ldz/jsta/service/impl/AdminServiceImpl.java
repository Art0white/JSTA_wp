package com.ldz.jsta.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ldz.jsta.entity.Admin;
import com.ldz.jsta.mapper.AdminMapper;
import com.ldz.jsta.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.util.UUID;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
@Service
public class AdminServiceImpl extends ServiceImpl<AdminMapper, Admin> implements IAdminService {
   @Autowired
   private AdminMapper adminMapper;
   @Autowired
   private RedisTemplate redisTemplate;
    /**
     * 登录
     * @param admin
     * @param response
     * @return
     */
    @Override
    public boolean login(Admin admin, HttpServletResponse response) {
        QueryWrapper<Admin> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("admin_account",admin.getAdminAccount());
        Admin admin1 = adminMapper.selectOne(queryWrapper);
        if (admin1==null){
            return false;
        }
        boolean ret = admin.getAdminPassword().equals(admin1.getAdminPassword());
        if (ret){
            String uuid = UUID.randomUUID().toString().replaceAll("-","");
            redisTemplate.opsForValue().set("user:"+uuid,admin1);
            Cookie cookie = new Cookie("userTicket", uuid);
            response.addCookie(cookie);
        }
        return ret;
    }
}
