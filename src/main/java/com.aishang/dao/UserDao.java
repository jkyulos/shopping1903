package com.aishang.dao;

import com.aishang.po.User;

import java.util.List;

public interface UserDao {

    List<User> getAll();

    /**
     * 查询用户名为？的数量
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
     * 检查密码是否正确
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
//     * 修改用户密码
//     * @param user
//     * @return
//     */
//    void updatePwd(User user);

    void baocun(User user);
}
