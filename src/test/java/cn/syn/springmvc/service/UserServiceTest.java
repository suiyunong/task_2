package cn.syn.springmvc.service;

import cn.syn.springmvc.model.User;
import cn.syn.springmvc.utils.DBTools;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/spring-*.xml"})
public class UserServiceTest {
    @Resource
    private UserService userService;
    @Test
    public void add() throws Exception {
        User user = new User();
        user.setName("盐22注解");
        user.setQq("61212773747");
        user.setType("java");
        user.setEntro_time(121727127L);
        user.setSchool("西南大学");
        user.setNumber(274455);
        user.setDiary_link("https://www.cnblogs.com/xingyunblog/p/6243179.html");
        user.setSlogan("我欲乘风");
        user.setBrother("刘宁");
        user.setCreate_at(System.currentTimeMillis());
        user.setUpdate_at(System.currentTimeMillis());
        int id=userService.add(user);
        if (id >0) {
            System.out.println("添加成功！返回ID：" + id);
            System.out.println(user.toString());
        }else{
            System.out.println("添加失败");
        }
    }

    @Test
    public void update() throws Exception {
        User user = userService.findById(42);
        user.setType("PM22");
        user.setName("南宫红鸡");
        boolean bool=userService.update(user);
        if (bool) {
            System.out.println("更新成功！");
        } else {
            System.out.println("更新失败！");
        }
    }

    @Test
    public void delete() throws Exception {
        boolean bool = userService.delete(61);
        if (bool) {
            System.out.println("删除成功！");
        } else {
            System.out.println("删除失败！");
        }
    }

    @Test
    public void findById() throws Exception {
        User user = userService.findById(4);
        System.out.println(user.toString());
    }

    @Test
    public void findAll() throws Exception {
        List<User> userList = userService.findAll();
        for (User u : userList
                ) {
            DBTools.printPeople(u);
        }
    }
    @Test
    public void findUsersByPage() throws Exception {

        List<User> userList = userService.findUsersByPage(0, 5);
        for (User u : userList
                ) {
            DBTools.printPeople(u);
        }
    }
}