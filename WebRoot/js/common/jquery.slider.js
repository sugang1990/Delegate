/**
 * 滚动播放
 *
 * @author zhang-j
 */
$.sliderable = function(options) {
    var settings = $.extend({
        "nowClass": "now",
        "hover": true,
        "anim": "none",
        "duration": 400,
        "onSwitch": $.noop,
        "afterSwitch": $.noop
    }, options);

    return new Slider(settings);
};

function Slider(options) {
    this.init(options);
}

$.extend(Slider.prototype, {
    timer: null,
    init: function(options) {
        var _this = this;

        $.switchable({
            "nowClass": options.nowClass || "hover",
            "tab": options.tab,
            "box": options.box,
            "anim": options.anim,
            "duration": options.duration,
            "afterSwitch": options.afterSwitch
        });

        // 重设定时器
        this._resetTimer(options);
        options.box.mouseover(function() {
            clearInterval(_this.timer);
        }).mouseout(function() {
            _this._resetTimer(options);
        });

        if (options.arrowR) {
            options.arrowR.click(function() {
                clearInterval(_this.timer);
                _this._marqueeFunc(options);
                _this._resetTimer(options);
                return false;
            });
        }

        if (options.arrowL) {
            options.arrowL.click(function() {
                clearInterval(_this.timer);
                options.reverse = true;
                _this._marqueeFunc(options);
                options.reverse = false;
                _this._resetTimer(options);
                return false;
            });
        }
    },
    _marqueeFunc: function(options) {
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
                options.box.eq(0).parent().css({
                    left: -(tab.size() - 1) * options.box.eq(0).innerWidth()
                });
                tabIndex = tab.size() - 2;
            }
            else {
                tabIndex--;
            }
        }
        else {
            if ((tabIndex + 1) === tab.size()) {
                tabIndex = 0;
            }
            else {
                tabIndex++;
            }
        }
        if (options.hover) {
            tab.eq(tabIndex).mouseover();
        }
        else {
            tab.eq(tabIndex).click();
        }
    },

    _resetTimer: function(options) {
        var _this = this;
        clearInterval(this.timer);
        this.timer = setInterval(function() {
            _this._marqueeFunc(options);
        }, 3000);
    }

});
