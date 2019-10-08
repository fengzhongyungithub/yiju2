package cn.jbit.entity;

import java.io.Serializable;

/*
 * 主题 实体类
 * @author
 */
public class Topic implements Serializable {
    private int tid;
	private String tname;

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

}
