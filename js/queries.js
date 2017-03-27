// $(document).ready(function () {
// 	clickAnimate();
// });

// function clickAnimate() {
// 	$("#up").hide();
//     $("#menu").slideUp();
// 	    $("#up").click(function(){
// 	        $( "#menu" ).slideUp();
// 	        $("#down").show();
// 	        $("#up").hide();
// 	    });
// 	     $("#down").click(function(){
// 	        $( "#menu" ).slideDown();
// 	        $("#up").show();
// 	        $("#down").hide();
// 	    });
// }

$('#down').click(function() {
    var height = $("#menu").height();
    if( height > 0 ) {
        $('#menu').css('height','0');
    } else {
        var clone = $('#menu').clone()
                    .css({'position':'absolute','visibility':'hidden','height':'auto'})
                    .addClass('slideClone')
                    .appendTo('body');
        
        //$("#menu").css({'position':'absolute','visibility':'hidden','height':'auto'});
        //var newHeight = $("#menu").height();
        var newHeight = $(".slideClone").height();
        $(".slideClone").remove();
        //$("#menu").css({'position':'static','visibility':'visible','height':'0'});
        $('#menu').css('height',newHeight + 'px');
    }
    if (  $( this ).css( "transform" ) == 'none' ){
        $(this).css("transform","rotate(180deg)");
    } else {
        $(this).css("transform","" );
    }
});