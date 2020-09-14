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
        // if(input('get.parent_id')){
        //     $parent_id = input('get.parent_id');
        // }else{
        //     $parent_id = 0;
        // }
        
        //获取分类数据，和子栏目数据
        $parent_id = input('get.parent_id')??0;//如果通过get方式传过来parent_id，说明是获取子栏目，否则默认0，获取主栏目数据
        $categorys = $this->categoryMode->getCategorys([
            'parent_id'=> $parent_id,
            'status' => ['neq',-1]
        ]);
        return $this->fetch('',[
            'categorys' => $categorys
        ]);
    }
    // 主后台添加分类页面
    public function add()
    {
        //从model层拿到一级分类数据
        $firstCategory = $this->categoryMode->getCategorys([
            'parent_id'=> 0,
            'status' => 1
        ]);
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

    //编辑页面
    public function edit($id=0)
    {
         //从model层拿到一级分类数据
         $Category = $this->categoryMode->get($id);
        $firstCategory = $this->categoryMode->getCategorys([
            'parent_id'=> 0,
            'status' => 1
        ]);

        return $this->fetch('',[
            'Category' => $Category,
            'firstCategory' => $firstCategory
        ]);
    }

    //编辑页面更新数据
    public function editUpdate($id=0)
    {
        $date = input('post.');
        $res = $this->categoryMode->update($date,['id' =>$id]);
        if($res){
            return $this->success('更新成功');
        }else{
            return $this->error('更新失败');
        }
    }

    //排序页面逻辑
    public function listorder($id,$listorder)
    {
        $res = $this->categoryMode->update(['listorder' => $listorder],['id' =>$id]);
        if($res){
            $this->result($_SERVER['HTTP_REFERER'],1,'SUCCESS');
        }else{
            $this->result($_SERVER['HTTP_REFERER'],0,'排序失败');
        }
    }

    //修改状态，删除和待审
    public function status()
    {
        $id = intval(input('get.id'));
        $status = intval(input('get.status'));
        $res = $this->categoryMode->update(['status' => $status],['id' =>$id]);
        if($res){
            return $this->success('更新成功');
        }else{
            return $this->error('更新失败');
        }
    }
}