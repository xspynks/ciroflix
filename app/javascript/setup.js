$(".owl-carousel").owlCarousel({
  loop: true,
  margin: 0,
  nav: true,
  dots: false,
  responsiveClass: true,
  responsive: {
    0: {
      items: 1,
    },
    600: {
      items: 3,
    },
    1000: {
      items: 5,
      loop: true,
      slideBy: 1,
    },
  },
});
