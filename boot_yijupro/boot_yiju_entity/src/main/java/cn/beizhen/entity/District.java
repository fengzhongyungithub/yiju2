package cn.beizhen.entity;
/**
 * 2020年5月9日14:31:30
 * 孟希
 * 全国城市
 * @param map
 * @return
 */

public class District {
    private int id;
    private int pid;
    private String district_name;
    private int type;
    private int hierarchy;
    private String district_sqe;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getDistrict_name() {
        return district_name;
    }

    public void setDistrict_name(String district_name) {
        this.district_name = district_name;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getHierarchy() {
        return hierarchy;
    }

    public void setHierarchy(int hierarchy) {
        this.hierarchy = hierarchy;
    }

    public String getDistrict_sqe() {
        return district_sqe;
    }

    public void setDistrict_sqe(String district_sqe) {
        this.district_sqe = district_sqe;
    }
}
