$(document).ready(function(){   
    $('.box-product .boxgrid').hover(function(){  
        $(".box-product-info", this).stop().animate({top:'0px'},{queue:false,duration:160});
    }, function() {  
        $(".box-product-info", this).stop().animate({top:'155px'},{queue:false,duration:160});  
    });   
});
