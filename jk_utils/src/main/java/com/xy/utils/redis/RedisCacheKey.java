package com.xy.utils.redis;

/**
 * @author xieyan
 * @description 缓存的redis key
 * @date 2018/3/2.
 */
public class RedisCacheKey {

    /**
     * 用户权限key
     */
    public static final String USER_PERMISSION_ID  ="jk.user.permission.id.%s";

    public static final String SHIRO_REDIS_SESSION_PRE = "shiro_redis_session_pre_";
}
