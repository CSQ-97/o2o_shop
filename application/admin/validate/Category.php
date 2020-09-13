<?php
namespace app\admin\validate;
use think\Validate;

class Category extends Validate
{
    //验证/过滤添加分类页面传递过来的数据
    protected $rule = [
        ['name','require|max:10','分类名必须填写|分类名长度不能大于10'],
        ['parent_id','number','parent_id必须是整数'],
        ['status','number|in:-1,0,1','状态类型必须为-1，0，1'],
        ['listorder','number','排序号必须为整数']
    ];
    //添加场景
    protected $scene = [
        'add' => ['name','parent_id']
    ];
}