package cn.beizhen.entity;

import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * 房屋类
 *
 * @author object
 */
@Table(name = "house")
@Entity
public class House {
    @Id
    @KeySql(useGeneratedKeys = true)
    // 主键id
    private Integer id;
    // 房屋价格
    @Column(name = "price")
    private Double price;
    @Column(name = "district")
    private String district;

    //	 房屋地区编码省份
    @Column(name = "house_area_code")
    private Integer house_area_code;
    //	城市编码、
    @Column(name = "house_city_code")
    private String house_city_code;
    // 小区

    // 状态 0--未卖 1--已卖 2--等待支付
    @Column(name = "state")
    private Integer state;
    // 房屋地址
    @Column(name = "address")
    private String address;


    //	关联主人id
    @Column(name = "user_Id")
    private Integer user_id;

    // 房子大小
    @Column(name = "housesize")
    private Integer housesize;
    // 图片路径
    @Column(name = "picture")
    private String picture;
    // 租住类型
    @Column(name = "renttype")
    private Integer renttype;
    // 楼层
    @Column(name = "floot")
    private Integer floot;
    //房屋建立年份
    @Column(name = "house_createYear")
    private Date house_createYear;


    //房屋户型
    @Column(name = "houseType")
    private String houseType;

    //房屋分类
    @Column(name = "categoryType")
    private int categoryType;
    //介绍标题
    @Column(name = "rname")
    private String rname;
    //介绍
    @Column(name = "houseIntroduce")
    private String houseIntroduce;
    //收藏数量
    @Column(name = "collectionCount")
    private Integer collectionCount;
    //房屋发布时间 0未发布 1审核通过 2 打回  3下架
    @Column(name = "housepd")
    private Integer housepd;
    //    推送
    @Column(name = "housepush")
    private Integer housepush;
    //    用户房产证照片
    @Column(name = "housefczimg")
    private String housefczimg;
    //    是否交推送费用 0 是  1 否
    @Column(name = "housepushpd")
    private Integer housepushpd;
    //交了多少推送费用
    @Column(name = "housepushmoney")
    private Double housepushmoney;
    //    修改人的id
    @Column(name = "adminupdate")
    private Integer adminupdate;
    //修改时间
    @Column(name = "updatetime")
    private Date updateTime;
    @Column(name = "house_issuetime")
    private Date house_issuetime;

    @Column(name = "area")
    private String area;

    private String area_name;	//省份名字取自Sys-position
    private String city_code;	//城市名字取自Sys-position


    //房屋图片的集合
//    private List<HouseImg> list;


    public House() {
        super();
    }

    public House(Integer id, Double price, Integer house_area_code, String house_city_code, String area, Integer state, String address, Integer user_id, Integer housesize, String picture, Integer renttype, Integer floot, Date house_createYear, String houseType, int categoryType, String rname, String houseIntroduce, Integer collectionCount, Integer housepd, Integer housepush, String housefczimg, Integer housepushpd, Double housepushmoney, Integer adminupdate, Date updateTime) {
        this.id = id;
        this.price = price;
        this.house_area_code = house_area_code;
        this.house_city_code = house_city_code;
        this.state = state;
        this.address = address;
        this.user_id = user_id;
        this.housesize = housesize;
        this.picture = picture;
        this.renttype = renttype;
        this.floot = floot;
        this.house_createYear = house_createYear;
        this.houseType = houseType;
        this.categoryType = categoryType;
        this.rname = rname;
        this.houseIntroduce = houseIntroduce;
        this.collectionCount = collectionCount;
        this.housepd = housepd;
        this.housepush = housepush;
        this.housefczimg = housefczimg;
        this.housepushpd = housepushpd;
        this.housepushmoney = housepushmoney;
        this.adminupdate = adminupdate;
        this.updateTime = updateTime;
    }


    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public Date getHouse_issuetime() {
        return house_issuetime;
    }

    public void setHouse_issuetime(Date house_issuetime) {
        this.house_issuetime = house_issuetime;
    }

    public String getArea_name() {
        return area_name;
    }

    public void setArea_name(String area_name) {
        this.area_name = area_name;
    }

    public String getCity_code() {
        return city_code;
    }

    public void setCity_code(String city_code) {
        this.city_code = city_code;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getHouse_area_code() {
        return house_area_code;
    }

    public void setHouse_area_code(Integer house_area_code) {
        this.house_area_code = house_area_code;
    }

    public String getHouse_city_code() {
        return house_city_code;
    }

    public void setHouse_city_code(String house_city_code) {
        this.house_city_code = house_city_code;
    }



    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }



    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getHousesize() {
        return housesize;
    }

    public void setHousesize(Integer housesize) {
        this.housesize = housesize;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public Integer getRenttype() {
        return renttype;
    }

    public void setRenttype(Integer renttype) {
        this.renttype = renttype;
    }

    public Integer getFloot() {
        return floot;
    }

    public void setFloot(Integer floot) {
        this.floot = floot;
    }

    public Date getHouse_createYear() {
        return house_createYear;
    }

    public void setHouse_createYear(Date house_createYear) {
        this.house_createYear = house_createYear;
    }

    public String getHouseType() {
        return houseType;
    }

    public void setHouseType(String houseType) {
        this.houseType = houseType;
    }

    public int getCategoryType() {
        return categoryType;
    }

    public void setCategoryType(int categoryType) {
        this.categoryType = categoryType;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public String getHouseIntroduce() {
        return houseIntroduce;
    }

    public void setHouseIntroduce(String houseIntroduce) {
        this.houseIntroduce = houseIntroduce;
    }

    public Integer getCollectionCount() {
        return collectionCount;
    }

    public void setCollectionCount(Integer collectionCount) {
        this.collectionCount = collectionCount;
    }

    public Integer getHousepd() {
        return housepd;
    }

    public void setHousepd(Integer housepd) {
        this.housepd = housepd;
    }

    public Integer getHousepush() {
        return housepush;
    }

    public void setHousepush(Integer housepush) {
        this.housepush = housepush;
    }

    public String getHousefczimg() {
        return housefczimg;
    }

    public void setHousefczimg(String housefczimg) {
        this.housefczimg = housefczimg;
    }

    public Integer getHousepushpd() {
        return housepushpd;
    }

    public void setHousepushpd(Integer housepushpd) {
        this.housepushpd = housepushpd;
    }

    public Double getHousepushmoney() {
        return housepushmoney;
    }

    public void setHousepushmoney(Double housepushmoney) {
        this.housepushmoney = housepushmoney;
    }

    public Integer getAdminupdate() {
        return adminupdate;
    }

    public void setAdminupdate(Integer adminupdate) {
        this.adminupdate = adminupdate;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

//    public List<HouseImg> getList() {
//        return list;
//    }
//
//    public void setList(List<HouseImg> list) {
//        this.list = list;
//    }



}
