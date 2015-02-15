/**
 * @author geliang, xuw
 * 输入框提示文字效果
 */
(function($) {
    $.support.placeholder = "placeholder" in document.createElement("input");
    $.fn.placeholder = function() {
        this.filter(function(index) {
            if ($(this).is("textarea")) {
                // HTML placeholder不支持多行，如果遇到textarea带多行的，不使用原生实现
                return $(this).attr("placeholder").indexOf("\n") > 0 || !$.support.placeholder;
            }
            else {
                // 不支持原生placeholder
                return !$.support.placeholder;
            }
        }).each(function() {
            $(this).each(function() {
                var input = $(this);
                var ph = input.attr("placeholder");
                if ($.trim(input.val()) === "" || $.trim(input.val()) === ph || input.val().replace(/\n/g, "") == ph.replace(/\r\n/g, "")) {
                    input.val(ph).addClass("placeholder");
                }
            });
            $(this).focus(function() {
                if ($(this).hasClass("placeholder")) {
                    $(this).val("").removeClass("placeholder");
                }
            }).blur(function() {
                if ($.trim($(this).val()) === "") {
                    $(this).val($(this).attr("placeholder")).addClass("placeholder");
                }
            });

        });
    };
    //默认找到页面上所有有placeholder属性的文本框
    $(function() {
        $(":text[placeholder],textarea[placeholder]").placeholder();
    });
})(jQuery);
