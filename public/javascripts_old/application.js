// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
  $("#user_product_plans th a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
})
