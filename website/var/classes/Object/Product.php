<?php 

class Object_Product extends Object_Concrete {

public $o_classId = 5;
public $o_className = "product";
public $frontimage;
public $Created;
public $SKU;


/**
* @param array $values
* @return Object_Product
*/
public static function create($values = array()) {
	$object = new self();
	$object->setValues($values);
	return $object;
}

/**
* @return Asset_Image
*/
public function getFrontimage () {
	$preValue = $this->preGetValue("frontimage"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	$data = $this->frontimage;
	 return $data;
}

/**
* @param Asset_Image $frontimage
* @return void
*/
public function setFrontimage ($frontimage) {
	$this->frontimage = $frontimage;
	return $this;
}

/**
* @return Zend_Date
*/
public function getCreated () {
	$preValue = $this->preGetValue("Created"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	$data = $this->Created;
	 return $data;
}

/**
* @param Zend_Date $Created
* @return void
*/
public function setCreated ($Created) {
	$this->Created = $Created;
	return $this;
}

/**
* @return float
*/
public function getSKU () {
	$preValue = $this->preGetValue("SKU"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	$data = $this->SKU;
	 return $data;
}

/**
* @param float $SKU
* @return void
*/
public function setSKU ($SKU) {
	$this->SKU = $SKU;
	return $this;
}

protected static $_relationFields = array (
);

public $lazyLoadedFields = NULL;

}

