package com.yy.aop;

public class Transaction {

    public void begin(){
        System.out.println("begin------");
    }

    public void commit(){
        System.out.println("commit------");
    }
}
