package cn.syn.springmvc.utils;

import cn.syn.springmvc.model.User;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DBTools {
//    创建连接，释放连接的工作交给了spring
//    public static SqlSessionFactory sessionFactory;
//
//    static{
//        try {
//            //使用MyBatis提供的Resources类加载mybatis的配置文件
//            Reader reader = Resources.getResourceAsReader("com/syn/mybatis/mapper/mybatis-config.xml");
//            //构建sqlSession的工厂
//            sessionFactory = new SqlSessionFactoryBuilder().build(reader);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//    }
    //创建能执行映射文件中sql的sqlSession
//    public static SqlSession getSession(){
////        return sessionFactory.openSession(ExecutorType.BATCH,false);
//        return sessionFactory.openSession(false);
//    }
    /**
     * 打印people对象
     * @param user
     */

    public static void printPeople(User user) {
        if (user != null) {
            System.out.println("id："+ user.getId());
            System.out.println("姓名："+ user.getName());
            System.out.println("qq："+ user.getQq());
            System.out.println("修真类型："+ user.getType());
            System.out.println("入学时间："+longToDate(user.getEntro_time(),"yyyy年-MM月dd日"));
            System.out.println("毕业学校："+ user.getSchool());
            System.out.println("学号："+ user.getNumber());
            System.out.println("日报链接："+ user.getDiary_link());
            System.out.println("口号："+ user.getSlogan());
            System.out.println("师兄："+ user.getBrother());
            System.out.println("创建于："+longToDate(user.getCreate_at(),"yyyy年-MM月dd日-HH时mm分ss秒"));
            System.out.println("更新于："+longToDate(user.getUpdate_at(),"yyyy年-MM月dd日-HH时mm分ss秒"));

        } else {
            System.out.println("空对象！！");
        }
    }
    public static String longToDate(long timeStamp,String formatType){
        SimpleDateFormat formatter = new SimpleDateFormat(formatType);
        long stamp = timeStamp;

        Date date = new Date(stamp);
        String str = formatter.format(date);
        return str;
    }

}
