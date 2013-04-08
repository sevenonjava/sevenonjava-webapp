package cn.sunjiachao.sevenonjava.web.service.exception;

import java.io.Serializable;

/**
 * 类别异常
 */
public class CategoryException extends Exception implements Serializable {

    public CategoryException(String message) {
        super(message);
    }

    public CategoryException(Throwable throwable) {
        super(throwable);
    }

}
