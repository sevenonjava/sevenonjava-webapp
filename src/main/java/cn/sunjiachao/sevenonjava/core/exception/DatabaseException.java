package cn.sunjiachao.sevenonjava.core.exception;

import java.io.Serializable;

public class DatabaseException extends Exception implements Serializable {

    private static final long serialVersionUID = 1L;

    public DatabaseException(String message) {
        super(message);
    }

    public DatabaseException(Throwable cause) {
        super(cause);
    }
}
