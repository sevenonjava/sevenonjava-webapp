package cn.sunjiachao.sevenonjava.core.utils;

public class SystemUtils {

    /**
     * 获取配置文件信息
     */
    public static String getClassPath() {
        return Thread.currentThread()
                .getContextClassLoader().getResource("").getPath();// 配置文件路径
    }
}
