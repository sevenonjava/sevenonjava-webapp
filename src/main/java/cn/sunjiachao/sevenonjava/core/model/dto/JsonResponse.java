package cn.sunjiachao.sevenonjava.core.model.dto;

import org.springframework.stereotype.Component;

import java.io.Serializable;

@Component
public class JsonResponse implements Serializable {

    private int code;
    private String message;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
