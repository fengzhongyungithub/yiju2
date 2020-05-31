package cn.beizhen.entity;

/**
 * 地区表
 * 2020年5月9日10:26:21
 */
public class Sys_position {
    private int id;//
    private String area_name;//	地区名称
    private int area_code;//	地区编码
    private String city_code;//	城市编码
    private int level;//	地区等级
    private String area_index;//	地区索引

    public Sys_position() {
    }

    public Sys_position(int id, String area_name, int area_code, String city_code, int level, String area_index) {
        this.id = id;
        this.area_name = area_name;
        this.area_code = area_code;
        this.city_code = city_code;
        this.level = level;
        this.area_index = area_index;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getArea_name() {
        return area_name;
    }

    public void setArea_name(String area_name) {
        this.area_name = area_name;
    }

    public int getArea_code() {
        return area_code;
    }

    public void setArea_code(int area_code) {
        this.area_code = area_code;
    }

    public String getCity_code() {
        return city_code;
    }

    public void setCity_code(String city_code) {
        this.city_code = city_code;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public String getArea_index() {
        return area_index;
    }

    public void setArea_index(String area_index) {
        this.area_index = area_index;
    }
}
