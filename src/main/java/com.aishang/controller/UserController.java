package com.aishang.controller;

import cn.dsna.util.images.ValidateCode;
import com.aishang.po.User;
import com.aishang.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.persistence.criteria.CriteriaBuilder;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@RequestMapping("user")
@Controller
public class UserController {

    @Resource
    private UserService userService;
    @Resource
    private HttpSession session;

    /**
     * 跳转注册页
     *
     * @return
     */
    @RequestMapping("toRegister")
    public String toRegister() {

        return "register";
    }

    /**
     * 跳转登陆页
     *
     * @return
     */
    @RequestMapping("toLogin")
    public String toLogin() {

        return "login";
    }

    /**
     * 用户名是否可用
     */
    @RequestMapping("checkUserName")
    @ResponseBody
    public String checkUserName(String userName) {

        Integer count = userService.findUserName(userName);
        return count > 0 ? "no" : "ok";
    }

    /**
     * 返回图形验证码
     */
    @RequestMapping("getImgCode")
    public void getImgCode(HttpServletResponse response) {
        ValidateCode validateCode = new ValidateCode(163, 64, 4, 100);
        try {
            //获取验证码
            String code = validateCode.getCode();
            session.setAttribute("code", code);
            //返回验证码图片
            validateCode.write(response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 校验图形验证码
     */
    @RequestMapping("checkImgCode")
    @ResponseBody
    public String checkImgCode(String validateCode) {
        String code = (String) session.getAttribute("code");
        if (code.equalsIgnoreCase(validateCode)) {
            return "ok";
        } else {
            return "no";
        }
    }

    /**
     * 添加用户
     */
    @RequestMapping("doRegister")
    public String doRegister(User user, Model model) {

        if (user.getUserName() == null || user.getUserName() == "") {
            model.addAttribute("user", user);
            model.addAttribute("msg", "用户名不能为空");
            model.addAttribute("hobby", "checked");
            return "register";
        } else if (user.getPassWord() == null || user.getPassWord() == "") {
            model.addAttribute("user", user);
            model.addAttribute("msg", "密码不能为空");
            model.addAttribute("hobby", "checked");
            return "register";
        } else if (user.getPhone() == null || user.getPhone() == "") {
            model.addAttribute("user", user);
            model.addAttribute("msg", "电话不能为空");
            model.addAttribute("hobby", "checked");
            return "register";
        } else {
            userService.addUser(user);
            model.addAttribute("user", user);
            return "login";
        }
    }

    /**
     * 登陆界面跳转个人修改界面
     *
     * @param user
     * @param model
     * @return
     */
    @RequestMapping("dologin")
    public String dologin(User user, Model model, String save,HttpServletResponse response) {
        Cookie c1 = new Cookie("userName", user.getUserName());
        Cookie c2 = new Cookie("passWord", user.getPassWord());
        if ("on".equals(save)) {
            c1.setMaxAge(60 * 60);
            c2.setMaxAge(60 * 60);
        } else {
            c1.setMaxAge(0);
            c2.setMaxAge(0);
        }
        response.addCookie(c1);
        response.addCookie(c2);
        session.setAttribute("user",user);
        session.setAttribute("userpwd",user.getPassWord());
        if (userService.checkPassWord(user) == 0) {
            model.addAttribute("user", user);
            model.addAttribute("msg", "信息错误");
            return "login";
        } else {
            user=userService.findUser(user);
            session.setAttribute("user",user);
            model.addAttribute(user);
            return "self";
        }
    }

//    /**
//     * 修改密码
//     * @param
//     * @return
//     */
//    @RequestMapping("updatePwd")
//    public String updatePwd(User user){
//            userService.updatePwd(user);
//            return "login";
//    }

    /**
     * 保存
     */
    @RequestMapping("baocun")
    public String baocun(User user,Model model){
            userService.baocun(user);
            model.addAttribute(user);
            if((user.getPassWord().equals(session.getAttribute("userpwd")))){
                return "self";
        }else {
                return "login";
            }

    }

}


