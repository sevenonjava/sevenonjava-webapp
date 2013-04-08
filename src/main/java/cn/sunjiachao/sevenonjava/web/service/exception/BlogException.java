package cn.sunjiachao.sevenonjava.web.service.exception;

import java.io.Serializable;

/**
 * 博客异常
 */
public class BlogException extends Exception implements Serializable {
    public BlogException(String message) {
        super(message);
    }

    public BlogException(Throwable throwable) {
        super(throwable);
    }
}
