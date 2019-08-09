

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Language" content="en">

    
    <title>
        Full Width Slider - Jssor Slider
    </title>
    <!-- #region Google Ad Code -->
    <script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js" charset="UTF-8"></script><script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <!-- #endregion -->
    
    <style type="text/css">
        .elfinder-tree .elfinder-navbar-root .elfinder-navbar-icon {
            background-position: 0 -16px !important;
        }
    </style>

    <!-- Google Counter Begin -->
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-45690170-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-45690170-1');
    </script>
    <!-- Google Counter End -->


    <link href="/style/site/css/site-style-2.5.0.min.css" rel="stylesheet" />
</head>
<body style="font-family: Arial, sans-serif;">
    <form method="post" action="./full-width-slider.slider" id="form1" class="mainform">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="usHs//MF+OBf+IlCsW20ybp8SNxqCySka/V2vYqZ+NZEf/8LHyRMYrVZNtr9qjLpWhBsa4YbpEbKQO1M/y1ts6X2gaNOOZFghWcLt9py+LJQZ6388TKDNji6QTxyNumQXazI0v2Y10DKUb1ZCf8zhsD7ly8vQ5rM5r3oHaiV5kF4dvV2Rb+QbqvxjNIgE4xMcqAkSNXNY7blLr6Tc9SjDw==" />
