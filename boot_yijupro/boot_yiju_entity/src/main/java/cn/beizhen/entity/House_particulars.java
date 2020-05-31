package cn.beizhen.entity;

/**
 * 房屋详细表
 * 2020年5月9日17:06:22
 */
public class House_particulars {
    private int particulars_id;//	详细表ID
    private int house_id;   //关联房屋ID
    private String house_payment;//	付款 如：季付
    private int adminchargeid;//	收费标准
    private String house_orientation;//	房屋朝向
    private String house_maintain;//	维护 如：今天
    private String house_checkin;//	入住 ：随时入住
    private int house_floorcount;//	楼层
    private String house_elevator;//	电梯：有无
    private String house_carstall;//	车位 如租用车位
    private String house_water;//	用水 ：民水
    private String house_electricity;//	用电 :民电
    private String house_fuelgas;//	燃气 ：有
    private String house_heating;//	采暖:如集中采暖
    private String house_tenancyterm;//	租期 如1年
    private String house_see;//	看房 ： 如随时可看
    private int washing;//	洗衣机 有0 无1
    private int airconditioner;//	空调 有0 无1
    private int closet;//	衣柜 有0 无1
    private int TV;//	电视 有0 无1
    private int refrigerator;//	冰箱 有0 无1
    private int waterheater;//	热水器 有0 无1
    private int bed;//	床 有0 无1
    private int heating;//	暖气 0有 无1
    private int broadband;//	宽带 有0 无1
    private int naturalgas;//	天然气 有0 无1

    public int getParticulars_id() {
        return particulars_id;
    }

    public void setParticulars_id(int particulars_id) {
        this.particulars_id = particulars_id;
    }

    public int getHouse_id() {
        return house_id;
    }

    public void setHouse_id(int house_id) {
        this.house_id = house_id;
    }

    public String getHouse_payment() {
        return house_payment;
    }

    public void setHouse_payment(String house_payment) {
        this.house_payment = house_payment;
    }

    public int getAdminchargeid() {
        return adminchargeid;
    }

    public void setAdminchargeid(int adminchargeid) {
        this.adminchargeid = adminchargeid;
    }

    public String getHouse_orientation() {
        return house_orientation;
    }

    public void setHouse_orientation(String house_orientation) {
        this.house_orientation = house_orientation;
    }

    public String getHouse_maintain() {
        return house_maintain;
    }

    public void setHouse_maintain(String house_maintain) {
        this.house_maintain = house_maintain;
    }

    public String getHouse_checkin() {
        return house_checkin;
    }

    public void setHouse_checkin(String house_checkin) {
        this.house_checkin = house_checkin;
    }

    public int getHouse_floorcount() {
        return house_floorcount;
    }

    public void setHouse_floorcount(int house_floorcount) {
        this.house_floorcount = house_floorcount;
    }

    public String getHouse_elevator() {
        return house_elevator;
    }

    public void setHouse_elevator(String house_elevator) {
        this.house_elevator = house_elevator;
    }

    public String getHouse_carstall() {
        return house_carstall;
    }

    public void setHouse_carstall(String house_carstall) {
        this.house_carstall = house_carstall;
    }

    public String getHouse_water() {
        return house_water;
    }

    public void setHouse_water(String house_water) {
        this.house_water = house_water;
    }

    public String getHouse_electricity() {
        return house_electricity;
    }

    public void setHouse_electricity(String house_electricity) {
        this.house_electricity = house_electricity;
    }

    public String getHouse_fuelgas() {
        return house_fuelgas;
    }

    public void setHouse_fuelgas(String house_fuelgas) {
        this.house_fuelgas = house_fuelgas;
    }

    public String getHouse_heating() {
        return house_heating;
    }

    public void setHouse_heating(String house_heating) {
        this.house_heating = house_heating;
    }

    public String getHouse_tenancyterm() {
        return house_tenancyterm;
    }

    public void setHouse_tenancyterm(String house_tenancyterm) {
        this.house_tenancyterm = house_tenancyterm;
    }

    public String getHouse_see() {
        return house_see;
    }

