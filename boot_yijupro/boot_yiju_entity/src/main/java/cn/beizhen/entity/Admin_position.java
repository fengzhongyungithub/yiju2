package cn.beizhen.entity;

/**
 * 2020年5月9日10:17:14
 * 职位表
 */
public class Admin_position {
   private int position_id;//	职位id
   private String position_name;//	职位名称

    public Admin_position(int position_id, String position_name) {
        this.position_id = position_id;
        this.position_name = position_name;
    }

    public Admin_position() {
    }

    public int getPosition_id() {
        return position_id;
    }

    public void setPosition_id(int position_id) {
        this.position_id = position_id;
    }

    public String getPosition_name() {
        return position_name;
    }

    public void setPosition_name(String position_name) {
        this.position_name = position_name;
    }
}
