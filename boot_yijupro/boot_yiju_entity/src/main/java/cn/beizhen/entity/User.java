package cn.beizhen.entity;


import javax.persistence.Table;
import java.util.Date;

@Table(name = "user")
public class User {
   private int userid;//
   private String username;//	用户名
   private String userpassowrd;//	密码
   private int sex;//	1代表男 ，2代表女
   private String name;//	真实姓名
   private Date birthday;//	出生年月日
   private Date createtime;//	注册时间默认是当前时间
   private Date updatetime;//	修改时间
   private String head_pic;//	头像地址
   private String phone;//	注册手机号
   private int status;//	使用状态（1正常 0非正常）
   private Date last_login_time;//	最后登录时间，即用户一登录就更新该字段默认为当前时间
   private int userMaster; //判断用户是否是房东 0 不是 1 是


    public User() {
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpassowrd() {
        return userpassowrd;
    }

    public void setUserpassowrd(String userpassowrd) {
        this.userpassowrd = userpassowrd;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public String getHead_pic() {
        return head_pic;
    }

    public void setHead_pic(String head_pic) {
        this.head_pic = head_pic;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getLast_login_time() {
        return last_login_time;
    }

    public void setLast_login_time(Date last_login_time) {
        this.last_login_time = last_login_time;
    }

    public int getUserMaster() {
        return userMaster;
    }

    public void setUserMaster(int userMaster) {
        this.userMaster = userMaster;
    }

    public User(int userid, String username, String userpassowrd, int sex, String name, Date birthday, Date createtime, Date updatetime, String head_pic, String phone, int status, Date last_login_time, int userMaster) {
        this.userid = userid;
        this.username = username;
        this.userpassowrd = userpassowrd;
        this.sex = sex;
        this.name = name;
        this.birthday = birthday;
        this.createtime = createtime;
        this.updatetime = updatetime;
        this.head_pic = head_pic;
        this.phone = phone;
        this.status = status;
        this.last_login_time = last_login_time;
        this.userMaster = userMaster;
    }
}
