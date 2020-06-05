package cn.beizhen.entity;

public class Code {
    private int id;
    private String phone;
    private String code;

    public Code() {
    }

    public Code( String phone, String code) {
        this.phone = phone;
        this.code = code;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
