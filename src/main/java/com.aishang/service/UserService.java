package com.aishang.service;

import com.aishang.dao.UserDao;
import com.aishang.po.User;

import java.util.List;


public interface UserService {

    /**
     * 查询用户名为？的总数
     * @param userName
     * @return
     */
    Integer findUserName(String userName);

    /**
     * 添加用户
     * @param user
     */
    void addUser(User user);

    /**
     * 查询密码是否正确
     * @param
     */
    Integer checkPassWord(User user);

    /**
     * 查找用户信息
     * @param user
     * @return
     */
    User findUser(User user);

//    /**
//     * 修改密码
//     * @param
//     */
//    void updatePwd(User user);

    /**
     * 保存
     */
    void baocun(User user);
}
