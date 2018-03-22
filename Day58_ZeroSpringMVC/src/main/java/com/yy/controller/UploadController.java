package com.yy.controller;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Controller
public class UploadController {

    @RequestMapping(value = "upload",method = RequestMethod.POST)
    @ResponseBody
    public String upload(MultipartFile file, HttpServletRequest request){
        try {
            FileUtils.writeByteArrayToFile(new File("/Users/lanou3g/Desktop/项目/upload/"+file.getOriginalFilename()),file.getBytes());
            return "success";
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "error";
    }
}
