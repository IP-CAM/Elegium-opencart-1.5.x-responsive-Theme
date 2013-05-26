<?php echo $header; ?>
  
  <!-- Begin breadcrumb -->
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <!-- End breadcrumb -->

<!-- Begin category top content -->
<div class="category-top-content">
  
  <?php echo $content_top; ?>
  
  <!-- Begin category info -->
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($thumb || $description) { ?>
  <div class="category-info">
    <?php if ($thumb) { ?>
    <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
    <?php } ?>
    <?php if ($description) { ?>
    <?php echo $description; ?>
    <?php } ?>
  </div>
  <?php } ?>
  <!-- End category info -->
  
</div>
<!-- End category top content -->
  
  <!-- Begin category list -->
  <?php if ($categories) { ?>   
  <div class="category-list">
  <span><?php echo $text_refine; ?>:</span>
    <?php if (count($categories) <= 5) { ?>
    <ul>
      <?php foreach ($categories as $category) { ?>
      <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
      <?php } ?>
    </ul>
    <?php } else { ?>
    <?php for ($i = 0; $i < count($categories);) { ?>
    <ul>
      <?php $j = $i + ceil(count($categories) / 4); ?>
      <?php for (; $i < $j; $i++) { ?>
      <?php if (isset($categories[$i])) { ?>
      <li><a href="<?php echo $categories[$i]['href']; ?>"><?php echo $categories[$i]['name']; ?></a></li>
      <?php } ?>
      <?php } ?>
    </ul>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  <!-- End category list -->   

  <?php echo $column_left; ?><?php echo $column_right; ?>
  
<!-- Begin content -->
<div id="content">
  
  <!-- Begin product filter -->
  <?php if ($products) { ?>
  <div class="product-filter">
    <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
    <div class="limit"><b><?php echo $text_limit; ?></b>
      <select onchange="location = this.value;">
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
    <div class="sort"><b><?php echo $text_sort; ?></b>
      <select onchange="location = this.value;">
        <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
  </div>
  <!-- End product filter -->
  
  <div class="pagination-top"><?php echo $pagination; ?></div>

  <!-- Begin product list -->
  <div class="box">
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
        		  <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>"></a></div>
      			  <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $button_compare; ?>"></a></div>
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
  <!-- End product list -->
  
  <div class="pagination-bottom"><?php echo $pagination; ?></div>
  
  <?php } ?>
  
  <?php if (!$categories && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>
  
  <?php echo $content_bottom; ?>
  
</div>
<!-- End content -->

<?php echo $footer; ?>