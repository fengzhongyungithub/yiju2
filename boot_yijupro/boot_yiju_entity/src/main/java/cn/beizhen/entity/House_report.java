package cn.beizhen.entity;

import java.util.Date;

/**
 * 2020年5月21日23:30:18
 * 房屋举报表
 */
public class House_report {
   private int report_id;//	举报表的id
   private int house_id;//	房屋id
   private int user_id;//	举报人ID
   private int report_type_id;//	/由于举报是可以进行复选的，所以把复选的id读取出来进行拼接 比如 1,2,4,5  然后后台查询进行拆分查询
   private String report_content;//	补充/文字说明
   private Date report_date;//	举报时间
   private int report_admin_id;//	受审的管理员
   private Date report_admin_date;//	受审时间
   private int report_state;//	受审状态 0.未审核 1.已审核 2.打回
   private String report_return_content;//	返回的内容，如果不通过你得说说为啥不通过呢
   private int update_admin_id;//	修改人
   private Date update_date;//	修改时间

   public House_report() {
   }

   public House_report(int report_id, int house_id, int user_id, int report_type_id, String report_content, Date report_date, int report_admin_id, Date report_admin_date, int report_state, String report_return_content, int update_admin_id, Date update_date) {
      this.report_id = report_id;
      this.house_id = house_id;
      this.user_id = user_id;
      this.report_type_id = report_type_id;
      this.report_content = report_content;
      this.report_date = report_date;
      this.report_admin_id = report_admin_id;
      this.report_admin_date = report_admin_date;
      this.report_state = report_state;
      this.report_return_content = report_return_content;
      this.update_admin_id = update_admin_id;
      this.update_date = update_date;
   }

   public int getReport_id() {
      return report_id;
   }

   public void setReport_id(int report_id) {
      this.report_id = report_id;
   }

   public int getHouse_id() {
      return house_id;
   }

   public void setHouse_id(int house_id) {
      this.house_id = house_id;
   }

   public int getUser_id() {
      return user_id;
   }

   public void setUser_id(int user_id) {
      this.user_id = user_id;
   }

   public int getReport_type_id() {
      return report_type_id;
   }

   public void setReport_type_id(int report_type_id) {
      this.report_type_id = report_type_id;
   }

   public String getReport_content() {
      return report_content;
   }

   public void setReport_content(String report_content) {
      this.report_content = report_content;
   }

   public Date getReport_date() {
      return report_date;
   }

   public void setReport_date(Date report_date) {
      this.report_date = report_date;
   }

   public int getReport_admin_id() {
      return report_admin_id;
   }

   public void setReport_admin_id(int report_admin_id) {
      this.report_admin_id = report_admin_id;
   }

   public Date getReport_admin_date() {
      return report_admin_date;
   }

   public void setReport_admin_date(Date report_admin_date) {
      this.report_admin_date = report_admin_date;
   }

   public int getReport_state() {
      return report_state;
   }

   public void setReport_state(int report_state) {
      this.report_state = report_state;
   }

   public String getReport_return_content() {
      return report_return_content;
   }

   public void setReport_return_content(String report_return_content) {
      this.report_return_content = report_return_content;
   }

   public int getUpdate_admin_id() {
      return update_admin_id;
   }

   public void setUpdate_admin_id(int update_admin_id) {
      this.update_admin_id = update_admin_id;
   }

   public Date getUpdate_date() {
      return update_date;
   }

   public void setUpdate_date(Date update_date) {
      this.update_date = update_date;
   }
}
