package cn.syn.springmvc.controller;
import net.sf.json.JSONObject;
import cn.syn.springmvc.model.User;
import cn.syn.springmvc.service.UserService;
import cn.syn.springmvc.utils.Page;
import cn.syn.springmvc.utils.DBTools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

/**
 *  HelloController是一个基于注解的控制器,
 *  可以同时处理多个请求动作，并且无须实现任何接口。
 *  org.springframework.stereotype.Controller注解用于指示该类是一个控制器
 */
@Controller
@RequestMapping("/user")
public class UserController {


    @Autowired
    private UserService userService;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Autowired
    Page p;
    @RequestMapping(value = "/page", method = RequestMethod.GET)
    public String findUsersByPage(int page, Model model) {
        try {
            p.setTotalUsers(userService.findAll().size());
            p.setCurrentPage(page);
            List<User> userList = userService.findUsersByPage((page - 1) * p.getPageSize(), p.getPageSize());
//            for (User u : userList
//                    ) {
//                DBTools.printPeople(u);
//            }
//            查询结果是list集合
            model.addAttribute("userList", userList);
            model.addAttribute("page", p);
            return "allUser";
        } catch (Exception e) {
            model.addAttribute("error", "未能获取数据");
            return "errors";
        }
    }
    @RequestMapping(value = "/firstPage", method = RequestMethod.GET)
    public String findUsersByPage( Model model) {
        try {
            p.setTotalUsers(userService.findAll().size());
            List<User> userList = userService.findUsersByPage(0, p.getPageSize());
//            查询结果是list集合
            model.addAttribute("userList", userList);
            model.addAttribute("page", p);
            return "allUser";
        } catch (Exception e) {
            model.addAttribute("error", "未能获取数据");
            return "errors";
        }
    }

    /**
     * org.springframework.web.bind.annotation.RequestMapping注解
     * 用来映射请求的的URL和请求的方法等。本例用来映射"/hello"
     * hello只是一个普通方法。
     * 该方法返回一个包含视图路径或视图路径和模型的ModelAndView对象。
     * */
    @RequestMapping(value="hello",method = RequestMethod.GET)
    public String printHello(ModelMap model) {
        model.addAttribute("message", "Hello Spring MVC Framework!");
        return "hello";
    }

    /**
     * 跳转到添加用户界面
     * @return
     */
    @RequestMapping("toAddUser")
    public String toAddUser(){
        return "addUser";
    }


    /**
     * 添加用户并重定向
     * @param model
     * @param user
     * @return
     */
//    @RequestMapping(value = "addUser",method=RequestMethod.POST)
//    public String addUser(Model model,@Validated User user,BindingResult result){
//        if (result.hasErrors()){
//            List<ObjectError> allErrors = result.getAllErrors();
//            for (ObjectError objectError : allErrors
//                    ) {
//                System.out.println(objectError.getDefaultMessage());
//            }
//            model.addAttribute("errors", allErrors);
//            return "errors";
//        }
//            user.setCreate_at(System.currentTimeMillis());
//            user.setUpdate_at(System.currentTimeMillis());
//            userService.add(user);
//        System.out.println(user);
//        return "redirect:/user/firstPage";
////        return "allUser";
//    }
    @RequestMapping(value = "addUser",method=RequestMethod.POST)
    public String addUser(Model model,@Valid User user,BindingResult result){
        if (result.hasErrors()){
            List<ObjectError> allErrors = result.getAllErrors();
            for (ObjectError objectError : allErrors
                    ) {
                System.out.println(objectError.getDefaultMessage());
            }
            model.addAttribute("errors", allErrors);
            return "errors";
        }
        user.setCreate_at(System.currentTimeMillis());
        user.setUpdate_at(System.currentTimeMillis());
        userService.add(user);
        System.out.println(user);
        return "redirect:/user/firstPage";
//        return "allUser";
    }

