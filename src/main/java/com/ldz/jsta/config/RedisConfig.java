package com.ldz.jsta.config;

import org.springframework.context.annotation.Bean;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.GenericJackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.stereotype.Component;

/**
 * @Description:redis配置
 * @Author:啵唧啵唧~~
 * @Date:2022/3/4
 */
@Component
public class RedisConfig {

    @Bean
    public RedisTemplate<String,Object> redisTemplate(RedisConnectionFactory factory){
        RedisTemplate<String, Object> template = new RedisTemplate<>();
        //key值序列化
        template.setKeySerializer(new StringRedisSerializer());
        //value值序列化
        template.setValueSerializer(new GenericJackson2JsonRedisSerializer());
        //Hash的key序列化
        template.setHashKeySerializer(new StringRedisSerializer());
        //Hash的value序列化
        template.setHashValueSerializer(new GenericJackson2JsonRedisSerializer());
        //注入连接工厂
        template.setConnectionFactory(factory);
        return template;
    }
}
