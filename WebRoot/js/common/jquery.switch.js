
(function($) {
    $.switchable = function(options) {
        var settings = $.extend({
            "nowClass": "now",
            "hover": true,
            "anim": "none",
            "duration": 400,
            "onSwitch": $.noop,
            "afterSwitch": $.noop
        }, options);
        return new Switch(settings);
    }
    
    function Switch(settings) {
        this.tabs = $(settings["tab"]);
        this.boxs = $(settings["box"]);
        this.nowClass = settings["nowClass"];
        this.hover = settings["hover"];
        this.anim = settings["anim"];
        this.duration = settings["duration"];
        this.onSwitch = settings["onSwitch"];
        this.afterSwitch = settings["afterSwitch"];
        this.index = 0;
        var _this = this;
        var tabTimer;
        
        if (this[this.anim + "AnimInit"]) {
            this[this.anim + "AnimInit"]();
        }
        
        if (this.hover === true) {
            this.tabs.hover(function() {
                var tab = $(this);
                tabTimer = setTimeout(function() {
                    _this.dealSwitch(tab);
                }, 200);
            }, function() {
                clearTimeout(tabTimer);
            });
        }
        else {
            this.tabs.click(function() {
                var tab = $(this);
                clearTimeout(tabTimer);
                _this.dealSwitch(tab);
            });
        }
    }
    
    $.extend(Switch.prototype, {
    
        dealSwitch: function(tab) {
            this.tabs.removeClass(this.nowClass);
            tab.addClass(this.nowClass);
            this.index = this.tabs.index(tab);
            this[this.anim + "AnimRender"](this.index);
            this.onSwitch(this.index);
        },
        
        
        noneAnimRender: function(index) {
            this.boxs.hide();
            this.boxs.eq(index).show();
        },
        
        
        scrollVAnimInit: function() {
            this.scrollContainer = $("<div></div>").css("position", "absolute");
            var $boxParent = this.boxs.parent();
            if ($boxParent.is('ol') || $boxParent.is('ul')) {
                $boxParent = $boxParent.parent();
                $boxParent.css("position", "relative")
                $boxParent.append(this.scrollContainer.append(this.boxs.parent()));
            }
            else {
                $boxParent.css("position", "relative")
                $boxParent.append(this.scrollContainer.append(this.boxs));
            }
            this.boxHeight = this.boxs.eq(0).height();
        },
        
        
        scrollVAnimRender: function(index) {
            var newTop = (index) * -(this.boxHeight);
            var _this = this;
            this.scrollContainer.stop().animate({
                top: newTop
            }, {
                duration: this.duration,
                complete: function() {
                    _this.afterSwitch(index);
                }
            });
        },
        
        
        scrollHAnimInit: function() {
            this.scrollContainer = $("<div></div>").css({
                "position": "absolute",
                "width": "10000px"
            });
            this.boxs.parent().css("position", "relative");
            this.boxs.parent().append(this.scrollContainer.append(this.boxs));
            this.boxWidth = this.boxs.eq(0).innerWidth();
        },
        
        
        scrollHAnimRender: function(index) {
            var newLeft = (index) * -(this.boxWidth);
            var _this = this;
            this.scrollContainer.stop().animate({
                left: newLeft
            }, {
                duration: this.duration,
                complete: function() {
                    _this.afterSwitch(index);
                }
            });
            
            var $img = this.boxs.eq(index).find('img');
            if ($img.length > 0 && $img.attr('src') != "") {
                $(window).trigger('scroll');
            }
        },
        
        fadeInOutAnimInit: function() {
            this.boxs.css({
                "z-index": 1
            });
            this.fadeInOutTopMost = this.boxs.eq(0);
            this.fadeInOutTopMost.css({
                "z-index": 9
            });
        },
        
        fadeInOutAnimRender: function(index) {
            var _this = this;
            this.boxs.eq(index).css("z-index", 8);
            this.fadeInOutTopMost.animate({
                opacity: 0
            }, {
                duration: this.duration,
                complete: function() {
                    _this.fadeInOutTopMost.css({
                        "z-index": 1,
                        "opacity": 1
                    });
                    _this.fadeInOutTopMost = _this.boxs.eq(index);
                    _this.fadeInOutTopMost.css("z-index", 9);
                    _this.afterSwitch(index);
                }
            });
        }
    });
    
})(jQuery);
