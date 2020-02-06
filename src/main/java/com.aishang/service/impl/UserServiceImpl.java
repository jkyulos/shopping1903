package com.aishang.service.impl;

import com.aishang.dao.UserDao;
import com.aishang.po.User;
import com.aishang.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    /**
     * 查询用户名为？的数量
     * @param userName
     * @return
     */
    @Override
    public Integer findUserName(String userName) {
        return userDao.findUserName(userName);
    }

    /**
     * 添加用户
     * @param user
     */
    public void addUser(User user){
        userDao.addUser(user);
    }

    /**
     * 检查密码是否正确
     */
    @Override
    public Integer checkPassWord(User user) {
        return userDao.checkPassWord(user);
    }

    /**
     * 查找用户信息
     * @param user
     * @return
     */
    @Override
    public User findUser(User user) {
        return userDao.findUser(user);
    }

//    /**
//     * 修改密码
//     * @param user
//     * @return
//     */
//    @Override
//    public void updatePwd(User user) {
//        userDao.updatePwd(user);
//    }

    @Override
    public void baocun(User user) {
        userDao.baocun(user);
    }


}


