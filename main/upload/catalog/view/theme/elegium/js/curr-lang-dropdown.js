$(document).ready(function(){

		// Language Dropdown
		l_w = $('#language-options').width();
		$('#language-switcher').css('width',(l_w + 20)+'px');
		$('#language-switcher').hover(function(){
			$('#language-options').slideDown(200);
		},function(){
			$('#language-options').slideUp(200);
		});
		
		// Currency Dropdown
		co_w = $('#currency-options').width();
		$('#currency-switcher').css('width',(co_w + 20)+'px');
		$('#currency-switcher').hover(function(){
			$('#currency-options').slideDown(200);
		},function(){
			$('#currency-options').slideUp(200);
		});
});
