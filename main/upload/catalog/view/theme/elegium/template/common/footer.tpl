<div id="footer">
<!-- Begin social icons //-->
    <ul class="social-icons">
      <li><a title="Facebook" target="_blank" href="http://www.your-facebook-address.com"><img src="catalog/view/theme/elegium/image/facebook.png"></a></li>
      <li><a title="Twitter" target="_blank" href="http://www.your-twitter-address.com"><img src="catalog/view/theme/elegium/image/twitter.png"></a></li>
      <li><a title="Linkedin" target="_blank" href="http://www.your-linkedin-address.com"><img src="catalog/view/theme/elegium/image/linkedin.png"></a></li>
      <li><a title="Google" target="_blank" href="http://www.your-google-address.com"><img src="catalog/view/theme/elegium/image/google.png"></a></li>
      <li><a title="Youtube" target="_blank" href="http://www.your-youtube-address.com"><img src="catalog/view/theme/elegium/image/youtube.png"></a></li>
    </ul>
<!-- End social icons //-->

<!-- Begin contacts //-->
  <div class="column-contacts">
    <ul>
      <li class="phone">(+666) 77 888 999</li>
      <li class="mobile">(+777) 88 999 000</li>
      <li class="email"><a href="mailto:info@yourstore.com">info@yourstore.com</a></li>
    </ul>  
  </div>
<!-- End contacts //-->

<!-- Begin footer columns //-->
  <div class="column4">
    <h3><?php echo $text_extra; ?></h3>
    <ul>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
    </ul>
  </div>
  <div class="column3">
    <h3><?php echo $text_account; ?></h3>
    <ul>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div>
  <div class="column2">
    <h3><?php echo $text_service; ?></h3>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
  <?php if ($informations) { ?>
  <div class="column1">
    <h3><?php echo $text_information; ?></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>    
  </div>
  <?php } ?>  
</div>
<!-- End footer columns //-->

<!-- Begin footer menu mobile //-->
<div id="footer-mobile">
 <div class="footer-menu-mobile">
  <h3><?php echo $text_extra; ?></h3>
    <div class="footer-menu-mobile-nav">
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li> 
    </div>    
  <h3><?php echo $text_account; ?></h3>
    <div class="footer-menu-mobile-nav">
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </div>    
  <h3><?php echo $text_service; ?></h3>
    <div class="footer-menu-mobile-nav">
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </div>    
  <h3><?php echo $text_information; ?></h3>
    <div class="footer-menu-mobile-nav">
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </div> 
 </div>
</div>
<!-- End footer menu mobile //-->

<!-- Begin scroll to top button //-->
<a href='#' id='scroll-to-top' style='display:none;'></a>
<!-- End scroll to top button //-->

  <!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<div id="powered">
  <span class="footer-alignleft"><?php echo $powered; ?></span>
  <span class="footer-alignright">Design by: <a target="_blank" href="http://themeforest.net/user/Themetorium">Themetorium</a></span>
  <div style="clear:both"></div>
</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

</div>

<!-- Begin tooltip jquery //-->
<script type="text/javascript" src="catalog/view/theme/elegium/js/tooltip/jquery.qtip.js"></script>
<script type="text/javascript" src="catalog/view/theme/elegium/js/tooltip/tooltip.js"></script>
<!-- End tooltip jquery //-->

</body></html>