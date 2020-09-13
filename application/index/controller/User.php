<?php
namespace app\index\controller;

use think\Controller;

class User extends Controller
{
    //用户登陆页面
    public function login()
    {
        return $this->fetch();
    }

    //用户注册页面
    public function register()
    {

    }
}
