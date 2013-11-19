<?php
/**
 * Created by PhpStorm.
 * User: bas
 * Date: 11/18/13
 * Time: 3:54 PM
 */
?>
<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>">
    <head>
        <meta charset="utf-8">
        <?php echo $this->headLink(array(
                "rel" => "stylesheet",
                "href" => "/website/static/css/style.css")
              );
        ?>
        <?php echo $this->headScript()->prependFile($this->baseUrl('/website/static/js/jquery-1.10.2.js'), 'text/javascript'); ?>
        <?php echo $this->headScript()->prependFile($this->baseUrl('/website/static/js/masonry.pkgd.min.js'), 'text/javascript'); ?>
        <?php echo $this->headScript()->prependFile($this->baseUrl('/website/static/js/imagesloaded.js'), 'text/javascript'); ?>
    </head>
    <body>

        <!-- HEADER !-->

        <div class="header">
            <?php echo $this->image("headerImage", array(
                'class' => 'header image',
            ));?>
            <h1 class="header title"><?php echo $this->input("product_headline", array()); ?></h1>
        </div>

        <!-- NAVIGATION !-->

        <div class="navbar-wrapper">
            <?php
            $mainNavStartNode = $this->document->getProperty("mainNavStartNode");
            if(!$mainNavStartNode) {
                $mainNavStartNode = Document::getById(1);
            }
            ?>
        </div>
        <div id="str-body">
            <div class="container">
            </div>
            <div class="scroll-trigger" ></div>
        </div>
        <script type="text/javascript" >

            var container = document.querySelector('.container');
            var msnry;
            var url = '<?php echo $this->getFullPath() . DIRECTORY_SEPARATOR . $this->getAction(); ?>';
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
                        $.each(data, function( value, value ) {
                            $(value).appendTo('.container');
                            // rewrite the masonry
                            msnry.appended( value );
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