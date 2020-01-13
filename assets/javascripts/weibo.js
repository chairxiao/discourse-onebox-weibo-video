$(function() {
  var head = $("#weiboiframe").contents().find("head");
  var css = '<style type="text/css">' +
          '#weiboiframe .m-btn-white.m-btn-text-orange{display:none}; ' +
          '</style>';
  $(head).append(css);
});
