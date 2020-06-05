package cn.beizhen.entity;

import java.util.Date;

/**
 * 2020年5月21日23:16:35
 * 合同范本表
 */
public class Admin_contract_mode {
    private int  contract_id	;//	合同范本id
    private String  contract_href;//	合同范本的路径
    private int  update_admin_id;//	修改人
    private Date update_admin_date;//	修改时间

    public Admin_contract_mode() {
    }

    public Admin_contract_mode(int contract_id, String contract_href, int update_admin_id, Date update_admin_date) {
        this.contract_id = contract_id;
        this.contract_href = contract_href;
        this.update_admin_id = update_admin_id;
        this.update_admin_date = update_admin_date;
    }

    public int getContract_id() {
        return contract_id;
    }

    public void setContract_id(int contract_id) {
        this.contract_id = contract_id;
    }

    public String getContract_href() {
        return contract_href;
    }

    public void setContract_href(String contract_href) {
        this.contract_href = contract_href;
    }

    public int getUpdate_admin_id() {
        return update_admin_id;
    }

    public void setUpdate_admin_id(int update_admin_id) {
        this.update_admin_id = update_admin_id;
    }

    public Date getUpdate_admin_date() {
        return update_admin_date;
    }

    public void setUpdate_admin_date(Date update_admin_date) {
        this.update_admin_date = update_admin_date;
    }
}
