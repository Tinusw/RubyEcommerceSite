$(document).on('ready', function(){
  // scroll Reveal
  window.sr = ScrollReveal();
  sr.reveal('.products', { duration: 2000 }, 80);
  
  // Raty plugin to for inputting review scores.
  $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });

  // raty plugin config for outputting comment scores.
  $('.rated').raty( { path: '/assets',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
    });
});