$(".owl-carousel").owlCarousel({
  loop: true,
  autoplay: true,
  autoplayHoverPause: true,
  margin: 0,
  responsiveClass: true,
  responsive: {
    0: {
      items: 1,
      nav: false,
    },
    600: {
      items: 3,
      nav: false,
    },
    1000: {
      items: 5,
      nav: true,
      loop: true,
      slideBy: 1,
      dots: false,
    },
  },
});
