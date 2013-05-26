<div class="box">
  <div class="box-heading"><span class="bestsellers"><?php echo $heading_title; ?></span></div>
  <div class="box-content">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div>
      <!-- Begin boxgrid //-->
      <div class="boxgrid">
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
      		<div class="box-product-info">
        		<?php if ($product['rating']) { ?>
        		<div class="rating"><img src="catalog/view/theme/elegium/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        		<?php } else { ?>
        		<div id="rating-none" class="rating"><img src="catalog/view/theme/elegium/image/stars-0.png" alt="<?php echo $product['reviews']; ?>" /></div>
        		<?php } ?>
        		<div class="description"><a href="<?php echo $product['href']; ?>"><?php echo $product['description']; ?></a></div>
        		<div class="more"><a href="<?php echo $product['href']; ?>" title="<?php echo $this->language->get('theme_view_more'); ?>"></a></div>
        		<div class="cart"><input type="button" title="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button-cart" /></div>
      		</div>
      </div>
      <!-- End boxgrid //-->
      
      <!-- Begin boxgrid bottom //-->
      <div class="boxgrid-bottom">
      	<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
      	<?php if ($product['price']) { ?>
        	<div class="price">
          		<?php if (!$product['special']) { ?>
          		<?php echo $product['price']; ?>
          		<?php } else { ?>
          		<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          		<div class="ribbon-sale"></div>
          		<?php } ?>
        	</div>
      	<?php } ?>
      </div>
      <!-- End boxgrid bottom //-->
            
      </div>
      <?php } ?>
    </div>
  </div>
</div>