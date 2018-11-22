package cn.syn.springmvc.dao;


import cn.syn.springmvc.model.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 专门对People类操作的接口
 */
public interface UserMapper {

//    添加方法，添加成功返回id
     int add(User user);


    //更新方法
     int update(@Param("user") User user);


    //删除方法
     int delete(@Param("id") int id);

//    查找方法
    User findById(@Param("id") int id);

    //查找所有
    List<User> findAll();

    List<User> findUsersByPage(@Param("start") int start, @Param("perPageUsers") int perPageUsers) ;

}
