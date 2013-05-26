<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">

<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="catalog/view/theme/elegium/stylesheet/stylesheet.css" />
<link rel="stylesheet" media="all" href="catalog/view/theme/elegium/stylesheet/mobile.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/elegium/stylesheet/cloud-zoom.css" />
<link type="text/css" rel="stylesheet" href="catalog/view/theme/elegium/stylesheet/jquery.qtip.css" />

<script type="text/javascript" src="catalog/view/theme/elegium/js/scroll-to-top.js"></script>
<script type="text/javascript" src="catalog/view/theme/elegium/js/menu-mobile.js"></script>
<script type="text/javascript" src="catalog/view/theme/elegium/js/footer-menu-mobile.js"></script>
<script type="text/javascript" src="catalog/view/theme/elegium/js/thumbnail-hover.js"></script>
<script type="text/JavaScript" src="catalog/view/theme/elegium/js/cloud-zoom.1.0.2.js"></script>
<script type="text/JavaScript" src="catalog/view/theme/elegium/js/curr-lang-dropdown.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/elegium/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/elegium/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->

<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>

<?php echo $google_analytics; ?>
<link href='//fonts.googleapis.com/css?family=Ubuntu:400,700' rel='stylesheet' type='text/css'>
</head>

<body>

<!-- begin header //-->
<div id="header-area">
<div id="header-wrapper">
 <div id="header">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <?php echo $language; ?>
  <?php echo $currency; ?>
  <?php echo $cart; ?>
  <div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>
  <div id="welcome">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>
  <div class="links"><a href="<?php echo $home; ?>"><span class="text-home"><?php echo $text_home; ?></span></a><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a><a href="<?php echo $account; ?>"><span class="text-account"><?php echo $text_account; ?></span></a><a href="<?php echo $shopping_cart; ?>"><span class="text-shopping-cart"><?php echo $text_shopping_cart; ?></span></a><a href="<?php echo $checkout; ?>"><span class="text-checkout"><?php echo $text_checkout; ?></span></a></div>
 </div>
</div>
</div>
<!-- end header //-->

<!-- begin menu //-->
<div id="menu-area">
<div id="menu-wrapper">
 <?php if ($categories) { ?>
 <div id="menu">
  <ul>
    <li class="menu-home-link"><a href="<?php echo $home; ?>" title="<?php echo $text_home; ?>"></a></li>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
 </div>
</div>
</div>
<!-- end menu //-->

<!-- begin menu-mobile //-->
<div id="menu-mobile-wrapper">
 <div id="menu-mobile">
  <div id="menu-mobile-nav">
  <ul>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
    <?php } ?>
  </ul>
  </div>
 </div>
</div>
<!-- end menu-mobile //-->

<div id="container-wrapper">
<div id="notification"></div>
<div id="container">
<?php } ?>