package cn.beizhen.entity;

/**
 * 2020年5月21日23:28:48
 * 举报类型表
 */
public class House_report_type {

   private int report_type_id;//	举报表的id
   private String report_type_name;//	举报内容

    public House_report_type() {
    }

    public House_report_type(int report_type_id, String report_type_name) {
        this.report_type_id = report_type_id;
        this.report_type_name = report_type_name;
    }

    public int getReport_type_id() {
        return report_type_id;
    }

    public void setReport_type_id(int report_type_id) {
        this.report_type_id = report_type_id;
    }

    public String getReport_type_name() {
        return report_type_name;
    }

    public void setReport_type_name(String report_type_name) {
        this.report_type_name = report_type_name;
    }
}
