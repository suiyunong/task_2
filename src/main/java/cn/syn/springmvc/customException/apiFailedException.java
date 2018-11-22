package cn.syn.springmvc.customException;

public class apiFailedException extends Exception {
    public apiFailedException() {

    }

    public apiFailedException(String messages) {
        super(messages);
    }
}
