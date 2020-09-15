<?php
namespace app\api\controller;
use think\Controller;

class City extends Controller
{
    //实例化model
    private $cityModel;
    public function _initialize(){
        $this->cityModel = model('City');
    }

    //根据传递过来的id获取二级城市
   public function getSecondCity(){
       $parent_id = input('post.id');
       if(!$parent_id){
           $this->error('id不合法');
       }
        $data = $this->cityModel->getCitys($parent_id);
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