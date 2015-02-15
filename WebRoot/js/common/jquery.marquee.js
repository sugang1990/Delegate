/**
 * 滚动播放
 *
 * @author xuw
 */
$.marquee = function(options) {
	var settings = $.extend( {
		"nowClass" : "now",
		"hover" : true,
		"anim" : "none",
		"duration" : 400,
		"onSwitch" : $.noop,
		"afterSwitch" : $.noop
	}, options);

	return new Marquee(settings);
};

function Marquee(options) {
	this.init(options);
}

$.extend(Marquee.prototype, {
	timer : null,
	init : function(options) {
		var _this = this;

		$.switchable( {
			"nowClass" : options.nowClass || "hover",
			"tab" : options.tab,
			"box" : options.box,
			"anim" : options.anim,
			"afterSwitch" : options.afterSwitch
		});

		// 重设定时器
		this._resetTimer();
		options.tab.mouseover(function() {
			clearInterval(_this.timer);
		}).mouseout(function() {
			_this._resetTimer();
		});

		if (options.arrowR) {
			options.arrowR.click(function() {
				clearInterval(_this.timer);
				_this._marqueeFunc(options);
				_this._resetTimer();
				return false;
			});
		}

		if (options.arrowL) {
			options.arrowL.click(function() {
				clearInterval(_this.timer);
				_this._marqueeFunc(options);
				_this._resetTimer();
				return false;
			});
		}
	},
	_marqueeFunc : function(options) {
		var tabIndex = 0;
		var tab = options.tab;

		tab.each(function(i) {
			if ($(this).hasClass(options.nowClass)) {
				tabIndex = i;
				return false;
			}
		});

		if (options.reverse) {
			if (tabIndex === 0) {
				options.scrollContainer.css( {
					left : -(tab.size() - 1) * options.box.eq(0).innerWidth()
				});
				tabIndex = tab.size() - 2;
			} else {
				tabIndex--;
			}
		} else {
			if ((tabIndex + 1) === tab.size()) {
				tabIndex = 0;
			} else {
				tabIndex++;
			}
		}

		if (options.hover) {
			tab.eq(tabIndex).mouseover();
		} else {
			tab.eq(tabIndex).click();
		}
	},

	_resetTimer : function(options) {
		var _this = this;
		clearInterval(this.timer);
		this.timer = setInterval(function() {
			_this._marqueeFunc(options);
		}, options.duration);
	}

});
