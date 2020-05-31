package cn.beizhen.entity;

import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 房源分类
 * 2020年5月9日10:19:38
 * @author object
 *
 */
@Table(name = "category")
@Entity
public class Category  {
	@Id
	@KeySql(useGeneratedKeys = true)
	private int id;//
	@Column(name = "name")
	private String name;//	房屋类型

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Category() {
	}

	public Category(int id, String name) {
		this.id = id;
		this.name = name;
	}
}
