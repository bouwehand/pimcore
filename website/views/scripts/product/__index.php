<?php
/**
 * @autor: B.j.Ouwehand
 *
 */
/* Mason main page */

// the doctype helper
$doctypeHelper = new Zend_View_Helper_Doctype();
$doctypeHelper->doctype('HTML4_LOOSE');
echo $this->doctype();
?>
<html>
<!-- index !-->

<head>
    <?php echo $this->headLink()->appendStylesheet('/website/static/css/style.css'); ?>
    <?php echo $this->headScript()->prependFile($this->baseUrl('/website/static/js/jquery-1.10.2.js'), 'text/javascript'); ?>
    <?php echo $this->headScript()->prependFile($this->baseUrl('/website/static/js/masonry.pkgd.min.js'), 'text/javascript'); ?>
    <?php echo $this->headScript()->prependFile($this->baseUrl('/website/static/js/imagesloaded.js'), 'text/javascript'); ?>
    <?
    echo $this->headScript();
    ?>

</head>
<body>

<div id="str-head"">
</div>
<div id="str-body">
    <div class="container">
    </div>
    <div class="scroll-trigger" ></div>
</div>
<script type="text/javascript" >

    var container = document.querySelector('.container');
    var msnry;
    var url = '<?php echo $this->urlPath; ?>';
    var msnry = new Masonry(container);

    function isScrolledIntoView(elem) {
        var docViewTop = $(window).scrollTop();
        var docViewBottom = docViewTop + $(window).height();

        var elemTop = $(elem).offset().top;
        var elemBottom = elemTop + $(elem).height();

        return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
    }

    /**
     * @autor: B.j.Ouwehand
     *
     * Proof of concept
     *
     */
    function xhttpRequest () {
        $.ajax({
            url: url,
            dataType: 'json',
            type : 'get',
            success: function(data){
                $.each(data, function( index, value ) {

                    if ( value.image.length > 0 ) {
                        var img = $('<img/>', {
                            src: value.image[0].url
                        });
                        // create the html
                        var elem = $('<div/>', {
                            class: 'item',
                            text: text
                        }).append(img);

                    } else {
                        var text = value.name;
                        // create the html
                        var elem = $('<div/>', {
                            class: 'item',
                            text: text
                        })
                    }


                    elem.appendTo('.container');
                    // rewrite the masonry
                    msnry.appended( elem );
                });
                // Render layout AFTER elements are bound
                msnry.layout();
            }
        });
    }

    xhttpRequest();
    $(document).on('scroll', function() {
        if ( isScrolledIntoView('.scroll-trigger') ) {
            console.log('scroll');
            xhttpRequest();
        }
    });
</script>
</body>

</html>