<?php

namespace MyGreeter;

/**
 * Class Client
 * @package MyGreeter
 */
class Client
{

    /**
     * Client constructor.
     */
    public function __construct()
    {
    }

    /**
     * @param int $dateTime
     * @return string
     */
    public function getGreeting(int $dateTime = 0): string
    {
        // 24-hour format of an hour without leading zeros	0 through 23
        $hour =$hour = $dateTime > 0 ? date('G', $dateTime) : date('G');

        $greet = 'Time format is incorrect';
        if ($hour >= 0 && $hour < 12) {
            $greet = "Good morning";
        } elseif ($hour >= 12 && $hour < 18) {
            $greet = "Good afternoon";
        } elseif ($hour >= 18 && $hour <= 23) {
            $greet = "Good evening";
        }

        return $greet;
    }

}