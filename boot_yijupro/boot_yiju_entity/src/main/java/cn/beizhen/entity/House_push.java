package cn.beizhen.entity;

import java.util.Date;

/**
 * 2020年5月21日23:26:11
 * 推送表
 */
public class House_push {
    private int push_id;//	推送表
    private Date push_date;//	推送时间
    private int house_id;//	房屋ID
    private int push_type;//	推送类型， 0轮播图 1.最新房源 2.主题推送 3.市区下推送
    private String push_img;//	首页展示的图片的路径/可更换轮播图/可更换首人气了主题了首页展示图片
    private String push_href;//	链接地址/比如说我们是推广一个活动/或者是别的网址来我们这里打广告/我们这里要设置一个连接
    private int ispush;//	是否启用推送 0默认不推送 1推送
    private int admin_id;//	创建人
    private Date create_date;//	创建时间
    private int update_admin;//	修改人
    private Date update_date;//	修改时间

    public House_push() {
    }

    public int getPush_id() {
        return push_id;
    }

    public void setPush_id(int push_id) {
        this.push_id = push_id;
    }

    public Date getPush_date() {
        return push_date;
    }

    public void setPush_date(Date push_date) {
        this.push_date = push_date;
    }

    public int getHouse_id() {
        return house_id;
    }

    public void setHouse_id(int house_id) {
        this.house_id = house_id;
    }

    public int getPush_type() {
        return push_type;
    }

    public void setPush_type(int push_type) {
        this.push_type = push_type;
    }

    public String getPush_img() {
        return push_img;
    }

    public void setPush_img(String push_img) {
        this.push_img = push_img;
    }

    public String getPush_href() {
        return push_href;
    }

    public void setPush_href(String push_href) {
        this.push_href = push_href;
    }

    public int getIspush() {
        return ispush;
    }

    public void setIspush(int ispush) {
        this.ispush = ispush;
    }

    public int getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(int admin_id) {
        this.admin_id = admin_id;
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    public int getUpdate_admin() {
        return update_admin;
    }

    public void setUpdate_admin(int update_admin) {
        this.update_admin = update_admin;
    }

    public Date getUpdate_date() {
        return update_date;
    }

    public void setUpdate_date(Date update_date) {
        this.update_date = update_date;
    }

    public House_push(int push_id, Date push_date, int house_id, int push_type, String push_img, String push_href, int ispush, int admin_id, Date create_date, int update_admin, Date update_date) {
        this.push_id = push_id;
        this.push_date = push_date;
        this.house_id = house_id;
        this.push_type = push_type;
        this.push_img = push_img;
        this.push_href = push_href;
        this.ispush = ispush;
        this.admin_id = admin_id;
        this.create_date = create_date;
        this.update_admin = update_admin;
        this.update_date = update_date;
    }
}
