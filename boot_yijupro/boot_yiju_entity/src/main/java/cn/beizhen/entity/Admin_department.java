package cn.beizhen.entity;

/**
 * 2020年5月21日23:18:40
 * 部门表
 */
public class Admin_department {
    private int depa_id;//	部门id
    private String depa_name;//	部门名称

    public Admin_department() {
    }

    public Admin_department(int depa_id, String depa_name) {
        this.depa_id = depa_id;
        this.depa_name = depa_name;
    }

    public int getDepa_id() {
        return depa_id;
    }

    public void setDepa_id(int depa_id) {
        this.depa_id = depa_id;
    }

    public String getDepa_name() {
        return depa_name;
    }

    public void setDepa_name(String depa_name) {
        this.depa_name = depa_name;
    }
}
