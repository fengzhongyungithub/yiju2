package cn.beizhen.entity;

import javax.persistence.Table;
/**
 * 成交单类
 * 2020年5月9日10:28:07
 * @author object
 *
 */
@Table(name = "transaction")
public class Transaction {
	private int id;//	主键id
	private int Transaction_user_id;//	房东ID
	private int user_id;//	租赁人id
	private int house_id;//	房屋id
	private int TransactionDate;//	成交日期
	private int TransactionPrice;//	成交价格
	private int Rentaltime;//	租赁时长
	private int houseDescription;//	房屋描述信息
	private int platform_money;//	中介费
	private int admin_id;//	工作人员负责人
	private int create_time;//	创建时间
	private int updateadmin_id;//	修改人
	private int updatetime;//	修改时间

	public Transaction(int id, int transaction_user_id, int user_id, int house_id, int transactionDate, int transactionPrice, int rentaltime, int houseDescription, int platform_money, int admin_id, int create_time, int updateadmin_id, int updatetime) {
		this.id = id;
		Transaction_user_id = transaction_user_id;
		this.user_id = user_id;
		this.house_id = house_id;
		TransactionDate = transactionDate;
		TransactionPrice = transactionPrice;
		Rentaltime = rentaltime;
		this.houseDescription = houseDescription;
		this.platform_money = platform_money;
		this.admin_id = admin_id;
		this.create_time = create_time;
		this.updateadmin_id = updateadmin_id;
		this.updatetime = updatetime;
	}

	public Transaction() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTransaction_user_id() {
		return Transaction_user_id;
	}

	public void setTransaction_user_id(int transaction_user_id) {
		Transaction_user_id = transaction_user_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getHouse_id() {
		return house_id;
	}

	public void setHouse_id(int house_id) {
		this.house_id = house_id;
	}

	public int getTransactionDate() {
		return TransactionDate;
	}

	public void setTransactionDate(int transactionDate) {
		TransactionDate = transactionDate;
	}

	public int getTransactionPrice() {
		return TransactionPrice;
	}

	public void setTransactionPrice(int transactionPrice) {
		TransactionPrice = transactionPrice;
	}

	public int getRentaltime() {
		return Rentaltime;
	}

	public void setRentaltime(int rentaltime) {
		Rentaltime = rentaltime;
	}

	public int getHouseDescription() {
		return houseDescription;
	}

	public void setHouseDescription(int houseDescription) {
		this.houseDescription = houseDescription;
	}

	public int getPlatform_money() {
		return platform_money;
	}

	public void setPlatform_money(int platform_money) {
		this.platform_money = platform_money;
	}

	public int getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}

	public int getCreate_time() {
		return create_time;
	}

	public void setCreate_time(int create_time) {
		this.create_time = create_time;
	}

	public int getUpdateadmin_id() {
		return updateadmin_id;
	}

	public void setUpdateadmin_id(int updateadmin_id) {
		this.updateadmin_id = updateadmin_id;
	}

	public int getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(int updatetime) {
		this.updatetime = updatetime;
	}
}
