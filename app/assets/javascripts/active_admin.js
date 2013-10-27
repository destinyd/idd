//= require jquery
//= require active_admin/base
//= require jquery-ui-timepicker-addon
//= require kindeditor
//= require kindeditor/lang/zh_CN
$(document).ready(function() {
  jQuery('input.hasDatetimePicker').datetimepicker({
    dateFormat: "dd/mm/yy",
  beforeShow: function () {
    setTimeout(
      function () {
        $('#ui-datepicker-div').css("z-index", "3000");
      }, 100
      );
  }
  });
});
