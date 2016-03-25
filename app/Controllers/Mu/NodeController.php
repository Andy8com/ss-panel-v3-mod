<?php


namespace App\Controllers\Mu;

use App\Controllers\BaseController;
use App\Models\NodeOnlineLog;

class NodeController extends BaseController
{

    public function onlineUserLog($request, $response, $args){
        $node_id = $args['id'];
        $count = $request->getParam('count');
		
        $log = new NodeOnlineLog();
        $log->node_id = $node_id;
        $log->online_user = $count;
        $log->log_time = time();
        if(!$log->save()){
            $res = [
                "ret" => 0,
                "msg" => "update failed",
            ];
            return $this->echoJson($response, $res);
        }
        $res = [
            "ret" => 1,
            "msg" => "ok",
        ];
        return $this->echoJson($response, $res);
    }
}