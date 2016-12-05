$(document).on('turbolinks:load', function() {
  $('.rating').raty( {path: '/assets', scoreName: 'comment[rating]'});
  $('.rated').raty({ path: '/assets', raedOnly: true, score: function() {
    return $(this).attr('data-score');
    }
  });
});