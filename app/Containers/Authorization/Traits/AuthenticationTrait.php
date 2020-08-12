<?php

namespace App\Containers\Authorization\Traits;

use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Hash;

/**
 * Class AuthenticationTrait
 *
 * @author  Mahmoud Zalt  <mahmoud@zalt.me>
 */
trait AuthenticationTrait
{

  /**
   * Allows Passport to authenticate users with custom fields.
   *
   * @param $identifier
   *
   * @return AuthenticationTrait
   */
    public function findForPassport($identifier)
    {
        $allowedLoginAttributes = config('authentication-container.login.attributes', ['email' => []]);

        $builder = $this;
        foreach (array_keys($allowedLoginAttributes) as $field)
        {
            $builder = $builder->orWhere($field, $identifier);
        }

        return $builder->first();
    }

    public function validateForPassportPasswordGrant($password)
    {
        if($password == Config::get('authentication-container.clients.mobile.api.secret')) return true;
        return Hash::check($password, $this->getAuthPassword());
    }

}
