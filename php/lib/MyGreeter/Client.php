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
        $hour=date('G');
        if ($hour>=0 && $hour<12){
            $this->greet = "Good morning";
        } else if ($hour>=12 && $hour<18) {
            $this->greet = "Good afternoon";
        } else if ($hour>=18 && $hour<=23) {
            $this->greet = "Good evening";
        }else{
            $this->greet = 'the is some wrong';
        }
        echo $this->greet;
    }

    public function getGreeting()
    {
        return $this->greet;
    }


}