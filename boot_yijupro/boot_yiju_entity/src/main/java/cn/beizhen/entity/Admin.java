package cn.beizhen.entity;

import java.util.Date;

/**
 * 2020年5月9日10:08:17
 * 后台工作人员类
 * @author object
 * 
 */
public class Admin {
	private int id	;//id
	private String code	;//工号
	private String password	;//密码
	private String admin_name	;//工作人员名字
	private String admin_img	;//工作人员头像
	private String adminphone	;//手机号
	private String admin_extension_phone	;//分机号码
	private int position_id	;//职位id
	private int depa_id	;//部门id
	private int admin_pd	;//是否启用 0未启用 1 启用
	private String create_code	;//创建人
	private Date create_time	;//创建时间默认为当前时间
	private String update_code	;//修改人
	private String update_time	;//修改时间

	public Admin() {
	}

	public Admin(int id, String code, String password, String admin_name, String admin_img, String adminphone, String admin_extension_phone, int position_id, int depa_id, int admin_pd, String create_code, Date create_time, String update_code, String update_time) {
		this.id = id;
		this.code = code;
		this.password = password;
		this.admin_name = admin_name;
		this.admin_img = admin_img;
		this.adminphone = adminphone;
		this.admin_extension_phone = admin_extension_phone;
		this.position_id = position_id;
		this.depa_id = depa_id;
		this.admin_pd = admin_pd;
		this.create_code = create_code;
		this.create_time = create_time;
		this.update_code = update_code;
		this.update_time = update_time;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getAdmin_img() {
		return admin_img;
	}

	public void setAdmin_img(String admin_img) {
		this.admin_img = admin_img;
	}

	public String getAdminphone() {
		return adminphone;
	}

	public void setAdminphone(String adminphone) {
		this.adminphone = adminphone;
	}

	public String getAdmin_extension_phone() {
		return admin_extension_phone;
	}

	public void setAdmin_extension_phone(String admin_extension_phone) {
		this.admin_extension_phone = admin_extension_phone;
	}

	public int getPosition_id() {
		return position_id;
	}

	public void setPosition_id(int position_id) {
		this.position_id = position_id;
	}

	public int getDepa_id() {
		return depa_id;
	}

	public void setDepa_id(int depa_id) {
		this.depa_id = depa_id;
	}

	public int getAdmin_pd() {
		return admin_pd;
	}

	public void setAdmin_pd(int admin_pd) {
		this.admin_pd = admin_pd;
	}

	public String getCreate_code() {
		return create_code;
	}

	public void setCreate_code(String create_code) {
		this.create_code = create_code;
	}

	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

	public String getUpdate_code() {
		return update_code;
	}

	public void setUpdate_code(String update_code) {
		this.update_code = update_code;
	}

	public String getUpdate_time() {
		return update_time;
	}

	public void setUpdate_time(String update_time) {
		this.update_time = update_time;
	}
}
