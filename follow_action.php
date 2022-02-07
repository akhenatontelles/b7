<?php
require_once 'config.php';
require_once 'models/Auth.php';
require_once 'dao/UserRelationDaoMysql.php';
require_once 'dao/UserDaoMysql.php';

$auth = new Auth($pdo, $base);
$userInfo = $auth->checkToken();

$id = filter_input(INPUT_GET, 'body');

if($body){
   
    $userRelationDao =  new UserRelationDaoMysql($pdo);
    $userDao = new UserDaoMysql($pdo);

    if($userDao->findById($id)){
        echo "ACGOU";
        $relation  = new  UserRelation();
        $relation->user_from = $userInfo->id;
        $relation->user_to = $id;

        if($userRelationDao->isFollowing($userInfo->id,$id)){
        $userRelation->delete($relation);
        }else{
        $userRelation->insert($relation);  
        }
    }

}

header("Location: ".$base);
exit;