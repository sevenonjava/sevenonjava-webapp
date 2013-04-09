package cn.sunjiachao.sevenonjava.web.service.impl;

import cn.sunjiachao.sevenonjava.core.model.xmlbean.Menus;
import cn.sunjiachao.sevenonjava.core.utils.SystemUtils;
import cn.sunjiachao.sevenonjava.web.service.SystemService;
import cn.sunjiachao.sevenonjava.web.service.exception.SystemException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.simpleframework.xml.Serializer;
import org.simpleframework.xml.core.Persister;
import org.springframework.stereotype.Service;

import java.io.File;

@Service
public class SystemServiceImpl implements SystemService {

    private static Log log = LogFactory.getLog(SystemServiceImpl.class);
    private static String classpath = SystemUtils.getClassPath();
    private static Serializer serializer;
    private static String xmlFileName = "menus.xml";
    private static Menus menus;

    public SystemServiceImpl() {
        if (log.isDebugEnabled()) {
            log.debug("SystemService init...");
        }
        init();
    }

    private static void init() {
        serializer = new Persister();
        File source = new File(classpath, xmlFileName);
        try {
            menus = serializer.read(Menus.class, source);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public Menus getMenus() throws SystemException {
        return menus;
    }

//    public static void main(String[] args) throws Exception {
//        Serializer serializer = new Persister();
//        File source = new File(classpath, "menus.xml");
//        Menus menus = serializer.read(Menus.class, source);
//    }
}
