<?php
namespace app\admin\controller;
use think\Controller;

class Category extends Controller
{
    private $categoryMode;
    public function _initialize(){
        $this->categoryMode = model('Category');
    }
    //主后台生活服务页面
    public function index()
    {
        return $this->fetch();
    }
    // 主后台添加分类页面
    public function add()
    {
        //从model层拿到一级分类数据
        $firstCategory = $this->categoryMode->getFirstCategory();
        return $this->fetch('',[
            'firstCategory' => $firstCategory
        ]);
    }

    //接收主后台添加分类页面保存数据
    public function saveCategory()
    {
        $date = input('post.');
        //获取验证类
        $validate = validate('Category');
        //验证数据
        $bool = $validate->scene('add')->check($date);
        if(!$bool)
        {
            return $this->error($validate->getError());
        }

        //添加分类保存到数据库
        $res = $this->categoryMode->addCategory($date);
        if($res){
            echo $this->success("添加分类成功");
        }else{
            echo $this->error('添加失败');
        }
    }
}