<?php
/**
 * Created by PhpStorm.
 * User: bas
 * Date: 11/15/13
 * Time: 2:52 PM
 */

class ProductController extends Website_Controller_Action {

    public function indexAction() {

        $this->view->items = Object_Product::getList();

    }

}