// load images ajaxily and add to dom
$.getJSON('images.json', function (images) {
  var imageList = '';
  $('#header').append(images.length + ' images')
  $.each(images, function(i, src) {
    imageList += '<li><img src="' + src + '" /></li>'
  });
  $('#image-list').append(imageList);
});

// load triggers ajaxily and check text for trigger words
$.getJSON('triggers.json', function (jargon) {

  var checktext = function (str) {
    var arr = [], regex;
    jargon.forEach( function(re) {
      regex = (new RegExp(re));
      if (str.match(regex) !== null) {
        arr.push(str.match(regex)[0]);
      }
    });
    return arr;
  };

  var dostuff = function (event) {
    var $content = $('#regex-test-content');
    var $result = $('#regex-test-result');

    if (event.type === "change") {
      var text = $content.html();
      var results = checktext(text);
      if (results.length > 0) {
        $result.html('Business jargon: <strong>' + results.join(', ') + '</strong>');
      } else {
        $result.html('No business jargon found');
      }

    }

  };

  $('#regex-test').show().contentEditable().change(dostuff);

});
