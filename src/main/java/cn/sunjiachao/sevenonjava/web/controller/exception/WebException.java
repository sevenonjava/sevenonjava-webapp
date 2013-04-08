package cn.sunjiachao.sevenonjava.web.controller.exception;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: jiachao.sun
 * Date: 13-4-8
 * Time: 下午3:14
 * To change this template use File | Settings | File Templates.
 */
public class WebException extends Exception implements Serializable {

    public WebException(String message) {
        super(message);
    }

    public WebException(Throwable throwable) {
        super(throwable);
    }
}
