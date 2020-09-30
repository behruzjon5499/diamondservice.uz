jQuery(function($){
$('button.open_menu').click(function(){
  $('body').toggleClass('no-scroll');
  $(this).toggleClass('active');
  $('nav ul.menu').toggleClass('active');
});
$('button.open_search').click(function(){
  $(this).toggleClass('active');
  $('nav form').toggleClass('active');
});
	//  $('.slide_gal').slick({
  //     slidesToShow: 1,
  //     slidesToScroll: 1,
  //     arrows: true,
  //     fade: true,
  //     asNavFor: '.slide_nav'
  //   });
  //   $('.slide_nav').slick({
  //     slidesToShow: 5,
  //     slidesToScroll: 1,
  //     asNavFor: '.slide_gal',
  //     dots: false,
  //     nav:false,
  //     arrows:false,
  //     centerMode: true,
  //     focusOnSelect: true,
  //   });	
    $('.part_list').slick({
      slidesToShow: 6,
      slidesToScroll: 1,
      arrows:false,
      dots:false,
      autoplay: true,
      autoplaySpeed: 2000,
      responsive: [
      {
        breakpoint: 790,
        settings: {
          slidesToShow: 3
        }
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1
        }
      }
    ]
    });     
    $('.slider_list').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows:true,
      dots:false,
      fade: true,
      autoplay: true,
      autoplaySpeed: 2000,
      
    }); 
  
    $('.fabric_list').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true,
      fade: true,
    });
    $('.diler_list').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true,
      fade: true,
    });
    $('.doma_list').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true,
      fade: true,
    });
    $('.mag_list').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true,
      fade: true,
    });
});
$(window).on('scroll', function (event) {
    var scrollValue = $(window).scrollTop();
    if (scrollValue > 90) {
        $('nav.navbar').addClass('affix');
    } else{
        $('nav.navbar').removeClass('affix');
    }
});