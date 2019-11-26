<?php

class MyGreeter_Client_Test extends \PHPUnit_Framework_TestCase
{
    public function setUp()
    {
        $this->greeter = new \MyGreeter\Client();
        //echo $this->greeter->getGreeting(strtotime("2019-11-26 12:00:00"));
        //echo $hour=date('G',strtotime("2019-11-26 12:00:00"));
    }

    public function test_Instance()
    {
        $this->assertEquals(
            get_class($this->greeter),
            'MyGreeter\Client'
        );
    }

//    public function test_getGreeting()
//    {
//        $this->assertTrue(
//            strlen($this->greeter->getGreeting()) > 0
//        );
//    }

    public function test_getGreetingGoodMorning()
    {
        $start_time = strtotime("2019-11-26 00:00:00");
        $end_time = strtotime("2019-11-26 11:59:59");
        while($start_time<=$end_time){
            $this->assertTrue(
                "Good morning" == $this->greeter->getGreeting($start_time)
            );
            $start_time++;
        }
    }

    public function test_getGreetingGoodAfternoon()
    {
        $start_time = strtotime("2019-11-26 12:00:00");
        $end_time = strtotime("2019-11-26 17:59:59");
        while($start_time<=$end_time){
            $this->assertTrue(
                "Good afternoon" == $this->greeter->getGreeting($start_time)
            );
            $start_time++;
        }
    }
    public function test_getGreetingGoodEvening()
    {
        $start_time = strtotime("2019-11-26 18:00:00");
        $end_time = strtotime("2019-11-26 23:59:59");
        while($start_time<=$end_time){
            $this->assertTrue(
                "Good evening" == $this->greeter->getGreeting($start_time)
            );
            $start_time++;
        }
    }

}
