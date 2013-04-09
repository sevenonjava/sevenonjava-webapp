package cn.sunjiachao.sevenonjava.web.service.exception;

import java.io.Serializable;

/**
 * 配置文件异常
 */
public class SystemException extends Exception implements Serializable {
    public SystemException(String message) {
        super(message);
    }

    public SystemException(Throwable throwable) {
        super(throwable);
    }
}
