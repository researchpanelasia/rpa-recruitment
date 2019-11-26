<?php
/**
 * Created by PhpStorm.
 * User: liyachen
 * Date: 2019/11/23
 * Time: 15:06
 */
namespace MyGreeter;
class Client
{
    private $greet;

    public function __construct()
    {

    }

    public function getGreeting($date_time = null)
    {
        $hour=date('G');
        if($date_time){
            $hour = date('G',$date_time);
        }
        if ($hour>=0 && $hour<12){
            $this->greet = "Good morning";
        } else if ($hour>=12 && $hour<18) {
            $this->greet = "Good afternoon";
        } else if ($hour>=18 && $hour<=23) {
            $this->greet = "Good evening";
        }else{
            $this->greet = 'Time format is incorrect ';
        }
        return $this->greet;
    }


}