// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
// javascript_include_tag :cache => false
$(document).ready(function()
{
  // jQuery datepicker for formtastic (see http://gist.github.com/271377)
  $('input.ui-datepicker').datepicker({ dateFormat: 'yy-mm-dd'});
});

$('.accordion').accordion({
  collapsible: true,
  active: false,
  autoHeight: true
});

$("#filters .clean-filters").bind('click', function(event){
   event.preventDefault();
   $("fieldset.inputs :input").val("");
 });
 
 $("#filters fieldset.inputs :input").each(function(){
   if( $(this).val() != '' ){
     $('.accordion').accordion("activate");
   }
 });