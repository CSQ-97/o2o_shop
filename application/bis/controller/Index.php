<?php
namespace app\bis\controller;
use think\Controller;
class Index extends Controller
{
    //主后台界面
    public function index()
    {
        return $this->fetch();
    }
    
}