<?php
/**
 * Created by PhpStorm.
 * User: bas
 * Date: 11/15/13
 * Time: 2:52 PM
 */
class ProductController extends Website_Controller_Action {

    /**
     * CheckAjax
     *
     * Checks if request is Ajax, flag for turning it
     * on and off
     *
     * @param  $request    Mixed
     * @return $bool       bool
     *
     */
    protected function CheckAjax ($request) {

        // Disable check with flag
        if ( $request === false ) {
            return true;
        }

        //check
        if( $request->isXmlHttpRequest() ) {
            return true;
        } else return false;
    }


    /**
     * Product Index Controller
     */
    public function indexAction() {
        $request = $this->getRequest();
        if ( $this->CheckAjax($request) ) {
            $objects = Object_Product::getList()->getObjects();

            $return = array();
            foreach ( $objects as $object ) {
                $return[] = '<div class="item"><img src="' . $object->getFrontimage() . '"  /></div>';
            }
            // USe die to suppress ZEND rendering
            die(json_encode($return));
        }
    }
}