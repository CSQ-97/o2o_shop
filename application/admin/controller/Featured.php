<?php
namespace app\admin\controller;
use think\Controller;
class Featured extends  controller
{
    private  $obj;
    public function _initialize() {
        $this->obj = model("Featured");
    }

	public function index() {
		// 获取推荐位类别
		$types = config('featured.featured_type');
		$type = input('get.type', 0 ,'intval');
		// 获取列表数据
		$results = $this->obj->getFeaturedsByType($type);
		return $this->fetch('', [
			'types' => $types,
			'results' => $results,
			
		]);
	}
    public function add() {
		if(request()->isPost()) {
			// 入库的逻辑
			$data = input('post.');
			// 数据需要做严格校验 validate  

			$id = model('Featured')->add($data);
			if($id) {
				$this->success('添加成功');
			}else{
				$this->error('添加失败');
			}
		}else {
			// 获取推荐位类别
			$types = config('featured.featured_type');
			return $this->fetch('', [
				'types' => $types,
			]);
		}
	}

	public function status() {
		// 获取值
		$data = input('get.');
		// 利用tp5 validate 去做严格检验  id  status

		$res = $this->obj->save(['status'=>$data['status']], ['id'=>$data['id']]);
		if($res) {
			$this->success('更新成功');
		}else {
			$this->error('更新失败');
		}
	}

}
