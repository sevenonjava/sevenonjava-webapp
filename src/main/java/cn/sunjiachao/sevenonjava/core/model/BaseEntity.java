package cn.sunjiachao.sevenonjava.core.model;

import org.apache.commons.lang3.builder.ToStringBuilder;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import java.io.Serializable;
import java.util.Date;

import static javax.persistence.GenerationType.IDENTITY;

@MappedSuperclass
public abstract class BaseEntity implements Serializable {

    protected Long id;
    protected Date createtime;
    protected int isActive;

    @Id
    @GeneratedValue(strategy = IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getCreatetime() {
        return this.createtime;
    }

    public void setCreatetime(Date createdAt) {
        this.createtime = createdAt;
    }

    public int getActive() {
        return isActive;
    }

    public void setActive(int active) {
        isActive = active;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
