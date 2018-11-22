package cn.syn.springmvc.service;

import cn.syn.springmvc.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {

    //    添加方法，添加成功返回id
    int add(User user);


    //更新方法
    boolean update(@Param("user") User user);


    //删除方法
    boolean delete(@Param("id") int id);

    //    查找方法
    User findById(@Param("id") int id);

    //查找所有
    List<User> findAll();

    List<User> findUsersByPage(int start, int perPageUsers) throws Exception;








//    public static List <User> findAll() {
//
//        List<User> peopleList = new ArrayList<User>( );
//        for (int i = 0; i < 4; i++) {
//            User people = new User();
//            people.setId(1+i);
//            people.setName("zhou添加" + (i + 1));
//            people.setQq("61212773747" + (i + 1));
//            people.setType("java");
//            people.setEntro_time(121727127);
//            people.setSchool("西南大学");
//            people.setNumber(27373 + (i + 1));
//            people.setDiary_link("https://www.cnblogs.com/xingyunblog/p/6243179.html");
//            people.setSlogan("我欲乘风");
//            people.setBrother("刘宁");
//            people.setCreate_at(System.currentTimeMillis());
//            people.setUpdate_at(System.currentTimeMillis());
//            peopleList.add(people);
//        }
//        return peopleList;

    }

