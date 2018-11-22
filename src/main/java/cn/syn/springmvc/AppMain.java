package cn.syn.springmvc;

import cn.syn.springmvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class AppMain {
    @Autowired
    private static UserService userService;
    public void setUserService(UserService userService){
        this.userService = userService;}
    public static void main(String[] args) {
//        User people = new User();
//        people.setBrother("123");
//        people.id=12;
//        System.out.println(people.id);



//        List<User> peopleList = new ArrayList<User>();
//        peopleList = userService.findAll();
//        for (User p : peopleList
//                ) {
//            DBTools.printPeople(p);
//        }
    }
}