</div>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="B6CBD475" />
</div>

        <!--#region header-->
        <div class="header public clearfix">
            
            
            
        </div>
        <!--#endregion-->

        <!--#region content-->
        

        
        <!-- #region Jssor Slider Begin -->
        <!-- Generator: Jssor Slider Maker -->
        <!-- Source: https://www.jssor.com -->
        <script src="//jssors8.azureedge.net/script/jssor.slider-27.5.0.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            jssor_1_slider_init = function() {

                var jssor_1_SlideoTransitions = [
                  [{b:-1,d:1,o:-0.7}],
                  [{b:900,d:2000,x:-379,e:{x:7}}],
                  [{b:900,d:2000,x:-379,e:{x:7}}],
                  [{b:-1,d:1,o:-1,sX:2,sY:2},{b:0,d:900,x:-171,y:-341,o:1,sX:-2,sY:-2,e:{x:3,y:3,sX:3,sY:3}},{b:900,d:1600,x:-283,o:-1,e:{x:16}}]
                ];

                var jssor_1_options = {
                  $AutoPlay: 1,
                  $SlideDuration: 800,
                  $SlideEasing: $Jease$.$OutQuint,
                  $CaptionSliderOptions: {
                    $Class: $JssorCaptionSlideo$,
                    $Transitions: jssor_1_SlideoTransitions
                  },
                  $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$
                  },
                  $BulletNavigatorOptions: {
                    $Class: $JssorBulletNavigator$
                  }
                };

                var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

                /*#region responsive code begin*/

                var MAX_WIDTH = 3000;

                function ScaleSlider() {
                    var containerElement = jssor_1_slider.$Elmt.parentNode;
                    var containerWidth = containerElement.clientWidth;

                    if (containerWidth) {

                        var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                        jssor_1_slider.$ScaleWidth(expectedWidth);
                    }
                    else {
                        window.setTimeout(ScaleSlider, 30);
                    }
                }

                ScaleSlider();

                $Jssor$.$AddEvent(window, "load", ScaleSlider);
                $Jssor$.$AddEvent(window, "resize", ScaleSlider);
                $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
                /*#endregion responsive code end*/
            };
        </script>
        <link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300italic,regular,italic,700,700italic&subset=latin-ext,greek-ext,cyrillic-ext,greek,vietnamese,latin,cyrillic" rel="stylesheet" type="text/css" />
        <style>
            /*jssor slider loading skin spin css*/
            .jssorl-009-spin img {
                animation-name: jssorl-009-spin;
                animation-duration: 1.6s;
                animation-iteration-count: infinite;
                animation-timing-function: linear;
            }

            @keyframes jssorl-009-spin {
                from { transform: rotate(0deg); }
                to { transform: rotate(360deg); }
            }

            /*jssor slider bullet skin 032 css*/
            .jssorb032 {position:absolute;}
            .jssorb032 .i {position:absolute;cursor:pointer;}
            .jssorb032 .i .b {fill:#fff;fill-opacity:0.7;stroke:#000;stroke-width:1200;stroke-miterlimit:10;stroke-opacity:0.25;}
            .jssorb032 .i:hover .b {fill:#000;fill-opacity:.6;stroke:#fff;stroke-opacity:.35;}
            .jssorb032 .iav .b {fill:#000;fill-opacity:1;stroke:#fff;stroke-opacity:.35;}
            .jssorb032 .i.idn {opacity:.3;}

            /*jssor slider arrow skin 051 css*/
            .jssora051 {display:block;position:absolute;cursor:pointer;}
            .jssora051 .a {fill:none;stroke:#fff;stroke-width:360;stroke-miterlimit:10;}
            .jssora051:hover {opacity:.8;}
            .jssora051.jssora051dn {opacity:.5;}
            .jssora051.jssora051ds {opacity:.3;pointer-events:none;}
        </style>
        <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:1300px;height:500px;overflow:hidden;visibility:hidden;">
            <!-- Loading Screen -->
            <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
                <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="//jssorcdn7.azureedge.net/theme/svg/loading/static-svg/spin.svg" />
            </div>
            <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:1300px;height:500px;overflow:hidden;">
                <div>
                    <img data-u="image" src="http://ny-watches.com/wp-content/uploads/2014/07/home_banner_1.jpg" />
                    <div data-t="0" data-ts="preserve-3d" style="position:absolute;top:120px;left:75px;width:470px;height:220px;">
                        
                        
                        
                </div>
                </div>
                <div>
                    <img data-u="image" src="http://www.arije.com/test-presskit/en/wp-content/uploads/2018/01/watches-cartier-banner.jpg.webrend.1920.350.jpeg" />
                </div>
                <div>
                    <img data-u="image" src="https://png.pngtree.com/thumb_back/fh260/back_our/20190620/ourmid/pngtree-simple-outdoor-forest-watch-banner-image_166794.jpg" />
                </div>
                <div>
                    <img data-u="image" src="https://www.ingersoll1892.com/media/wysiwyg/Homepage/Static_Block/MENS-BANNER-NEW.jpg" />
                </div>
                <div>
                    <img data-u="image" src="http://www.valdostavault.com/wp/wp-content/uploads/2013/08/Bulova-watch-banner.jpg" />
                    <div style="position:absolute;top:30px;left:30px;width:480px;height:130px;font-family:'Roboto Condensed',sans-serif;font-size:40px;color:#000000;line-height:1.5;padding:5px 5px 5px 5px;">
<br />
                        
                    </div>
                    <div style="position:absolute;top:300px;left:30px;width:480px;height:130px;font-family:'Roboto Condensed',sans-serif;font-size:30px;color:#000000;line-height:1.27;padding:5px 5px 5px 5px;"> </div>
                </div>
            </div>
            <!-- Bullet Navigator -->
            <div data-u="navigator" class="jssorb032" style="position:absolute;bottom:12px;right:12px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
                <div data-u="prototype" class="i" style="width:16px;height:16px;">
                    <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                        <circle class="b" cx="8000" cy="8000" r="5800"></circle>
                    </svg>
                </div>
            </div>
            <!-- Arrow Navigator -->
            <div data-u="arrowleft" class="jssora051" style="width:65px;height:65px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
                <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline>
                </svg>
            </div>
            <div data-u="arrowright" class="jssora051" style="width:65px;height:65px;top:0px;right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
                <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline>
                </svg>
            </div>
            <div data-interaction="user-commands" class="cmd-box" style="display:none;top:2px;left:auto;bottom:auto;right:2px;width:23px;height:69px;box-sizing:border-box;" data-scale=".2" data-scale-top=".5" data-scale-right=".5">
                <div data-command="jssor-getslider" class="cmd-btn" title="get this slider"></div>
                <div data-command="jssor-qrcode" class="cmd-btn" title="QR code"></div>
                <div data-command="jssor-share" class="cmd-btn" title="share"></div>
            </div>
        </div>
        <script type="text/javascript">jssor_1_slider_init();</script>
        <!-- #endregion Jssor Slider End -->
        
        <script src="//jssors8.azureedge.net/script/site/jssor.user.commands.init-1.8.0.min.js"></script>
        <script>
            jssor_user_commands_init({ accessControl: {"fileInfo":{"id":0,"name":"demos/full-width-slider.slider","isReserved":1,"isReadonly":1},"authorInfo":{"userName":"","memberPlan":0},"accessInfo":{"limitedSlides":0,"limitedTransitions":0,"maxUploadFileSize":614400}} });
        </script>

        