    public void setHouse_see(String house_see) {
        this.house_see = house_see;
    }

    public int getWashing() {
        return washing;
    }

    public void setWashing(int washing) {
        this.washing = washing;
    }

    public int getAirconditioner() {
        return airconditioner;
    }

    public void setAirconditioner(int airconditioner) {
        this.airconditioner = airconditioner;
    }

    public int getCloset() {
        return closet;
    }

    public void setCloset(int closet) {
        this.closet = closet;
    }

    public int getTV() {
        return TV;
    }

    public void setTV(int TV) {
        this.TV = TV;
    }

    public int getRefrigerator() {
        return refrigerator;
    }

    public void setRefrigerator(int refrigerator) {
        this.refrigerator = refrigerator;
    }

    public int getWaterheater() {
        return waterheater;
    }

    public void setWaterheater(int waterheater) {
        this.waterheater = waterheater;
    }

    public int getBed() {
        return bed;
    }

    public void setBed(int bed) {
        this.bed = bed;
    }

    public int getHeating() {
        return heating;
    }

    public void setHeating(int heating) {
        this.heating = heating;
    }

    public int getBroadband() {
        return broadband;
    }

    public void setBroadband(int broadband) {
        this.broadband = broadband;
    }

    public int getNaturalgas() {
        return naturalgas;
    }

    public void setNaturalgas(int naturalgas) {
        this.naturalgas = naturalgas;
    }

    public House_particulars() {
    }

    public House_particulars(int particulars_id, String house_payment, int adminchargeid, String house_orientation, String house_maintain, String house_checkin, int house_floorcount, String house_elevator, String house_carstall, String house_water, String house_electricity, String house_fuelgas, String house_heating, String house_tenancyterm, String house_see, int washing, int airconditioner, int closet, int TV, int refrigerator, int waterheater, int bed, int heating, int broadband, int naturalgas) {
        this.particulars_id = particulars_id;
        this.house_payment = house_payment;
        this.adminchargeid = adminchargeid;
        this.house_orientation = house_orientation;
        this.house_maintain = house_maintain;
        this.house_checkin = house_checkin;
        this.house_floorcount = house_floorcount;
        this.house_elevator = house_elevator;
        this.house_carstall = house_carstall;
        this.house_water = house_water;
        this.house_electricity = house_electricity;
        this.house_fuelgas = house_fuelgas;
        this.house_heating = house_heating;
        this.house_tenancyterm = house_tenancyterm;
        this.house_see = house_see;
        this.washing = washing;
        this.airconditioner = airconditioner;
        this.closet = closet;
        this.TV = TV;
        this.refrigerator = refrigerator;
        this.waterheater = waterheater;
        this.bed = bed;
        this.heating = heating;
        this.broadband = broadband;
        this.naturalgas = naturalgas;
    }

    @Override
    public String toString() {
        return "House_particulars{" +
                "particulars_id=" + particulars_id +
                ", house_id=" + house_id +
                ", house_payment='" + house_payment + '\'' +
                ", adminchargeid=" + adminchargeid +
                ", house_orientation='" + house_orientation + '\'' +
                ", house_maintain='" + house_maintain + '\'' +
                ", house_checkin='" + house_checkin + '\'' +
                ", house_floorcount=" + house_floorcount +
                ", house_elevator='" + house_elevator + '\'' +
                ", house_carstall='" + house_carstall + '\'' +
                ", house_water='" + house_water + '\'' +
                ", house_electricity='" + house_electricity + '\'' +
                ", house_fuelgas='" + house_fuelgas + '\'' +
                ", house_heating='" + house_heating + '\'' +
                ", house_tenancyterm='" + house_tenancyterm + '\'' +
                ", house_see='" + house_see + '\'' +
                ", washing=" + washing +
                ", airconditioner=" + airconditioner +
                ", closet=" + closet +
                ", TV=" + TV +
                ", refrigerator=" + refrigerator +
                ", waterheater=" + waterheater +
                ", bed=" + bed +
                ", heating=" + heating +
                ", broadband=" + broadband +
                ", naturalgas=" + naturalgas +
                '}';
    }
}
