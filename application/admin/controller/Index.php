<?php
namespace app\admin\controller;
use think\Controller;
class Index extends Controller
{
    //主后台界面
    public function index()
    {
        return $this->fetch();
    }
    //主后台欢迎界面
    public function welcome()
    {
        return '<h1>欢迎来到主后台</h1>';
    }
}
