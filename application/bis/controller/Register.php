<?php
namespace app\bis\controller;
use think\Controller;

class Register extends Controller
{
    public function index(){
        //实例化city模型对象
        $cityModel = model('City');
        //获取以及城市
        $firstCity =  $cityModel->getCitys('parent_id');
        return $this->fetch('index',[
            'firstCity' => $firstCity
        ]);
    }
}
