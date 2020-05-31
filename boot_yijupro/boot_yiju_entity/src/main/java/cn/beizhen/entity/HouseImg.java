package cn.beizhen.entity;

/**
 * 房屋图片表
 * 2020年5月9日10:25:04
 */
public class HouseImg {
	//图片id
	private  Integer  imgId;
	//房屋id
 	private Integer houseId;
 	//大图
 	private String bigImg;
 	//小图
 	private String smallImg;
 	
	public HouseImg() {
		super();
		
	}
	public HouseImg(Integer imgId, Integer houseId, String bigImg,
			String smallImg) {
		super();
		this.imgId = imgId;
		this.houseId = houseId;
		this.bigImg = bigImg;
		this.smallImg = smallImg;
	}
	public Integer getImgId() {
		return imgId;
	}
	public void setImgId(Integer imgId) {
		this.imgId = imgId;
	}
	public Integer getHouseId() {
		return houseId;
	}
	public void setHouseId(Integer houseId) {
		this.houseId = houseId;
	}
	public String getBigImg() {
		return bigImg;
	}
	public void setBigImg(String bigImg) {
		this.bigImg = bigImg;
	}
	public String getSmallImg() {
		return smallImg;
	}
	public void setSmallImg(String smallImg) {
		this.smallImg = smallImg;
	}
 	
 	
}
