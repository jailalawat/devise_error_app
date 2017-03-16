
$(function() {
  $("#sms_send_campaign_id").on('change', function() {
    // this == the element that fired the change event
    $.ajax({
		  method: "POST",
		  url: "/admin/campaigns/"+$(this).val()+"/froms/from_lists"
		})
  });

  $("#sms_send_track_url").on('change', function() {
    $("#sms_send_message").val($("#sms_send_message").val()+$(this).val())
  });

  $("#user_id").on('change', function() {
    $.ajax({
      method: "POST",
      url: "/admin/users/"+$(this).val()+"/campaigns"
    })
  });

});
