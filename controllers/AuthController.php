<?php

namespace app\controllers;

use azadkh\mvcframework\Application;
use azadkh\mvcframework\middlewares\AuthMiddleware;
use azadkh\mvcframework\Request;
use azadkh\mvcframework\Response;
use app\models\LoginForm;
use app\models\RegisterModel;
use azadkh\mvcframework\Controller;

class AuthController extends Controller
{
    public function __construct()
    {
        $this->registerMiddleware(new AuthMiddleware(['profile']));
    }
    public function login(Request $request, Response $response)
    {
        $loginform = new LoginForm();
        $data = [
            'pageTitle' => "Register",
            'model' => $loginform,
        ];
        if ($request->isPost()) {
            $loginform->loadData($request->getbody());
            if ($loginform->validate() && $loginform->login()) {
                $response->redirect('./');
                return;
            }
        }
        // $this->setLayout('auth');
        return $this->render('login', $data);
    }


    public function register(Request $request)
    {
        $registermodel = new RegisterModel();
        $data = [
            'pageTitle' => "Register",
            'model' => $registermodel,
        ];
        if ($request->isPost()) {
            $registermodel->loadData($request->getbody());
            if ($registermodel->validate() && $registermodel->register()) {
                Application::$app->session->setFlash('success', 'Thanks for registering');
                Application::$app->response->redirect('./');
            }
        }
        return $this->render('register', $data);
    }

    public function profile()
    {
        return $this->render('user/profile');
    }

    public function logout(Request $request, Response $response)
    {
        Application::$app->logout();
        $response->redirect('./');
    }
}