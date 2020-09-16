<?php
namespace app\bis\controller;
use think\Controller;

class Register extends Controller
{
    public function index(){
        //实例化city模型对象
        $cityModel = model('City');
        $categoryModel = model('Category');
        //获取以及城市
        $firstCity =  $cityModel->getCitys('parent_id');
        $categorys = $categoryModel->getCategorys(['parent_id' => 0]);
        return $this->fetch('index',[
            'firstCity' => $firstCity,
            'categorys' => $categorys
        ]);
    }
}
