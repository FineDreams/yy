package com.yy.service;

import org.springframework.stereotype.Service;

@Service
public class TargetService {
    private String content;

    public TargetService(String content){
        this.content=content;
    }

    public String getContent(){
        return content;
    }

    public void setContent(String content){
        this.content=content;
    }

}
