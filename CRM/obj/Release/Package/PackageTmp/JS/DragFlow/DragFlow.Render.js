/// <reference path="jquery-1.4.1-vsdoc.js" />
/*
 *  This file contains the JS that handles the first init of each jQuery demonstration, and also switching
 *  between render modes.
 *  Author:limq
 *  date:2012.12.08
 */
jsPlumb.bind("ready", function() {

	// chrome fix.
	document.onselectstart = function () { return false; };				

    // render mode
	var resetRenderMode = function(desiredMode) {
		var newMode = jsPlumb.setRenderMode(desiredMode);
		$(".rmode").removeClass("selected");
		$(".rmode[mode='" + newMode + "']").addClass("selected");		

		$(".rmode[mode='canvas']").attr("disabled", !jsPlumb.isCanvasAvailable());
		$(".rmode[mode='svg']").attr("disabled", !jsPlumb.isSVGAvailable());
		$(".rmode[mode='vml']").attr("disabled", !jsPlumb.isVMLAvailable());

		//var disableList = (newMode === jsPlumb.VML) ? ",.rmode[mode='svg']" : ".rmode[mode='vml']"; 
	//	$(disableList).attr("disabled", true);				
		DragFlow.init();
	};
     
	$(".rmode").bind("click", function() {
		var desiredMode = $(this).attr("mode");
		if (DragFlow.reset) DragFlow.reset();
		jsPlumb.reset();
		resetRenderMode(desiredMode);					
	});
	
	// explanation div is draggable
	$("#explanation,.renderMode").draggable();

	resetRenderMode(jsPlumb.SVG);
       
});