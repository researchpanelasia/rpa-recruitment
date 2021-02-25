<?php

namespace test;

use PHPUnit\Framework\TestCase;

/**
 * Class MyGreeterClientTest
 */
class MyGreeterClientTest extends TestCase
{
    private $greeter;

    protected function setUp(): void
    {
        $this->greeter = new \MyGreeter\Client();
    }

    public function testInstance(): void
    {
        $this->assertEquals(
            'MyGreeter\Client',
            get_class($this->greeter)
        );
    }

    public function testGetGreeting(): void
    {
        $this->assertTrue(
            strlen($this->greeter->getGreeting()) > 0
        );
    }

    public function testGetGreetingGoodMorning(): void
    {
        $startTime = strtotime('2021-02-25 00:00:00');
        $endTime = strtotime('2021-02-25 11:59:59');

        while ($startTime <= $endTime) {
            $this->assertTrue(
                'Good morning' === $this->greeter->getGreeting($startTime)
            );

            $startTime += 600;
        }
    }

    public function testGetGreetingGoodAfternoon(): void
    {
        $startTime = strtotime('2021-02-25 12:00:00');
        $endTime = strtotime('2021-02-25 17:59:59');

        while ($startTime <= $endTime) {
            $this->assertTrue(
                'Good afternoon' === $this->greeter->getGreeting($startTime)
            );

            $startTime += 600;
        }
    }

    public function testGetGreetingGoodEvening(): void
    {
        $startTime = strtotime('2021-02-25 18:00:00');
        $endTime = strtotime('2021-02-25 23:59:59');

        while ($startTime <= $endTime) {
            $this->assertTrue(
                'Good evening' === $this->greeter->getGreeting($startTime)
            );

            $startTime += 600;
        }
    }
}
