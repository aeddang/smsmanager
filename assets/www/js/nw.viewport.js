(function() {
	window.nw = window.nw || {};    
	var IS_DEV = false;    
	var dv = IS_DEV ? alert : function(line) { console.log(line); };    

	var isIos = function() {        
		return !!navigator.userAgent.match(/iPhone|iPod|iPad|webmate/);    
	};    

	var isAndroid = function() {        
		return !!navigator.userAgent.match(/Android|CUPCAKE|dream/);    
	};    

	var defaultParams = {        
		width : 360,        
		onAdjustment : function(scale) { }    
	};    

	var merge = function(base, right) {        
		var result = {};        
		for (var key in base) {            
			result[key] = base[key];            
			if (key in right) {                
				result[key] = right[key];            
			}        
		}        
		return result;    
	};    

	var zoom = function(ratio) {        
		if ("OTransform" in document.body.style) {            
			document.body.style.OTransform = "scale(" + ratio + ")";            
			document.body.style.OTransformOrigin = "top left";            
			document.body.style.width = Math.round(window.innerWidth / ratio) + "px";        
		} else if ("MozTransform" in document.body.style) {            
			document.body.style.MozTransform = "scale(" + ratio + ")";            
			document.body.style.MozTransformOrigin = "top left";            
			document.body.style.width = Math.round(window.innerWidth / ratio) + "px";        
		} else {            
			document.body.style.zoom = ratio;        
		}    
	};    

	if (isIos()) {        
		nw.viewport = function(params) {            
			dv("iOS is detected");            
			params = merge(defaultParams, params);            
			document.write('<meta name="viewport" content="width=' + params.width + '" />');
			dv(params.width);            
			nw.viewport.adjust = function() {};        
		};    
	} else if (isAndroid()) {        
		nw.viewport = function(params) {            
			dv("Android is detected");            
			params = merge(defaultParams, params);            
			document.write('<meta name="viewport" content="width=device-width,target-densitydpi=device-dpi" />');            
			nw.viewport.adjust = function() {                
				var scale = window.innerWidth / params.width;    
				//alert(scale);
				nw.viewport.scale = scale; 
				//추가
				nw.viewport.width = Math.round(window.innerWidth / scale);
				nw.viewport.height = Math.round(window.innerHeight / scale);
				zoom(scale);                
				params.onAdjustment(scale);            
			};            
			var orientationChanged = (function() {                
				var wasPortrait = window.innerWidth < window.innerHeight;                
				return function() {                    
					var isPortrait = window.innerWidth < window.innerHeight;                    
					var result = isPortrait != wasPortrait;                    
					wasPortrait = isPortrait;                    
					return result;                
				};            
			})();            

			var aspectRatioChanged = (function() {                
				var oldAspect = window.innerWidth / window.innerHeight;                
				return function() {                    
					var aspect = window.innerWidth / window.innerHeight;                    
					var changed = Math.abs(aspect - oldAspect) > 0.0001;                    
					oldAspect = aspect;                    
					alert("aspect ratio changed");                    
					return changed;                
				};            
			});            

			window.addEventListener("resize", function() {                
				var left = orientationChanged();                
				var right = aspectRatioChanged();    
				if (left || right) {                    
					nw.viewport.adjust();                
				}            
			}, false);            
			document.addEventListener('DOMContentLoaded', function() {                
				nw.viewport.adjust();            
			});        
		};    
	} else {        
		nw.viewport = function(params) {            
			params = merge(defaultParams, params);            
			dv("PC browser is detected");            
			nw.viewport.adjust = function() {                
				var width = window.innerWidth || document.body.clientWidth || document.documentElement.clientWidth;                
				var scale = width / params.width;                
				zoom(width / params.width);                
				params.onAdjustment(scale);            
			};            

			window.addEventListener("resize", function() {                
				nw.viewport.adjust();            
			}, false);            
			document.addEventListener("DOMContentLoaded", function() {                
				nw.viewport.adjust();            
			});        
		};    
	}    

	nw.viewport.isIos = isIos;    
	nw.viewport.isAndroid = isAndroid;    
	nw.viewport.isPCBrowser = function() {        
		return !isIos() && !isAndroid();    
	};    
	nw.viewport.adjust = function() { };
})();