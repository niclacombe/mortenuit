<!DOCTYPE html>
<html lang="en">
<?php 
    $base = '';
    $host = $_SERVER['SERVER_NAME']; 
     if($host == 'localhost' || $host == 'localhost:8888'){
        $base = '/mortenuit';
     }

    define('_ASSETS_', $base .'/assets');
    define('_IMG_', _ASSETS_ .'/img');
?>

<head>
    <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-111538917-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-111538917-1');
</script>


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Les Enfants de Caïn</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link href="<?php echo _ASSETS_; ?>/dist/css/sb-admin-2.css" rel="stylesheet">

    <link href="<?php echo _ASSETS_; ?>/css/bootstrap-datepicker.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<?php echo _ASSETS_; ?>/css/style.css" rel="stylesheet">

    <!-- OwlCarousel CSS -->    
    <link href="<?php echo _ASSETS_; ?>/css/owl.carousel.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <script src="https://use.fontawesome.com/d06d2e2d30.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <!-- bPopup -->
    <script src="<?php echo _ASSETS_; ?>/js/bpopup.js"></script>

    <!-- bPopup_Manager -->
    <script src="<?php echo _ASSETS_; ?>/js/popup_manager.js"></script>

    <!-- OwlCarousel JS --> 
    <script src="<?php echo _ASSETS_; ?>/js/owl.carousel.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo _ASSETS_; ?>/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<?php echo _ASSETS_; ?>/vendor/metisMenu/metisMenu.min.js"></script>

    <script src="<?php echo _ASSETS_; ?>/js/bootstrap-datepicker.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<?php echo _ASSETS_; ?>/dist/js/sb-admin-2.js"></script>

</head>