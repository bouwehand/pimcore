<?php echo 'hier heeft hij de headcontent geinclude en doet hij het contentblock' ; ?>
<?php $this->template("/includes/content-headline.php"); ?>
<?php ?>
<?php echo $this->areablock("content"); ?>

