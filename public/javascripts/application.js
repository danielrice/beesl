jQuery(document).ready(function($) {
	/** BUTTONS **/
	$(".jqButton" ).button();
	
	/** TOGGLE ACTIONS */
	$("a#login_activator").click(function(event){
		event.preventDefault();
		$("div#login_form").toggle();
	});
	$('#change_pw_area_trigger').click(function(event){
		$("#change_pw_area").toggle();
	});
	$('#users_index_trigger').click(function(event){
		$("#users_index").toggle();
	});
	$('#help_trigger').click(function(event){
		$("#help_area").toggle();
	});
	$("#errorExplanation,.errorExplanation,#notice,#error,#warning,#message,#success").click(function(event){
		$("#errorExplanation,.errorExplanation,#notice,#error,#warning,#message,#success").toggle("slow");
	});
});