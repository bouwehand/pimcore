
<?php
    $suffix = $this->suffix;
    if(!$suffix) {
        $suffix = "";
    }
?>

<?php if(empty($suffix) && $this->editmode) { ?>
    <style type="text/css">
        .teaser {
            max-width: 250px;
        }

        .teaser img {
            max-width: 100%;
        }
    </style>
<?php } ?>

<div class="teaser">

    <?php echo $this->image("image".$suffix, array(
        "thumbnail" => "standardTeaser",
        "class" => $this->checkbox("circle".$suffix)->isChecked() ? "img-circle" : ""
    )) ?>

    <?php if($this->editmode) { ?>
        <div class="editmode-label">
            <label>Image-Circle:</label>
            <?php echo $this->checkbox("circle".$suffix); ?>
        </div>
    <?php } ?>

    <h2><?php echo $this->input("headline".$suffix) ?></h2>

    <div>
        <?php echo $this->wysiwyg("text".$suffix, array("height" => 100)); ?>
    </div>

    <p>
        <?php echo $this->link("link".$suffix, array("class" => "btn btn-default")); ?>
    </p>

    <?php
    // unset the suffix otherwise it will cause problems when using in a loop
    $this->suffix = null;
    ?>

</div>