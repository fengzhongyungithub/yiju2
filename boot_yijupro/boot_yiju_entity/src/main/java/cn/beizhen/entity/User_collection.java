package cn.beizhen.entity;

import java.util.Date;

/**
 * 2020年5月22日09:26:27
 * 收藏表
 */
public class User_collection {
    private  int  collection_id;//	收藏表id
    private  int  house_Id;//	房屋_id
    private  int  user_Id;//	用户id
    private  int  user_master_Id;//	房东id
    private Date create_date;//	添加时间
    private  int  collection_pd;//	是否继续收藏 0收藏 1不收藏

    public User_collection() {
    }

    public User_collection(int collection_id, int house_Id, int user_Id, int user_master_Id, Date create_date, int collection_pd) {
        this.collection_id = collection_id;
        this.house_Id = house_Id;
        this.user_Id = user_Id;
        this.user_master_Id = user_master_Id;
        this.create_date = create_date;
        this.collection_pd = collection_pd;
    }

    public int getCollection_id() {
        return collection_id;
    }

    public void setCollection_id(int collection_id) {
        this.collection_id = collection_id;
    }

    public int getHouse_Id() {
        return house_Id;
    }

    public void setHouse_Id(int house_Id) {
        this.house_Id = house_Id;
    }

    public int getUser_Id() {
        return user_Id;
    }

    public void setUser_Id(int user_Id) {
        this.user_Id = user_Id;
    }

    public int getUser_master_Id() {
        return user_master_Id;
    }

    public void setUser_master_Id(int user_master_Id) {
        this.user_master_Id = user_master_Id;
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    public int getCollection_pd() {
        return collection_pd;
    }

    public void setCollection_pd(int collection_pd) {
        this.collection_pd = collection_pd;
    }
}
