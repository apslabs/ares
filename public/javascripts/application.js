// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
// javascript_include_tag :cache => false
$(document).ready(function()
{
  // jQuery datepicker for formtastic (see http://gist.github.com/271377)
  $('input.ui-datepicker').datepicker({ dateFormat: 'yy-mm-dd'});
});