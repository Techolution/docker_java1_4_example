package com.company;
import java.util.Date;
public class Main {

    public static void main(String[] args) throws Exception{
        System.out.println("Hello Java1.4 On Docker.....");
        long num = Long.parseLong(args[0]);
        while(true) {
            Thread.sleep(num);
            System.out.println(new Date());
        }
    }

}
