<?php

require_once(APPROOT.'collectors/iTopPersonCsvCollector.class.inc.php');
Orchestrator::AddCollector(1, 'iTopPersonCsvCollector');