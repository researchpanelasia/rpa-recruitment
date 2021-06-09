<?php

class MyGreeter_Client
{
    /**
     * 获取消息
     * @return string
     */
    public function getMsg($time = '')
    {
        $check = self::checkTime($time);

        if (!$check) {
            $hour = date('H', time());
        } else {
            $hour = date('H', strtotime($time));
        }

        $msg = '';

        if ($hour >= 6 && $hour < 12) {
            $msg = 'Good morning';
        } else if ($hour >= 12 && $hour < 18) {
            $msg = 'Good afternoon';
        } else if ($hour >= 18 || $hour < 6) {
            $msg = 'Good evening';
        }

        return $msg;
    }

    /**
     * 验证时间
     * @param $time
     * @return bool
     */
    public static function checkTime($time = '')
    {
        if (empty($time) || !strtotime($time)) {
            return false;
        } else {
            return true;
        }
    }
}

$greeter = new MyGreeter_Client();

$time = '2021-06-09 18:30:30';

$msg = $greeter->getMsg($time);

var_dump($msg);

//意见：添加参数验证