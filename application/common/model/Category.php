<?php
namespace app\common\model;
use think\Model;

class Category extends Model
{
    protected $autoWriteTimestamp = true;
    //把添加分类数据保存到数据库
    public function addCategory($date)
    {
        $date['status'] = 1;
        return $this->save($date);
    }
    
    //获取分类数据
    public function getCategorys(array $condition) 
    {
        // $date = [
        //     'parent_id' => $parent_id,
        //     'status' => 1
        // ];
        $order = [
            'listorder' => 'desc',
            'id' => 'desc',
        ];
        return $this->where($condition)
             ->order($order)
             ->select();
        // echo $this->getLastSql();
    }
}