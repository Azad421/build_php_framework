<?php

/** @var $this \azadkh\mvcframework\view  */

use azadkh\mvcframework\form\Form;
use azadkh\mvcframework\form\TextArea;

/** @var $model \app\models\ContactForm  */
$this->title = "Contact Us";
?>
<div class="container">
    <h1 class="text-center"><?= $pageTitle ?></h1>
    <?php $form = Form::begin('', 'post'); ?>
    <?= $form->field($model, 'subject') ?>
    <?= $form->field($model, 'email') ?>
    <?= new TextArea($model, 'body') ?>
    <button type="submit" class="btn btn-primary">Submit</button>
    <?= Form::end(); ?>
</div>