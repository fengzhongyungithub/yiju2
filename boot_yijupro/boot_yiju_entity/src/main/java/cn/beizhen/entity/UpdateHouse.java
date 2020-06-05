package cn.beizhen.entity;

public class UpdateHouse {
    private User user;
    private House house;
    private House_particulars particulars;
    private HouseImg houseImg;


    public UpdateHouse() {
    }
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "UpdateHouse{" +
                "user=" + user +
                ", house=" + house +
                ", particulars=" + particulars +
                ", houseImg=" + houseImg +
                '}';
    }

    public UpdateHouse(User user, House house, House_particulars particulars, HouseImg houseImg) {
        this.user = user;
        this.house = house;
        this.particulars = particulars;
        this.houseImg = houseImg;
    }

    public House getHouse() {
        return house;
    }

    public void setHouse(House house) {
        this.house = house;
    }

    public House_particulars getParticulars() {
        return particulars;
    }

    public void setParticulars(House_particulars particulars) {
        this.particulars = particulars;
    }

    public HouseImg getHouseImg() {
        return houseImg;
    }

    public void setHouseImg(HouseImg houseImg) {
        this.houseImg = houseImg;
    }
}
