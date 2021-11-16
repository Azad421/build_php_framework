<?php

namespace app\controllers;

use azadkh\mvcframework\Application;
use azadkh\mvcframework\Controller;
use azadkh\mvcframework\Request;
use azadkh\mvcframework\Response;
use app\models\ContactForm;

class SiteController extends Controller
{
    public function contact(Request $request, Response $response)
    {
        $data = [
            'pageTitle' => "Contact Us"
        ];
        $contact = new ContactForm();
        if ($request->isPost()) {
            $contact->loadData($request->getbody());
            if ($contact->validate() && $contact->send()) {
                Application::$app->session->setFlash('success', 'Thanks for contacing us!');
                return $response->redirect('/contact');
            }
        }
        $data['model'] = $contact;
        return $this->render('contact', $data);
    }

    public function home()
    {
        // session_destroy();
        $data = [
            'pageTitle' => "Home",
        ];
        return $this->render('home', $data);
    }
}
