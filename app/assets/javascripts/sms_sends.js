
$(function() {
  $("#sms_send_campaign_id").on('change', function() {
    // this == the element that fired the change event
    $.ajax({
		  method: "POST",
		  url: "/campaigns/"+$(this).val()+"/froms/from_lists"
		}).fail(function() {
      $("#sms_send_from_id").html("<option></option>")
      $("#sms_send_track_url").html("<option></option>")
    })
  });

  $("#sms_send_track_url").on('change', function() {
    $("#sms_send_message").val($("#sms_send_message").val()+$(this).val())
  });

});