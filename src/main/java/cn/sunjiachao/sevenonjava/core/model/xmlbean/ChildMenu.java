package cn.sunjiachao.sevenonjava.core.model.xmlbean;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root
public class ChildMenu {

    @Attribute
    private long id;
    @Attribute
    private String name;
    @Attribute
    private String i18n;
    @Attribute
    private String url;

    public void setChildMenuInfo(long id, String name, String i18n, String url) {
        this.i18n = i18n;
        this.id = id;
        this.name = name;
        this.url = url;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getI18n() {
        return i18n;
    }

    public void setI18n(String i18n) {
        this.i18n = i18n;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
