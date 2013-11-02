$(function(){
	$(".contact-submit").click(submitContactForm);
});

function submitContactForm() {
	$.ajax({
		url: "/contact",
		type: "POST",
		dataType: "JSON",
		data: {},
		success: function() {
			$(".contact-submit-results").html("Success!");
		},
		error: function() {
			$(".contact-submit-results").html("Error!");
		}
	});
}