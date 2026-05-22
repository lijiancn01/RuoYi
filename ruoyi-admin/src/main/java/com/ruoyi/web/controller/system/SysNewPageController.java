package com.ruoyi.web.controller.system;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import com.ruoyi.common.annotation.Anonymous;

@Controller
public class SysNewPageController
{
    @Anonymous
    @GetMapping("/login-new")
    public String loginNew()
    {
        return "login-new";
    }

    @Anonymous
    @GetMapping("/register-new")
    public String registerNew()
    {
        return "register-new";
    }

    @GetMapping("/index-new")
    public String indexNew()
    {
        return "index-new";
    }

    @GetMapping("/main-new")
    public String mainNew()
    {
        return "main-new";
    }
}