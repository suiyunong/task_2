package cn.syn.springmvc.customException;

/**
 * 在实际中的自定义异常中一般普遍使用的是继承Exception(检查型异常).
 * RuntimeException因为是非检查型异常,表明可以捕捉处理也可以不处理,因此很少使用.
 * 而Error表明系统级别错误,一般即使捕获也无法处理.
 */
public class myException extends Exception {
    //类的序列化相关，用作版本控制的，目前不是很明白
    private static final long uid = 1399956473L;

    public myException() {

    }
    public myException(String messages) {
        super(messages);
    }

}
