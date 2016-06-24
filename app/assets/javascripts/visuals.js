$(document).ready(function(){
  // scroll Reveal
  window.sr = ScrollReveal();
  sr.reveal('.product', { duration: 2000 }, 80);
  
  // Raty plugin to for inputting review scores.
  $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });

  // raty plugin config for outputting comment scores.
  $('.rated').raty( { path: '/assets',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');

    }
    });

  // Adding Elevate Zoom to product/show
  $('.img-zoom').elevateZoom({
    zoomWindowFadeIn: 500,
    zoomWindowFadeOut: 500,
    lensFadeIn: 500,
    lensFadeOut: 500,
    responsive: true,
    zoomType: "lens",
    cursor: 'crosshair',
    containLensZoom: true,
    scrollZoom : true});
});