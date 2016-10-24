/**
 *This contains global function which can be used across the site. 
 */
function openAccordion(id){
	$("#"+id).addClass("in");
}
function collapseAccordion(id){
	$("#"+id).removeClass("in");
}