package cn.syn.springmvc.service.impl;

import cn.syn.springmvc.dao.UserMapper;
import cn.syn.springmvc.model.User;
import cn.syn.springmvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public int add(User user) {
        int result = userMapper.add(user);
        return user.getId();
    }

    @Override
    public boolean update(User user) {
        int result = userMapper.update(user);
        boolean bool = result == 1 ? true : false;
        return bool;
    }

    @Override
    public boolean delete(int id) {
        int result = userMapper.delete(id);
        boolean bool = result == 1 ? true : false;
        return bool;
    }

    @Override
    public User findById(int id) {
        return userMapper.findById(id);
    }

    @Override
    public List<User> findAll() {
        return userMapper.findAll();
    }

    @Override
    public List<User> findUsersByPage(int start, int perPageUsers) throws Exception {
        List<User> list = userMapper.findUsersByPage(start, perPageUsers);
        return list;
    }


//    public  static List<User> findAll() {
//        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring-service.xml");
//        UserMapper mapper = (UserMapper) applicationContext.getBean("peopleMapper");
//        List<User> peopleList = new ArrayList<User>();
//        peopleList = mapper.findAll();
//        return peopleList;
//    }
//
//    public static int addPeople() {
//        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring-service.xml");
//        UserMapper mapper = (UserMapper) applicationContext.getBean("peopleMapper");
//
//        User user = new User();
//        int id=0;
//        user.setName("盐22注解");
//        user.setQq("61212773747");
//        user.setType("java");
//        user.setEntro_time(121727127);
//        user.setSchool("西南大学");
//        user.setNumber(274455);
//        user.setDiary_link("https://www.cnblogs.com/xingyunblog/p/6243179.html");
//        user.setSlogan("我欲乘风");
//        user.setBrother("刘宁");
//        user.setCreate_at(System.currentTimeMillis());
//        user.setUpdate_at(System.currentTimeMillis());
//        id = mapper.add(user);
//        System.out.println(id);
//        if (id == 1) {
//            System.out.println("添加数据成功");
//            System.out.println("返回id：" + user.getId());
//        }
//        return id;
//    }
}
