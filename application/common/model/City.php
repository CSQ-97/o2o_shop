<?php
namespace app\common\model;
use think\Model;
class City extends Model
{
    protected $autoWriteTimestamp = true;
    //查找城市
    public function getCitys($parent_id=0){
        $date = [
            'status' => 1,
            'parent_id' => $parent_id
        ];

        $order = [
            'id' => 'desc'
        ];
        return $this->where($date)
                    ->order($order)
                    ->select();
    }
}