    /**
     * 查询全部用户
     * @param model
     * @return
     */
    @RequestMapping("getAllUser")
    public String getAllUser(Model model){
        List<User> user = userService.findAll();
        model.addAttribute("userList",user);
        return "allUser";
    }

    /**
     *
     * @param id
     * @param model
     * @return 跳转到更新用户页面
     */
    @RequestMapping("toDelete")
    public String toDelete(@RequestParam(value = "id")Integer id, Model model){
        model.addAttribute("user",userService.findById(id));
        System.out.println(userService.findById(id));
        return "deleteUser";
    }
    /**
     * 删除用户
     * @param
     * @param id
     * @return
     */
    @RequestMapping(value = "delUser",method = RequestMethod.DELETE)
    public String removeUser(@RequestParam(value = "id")Integer id){
        userService.delete(id);
//        model.addAttribute("user",userService.delete(id));
        //userService.deleteUser(id);
        return "redirect:/user/firstPage";
    }


    /**
     * 跳转到更新用户页面
     */
    @RequestMapping("toUpdate")
    public String toUpdate(@RequestParam(value = "id")Integer id, Model model){
        model.addAttribute("user",userService.findById(id));
        System.out.println(userService.findById(id));
        return "updateUser";
    }

    /**
     * 更新用户
     * @param
     * @return
     */
    @RequestMapping(value = "updateUser",method = RequestMethod.PUT)
    public String updateUser(User user, Model model, @RequestParam(value = "id") Integer id){
        System.out.println(id);
        user.setUpdate_at(System.currentTimeMillis());
        userService.update(user);
        return "redirect:/user/firstPage";
    }

    /**
     * 跳转到查询用户界面
     * @return
     */
    @RequestMapping("toFindById")
    public String toFindById(){
        return "findUserById";
    }
    /**
     * 根据id查询学生,增加接口校验功能
     * @param id
     * @return
     */
    @RequestMapping(value="/findById",method=RequestMethod.GET)
    public String findById(Model model,Integer id){

        if (id==null){
//            model.addAttribute("errors", );
            String error = "id不能为空，请输入id查询";
            model.addAttribute("error", error);
            return "errors";
        }
           User user = userService.findById(id);
            if (user==null){
                System.out.println("查询用户不存在");
                String error = "您所查询的用户不存在";
                model.addAttribute("error", error);
                return "errors";
            }else{
                List<User> userList = new ArrayList<>();
                userList.add(user);
                model.addAttribute("userList",userList);
                return "userMatchId";

        }
    }
//    @RequestMapping(value="/findById",method=RequestMethod.GET)
//    public String findById(Model model, Integer id){
//        User user = new User();
//        user = userService.findById(id);
//        List<User> userList = new ArrayList<>();
//        userList.add(user);
//        model.addAttribute("userList",userList);
//        return "allUser";
//    }

//    @RequestMapping(value = "/demo")
//    public String baseInfoCompany(@RequestParam @Valid User user , BindingResult result) {
//        if(result.hasErrors()){
//            //这边对错误消息进行处理
//        }
//        return "success";
//    }
















    /**
     * taglib 返回json数据
     * @param model
     * @return
     */
 @RequestMapping("json")
    public String returnJson(Model model) {
     User user = userService.findById(9);
//     JSONObject userJson = JSONObject.fromObject(user);
     model.addAttribute("user", user);
     return "json";
 }

    @RequestMapping("json2")
    //可以直接在返回的方法上添加@ResponseBody 实现对象自动转换json格式
    public String returnJson2(Model model) {
        User user = userService.findById(9);
        JSONObject userJson = JSONObject.fromObject(user);
        model.addAttribute("userJson", userJson);
        return "json2";
    }

    /**
     * @ResponseBod直接返回json数据
     * @return
     */
    @RequestMapping("json3")
    @ResponseBody
    public User  returnJson3()
    {
        User user = userService.findById(9);
        return user;
    }




}
