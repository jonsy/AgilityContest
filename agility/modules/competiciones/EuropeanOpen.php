<?php

/**
 * Created by PhpStorm.
 * User: jantonio
 * Date: 16/11/16
 * Time: 10:58
 */
class EuropeanOpen extends Competitions {
    function __construct() {
        parent::__construct("European Open");
        $this->federationID=9;
        $this->competitionID=1;
    }
}