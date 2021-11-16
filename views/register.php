<div class="container">
    <div class="col-5 mx-auto mt-5">
        <h1 class="text-center"><?= $pageTitle ?></h1>
        <?php $form = \azadkh\mvcframework\form\Form::begin('', "post"); ?>
        <?php echo $form->field($model, 'firstname'); ?>
        <?php echo $form->field($model, 'lastname'); ?>
        <?php echo $form->field($model, 'email'); ?>
        <?php echo $form->field($model, 'password')->passwrodField(); ?>
        <?php echo $form->field($model, 'cnfpassword')->passwrodField(); ?>
        <div class="d-grid gap-2">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
        <?= \azadkh\mvcframework\form\Form::end(); ?>
    </div>
</div>