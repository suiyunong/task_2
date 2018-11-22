package cn.syn.springmvc.model;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
@Component
public class User {

    //ID自增，不会出现null的情况，不用包装类
//    @NotNull(message="请输入id")
//    @NotEmpty(message = "id不能为空")
    private Integer id;
    @NotEmpty(message="学生姓名不能为空")
    private String name;
    @NotEmpty(message="qq号不能为空")
    private String qq;
    @NotEmpty(message="修真类型不能为空")
    private String type;
    @NotNull(message="入学时间不能为空")
    private Long entro_time;
    @NotEmpty(message="毕业学校不能为空")
    private String school;
    @NotNull(message="学号不能为空")
    private Integer number;
    @NotEmpty(message="日报链接不能为空")
    private String diary_link;
    @NotEmpty(message="学习宣言不能为空")
    private String slogan;
    @NotEmpty(message="辅导师兄不能为空")
    private String brother;
    private Long create_at=System.currentTimeMillis();
    private Long update_at=this.create_at;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Long getEntro_time() {
        return entro_time;
    }

    public void setEntro_time(Long entro_time) {
        this.entro_time = entro_time;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getDiary_link() {
        return diary_link;
    }

    public void setDiary_link(String diary_link) {
        this.diary_link = diary_link;
    }

    public String getSlogan() {
        return slogan;
    }

    public void setSlogan(String slogan) {
        this.slogan = slogan;
    }

    public String getBrother() {
        return brother;
    }

    public void setBrother(String brother) {
        this.brother = brother;
    }

    public Long getCreate_at() {
        return create_at;
    }

    public void setCreate_at(Long create_at) {
        this.create_at = create_at;
    }

    public Long getUpdate_at() {
        return update_at;
    }

    public void setUpdate_at(Long update_at) {
        this.update_at = update_at;
    }

    //定义构造方法
    public User() {
        super();
    }

    //定义打印people对象方法
    @Override
    public String toString() {
        return "Student[id" + id+",name " + name + " ,qq " + qq + " ,type " + type + " ,entro_time" + entro_time +
                ",school" + school +  ",diary_link" + diary_link + ",slogan" + slogan + ",brother" + brother +  ",create_at" + create_at +
                ",update_at" + update_at + "]";
    }

}
