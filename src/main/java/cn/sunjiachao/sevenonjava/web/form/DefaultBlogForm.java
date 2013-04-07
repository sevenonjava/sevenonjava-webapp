package cn.sunjiachao.sevenonjava.web.form;

import cn.sunjiachao.sevenonjava.core.model.Blog;

import java.io.Serializable;
import java.util.Date;

/**
 * 文章列表页实体
 */
public class DefaultBlogForm implements Serializable {
    private long id;
    private String title;
    private String excerpt;//摘要
    private Date createtime;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getExcerpt() {
        return excerpt;
    }

    public void setExcerpt(String excerpt) {
        this.excerpt = excerpt;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}
