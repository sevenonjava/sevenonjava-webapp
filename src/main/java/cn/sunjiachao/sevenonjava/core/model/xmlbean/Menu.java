package cn.sunjiachao.sevenonjava.core.model.xmlbean;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

import java.util.List;

@Root
public class Menu {

    @Attribute
    private long id;
    @Attribute
    private String name;
    @Attribute
    private String i18n;

    @ElementList(inline = true, entry = "child-menu")
    private List<ChildMenu> childMenuList;

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

    public List<ChildMenu> getChildMenuList() {
        return childMenuList;
    }

    public void setChildMenuList(List<ChildMenu> childMenuList) {
        this.childMenuList = childMenuList;
    }
}
