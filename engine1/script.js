// -----------------------------------------------------------------------------------
// http://wowslider.com/
// JavaScript Wow Slider is a free software that helps you easily generate delicious 
// slideshows with gorgeous transition effects, in a few clicks without writing a single line of code.
// Last updated: 2011-10-27
//
//***********************************************
// Obfuscated by Javascript Obfuscator
// http://javascript-source.com
//***********************************************
function ws_stack(c,a,b){var d=jQuery;this.go=function(j,h,m,l){var g=a.length>2?(j-h+1)%a.length:1;if(Math.abs(m)>=1){g=(m>0)?0:1}g=g^!!c.revers;var f=d(a.get(g?h:j));var e=d(a.get(g?j:h));a.each(function(n){if(g&&n!=h){this.style.zIndex=(Math.max(0,this.style.zIndex-1))}});var i=(c.revers?-1:1)*c.width;var k=g?0:i;e.stop(1,1).css({"z-index":4,left:(i-k+"px")});if(!g){f.stop(1,1).css({left:0})}f.css({"z-index":3});e.animate({left:(k+"px")},c.duration,"easeInOutExpo");return j}};// -----------------------------------------------------------------------------------
// http://wowslider.com/
// JavaScript Wow Slider is a free software that helps you easily generate delicious 
// slideshows with gorgeous transition effects, in a few clicks without writing a single line of code.
// Last updated: 2011-10-27
//
//***********************************************
// Obfuscated by Javascript Obfuscator
// http://javascript-source.com
//***********************************************
jQuery("#wowslider-container1").wowSlider({effect:"stack",prev:"",next:"",duration:20*100,delay:20*100,outWidth:700,outHeight:600,width:700,height:600,autoPlay:true,stopOnHover:false,loop:false,bullets:true,caption:true,controls:true});