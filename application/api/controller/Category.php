<?php
namespace app\api\controller;
use think\Controller;

class Category extends Controller
{
    //实例化model
    private $categoryModel;
    public function _initialize(){
        $this->categoryModel = model('Category');
    }
    //获取二级分类
   public function getSecondCategory(){
        $parent_id = input('post.id');
        if(!$parent_id){
            $this->error('id不合法');
        }
        $data = $this->categoryModel->getCategorys(['parent_id' => $parent_id]);
        if($data){
            $result = [
                'code' => 1,
                'data' => $data,
                'msg' => 'success'
            ];
            return $result;
        }else{
            $result = [
                'code' => 0,
                'data' => $data,
                'msg' => '数据错误'
            ];
            return $result;
        }
    }
}