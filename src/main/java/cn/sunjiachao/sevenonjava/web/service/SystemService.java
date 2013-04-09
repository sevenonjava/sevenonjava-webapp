package cn.sunjiachao.sevenonjava.web.service;

import cn.sunjiachao.sevenonjava.core.model.xmlbean.Menus;
import cn.sunjiachao.sevenonjava.web.service.exception.SystemException;

public interface SystemService {

    public Menus getMenus() throws SystemException;

}
