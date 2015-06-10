$(document).on('ready', function() {

  var list = $('#image-list'),
      header = $('#header'),
      html;

  $.getJSON('images.json', function(data) {
    header.append(data.length + ' images')
    $.each(data, function(i, src) {
      html = '<li><img src="' + src + '" /></li>'
      list.append(html);
    });
  });

});
