package cn.sunjiachao.sevenonjava.core.model;

import org.apache.commons.lang3.builder.ToStringBuilder;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "blog")
public class Blog extends BaseEntity implements Serializable {

    private String title;
    private String content;
    private Set<Category> categories = new HashSet<Category>();

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }

    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(name = "blog_category", catalog = "sevenonjava", joinColumns = {
            @JoinColumn(name = "blogid", nullable = false, updatable = false)},
            inverseJoinColumns = {@JoinColumn(name = "categoryid",
                    nullable = false, updatable = false)})
    public Set<Category> getCategories() {
        return categories;
    }

    public void setCategories(Set<Category> categories) {
        this.categories = categories;
    }
}
