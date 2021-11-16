<?php

namespace app\models;

use azadkh\mvcframework\Application;
use azadkh\mvcframework\Model;

class LoginForm extends Model
{
    public $email;
    public $password;
    public function rules(): array
    {
        return [
            'email' => [self::RULE_REQUIRED, self::RULE_EMAIL],
            'password' => [self::RULE_REQUIRED]
        ];
    }

    public function login()
    {

        $user = RegisterModel::findOne(['email' => $this->email]);
        if (!$user) {
            $this->addError('email', 'User does not exists with this email');
            return false;
        }

        if (!password_verify($this->password, $user->password)) {
            $this->addError('password', 'Password is incorrect!');
            return false;
        }
        return Application::$app->login($user);
    }

    public function labels(): array
    {
        return [
            'email' => 'Your Email',
            'password' => 'Password'
        ];
    }
}
