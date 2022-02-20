$(".owl-carousel").owlCarousel({
  loop: true,
  margin: 0,
  responsiveClass: true,
  responsive: {
    0: {
      items: 1,
      nav: false,
      loop: true,
    },
    600: {
      items: 3,
      nav: false,
      loop: true,
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
