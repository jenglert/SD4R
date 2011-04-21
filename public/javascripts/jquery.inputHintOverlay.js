/*
 * jQuery Input Hint Overlay plugin v1.1.9, 2010-04-14
 * Only tested with jQuery 1.4.1 (early versions - YMMV)
 * 
 *   http://jdeerhake.com/inputHintOverlay.php
 *   http://plugins.jquery.com/project/inputHintOverlay
 *
 *
 * Copyright (c) 2010 John Deerhake
 *
 * Dual licensed under the MIT and GPL licenses:
 *   http://www.opensource.org/licenses/mit-license.php
 *   http://www.gnu.org/licenses/gpl.html
 */
jQuery.fn.inputHintOverlay = function (topNudge, leftNudge) {
	topNudge = typeof(topNudge) != 'undefined' ? topNudge : 0;
	leftNudge = typeof(leftNudge) != 'undefined' ? leftNudge : 0;
	var suffix = 'jqiho';
	return this.each(function (){
		var curParent = jQuery(this);
		var textAreas = jQuery(this).find("textarea");
		var pass = jQuery(this).find("input[type=password]")
		jQuery(this).find("input[type=text]").add(textAreas).add(pass).each(function() {
			var relHint = jQuery(this).attr('title');
			var curValue = jQuery(this).attr('value');
			
			if (curValue == '') {	
			
				var inp = jQuery(this);
				var safeHint;
				if(relHint) {
					safeHint = relHint.replace(/[^a-zA-Z0-9]/g, '');
					jQuery(this).wrap("<div id='wrap" + safeHint + suffix + "' />");
					var wrap = jQuery(this).parent();
					var newPos = jQuery(this).position();
					newZ = jQuery(this).css('z-index');
					if(newZ == "auto") newZ = "2000";
					else newZ = newZ + 20;
					var newCSS = {
						'position' : 'absolute',
						'z-index' : newZ,
						'left' : newPos['left'] + leftNudge,
						'top': newPos['top'] + topNudge,
						'cursor' : 'text'
					};
					var newDiv = jQuery(document.createElement('label'))
						.appendTo(wrap)
						.attr('for', jQuery(this).attr('id'))
						.attr('id', safeHint + suffix)
						.addClass('inputHintOverlay')
						.html(relHint)
						.css(newCSS)
						.click(function() {
							jQuery(this).toggle(false);
							inp.trigger("focus");
						});
				}
				if(curValue) {
					newDiv.toggle(false);
				}
				jQuery(this).focus(function() {
					newDiv.toggle(false);
				});
				jQuery(this).blur(function() {
					if (jQuery(this).attr('value') == "") { newDiv.toggle(true); }
				});
			}
		});
	});
}