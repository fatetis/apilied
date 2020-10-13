<?php

namespace App\Containers\Order\Exceptions;

use App\Ship\Parents\Exceptions\Exception;
use Symfony\Component\HttpFoundation\Response;

class WrongEnoughIfException extends Exception
{
}
