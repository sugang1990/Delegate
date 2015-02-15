/**
 * @author geliang, xuw
 * �������ʾ����Ч��
 */
(function($) {
    $.support.placeholder = "placeholder" in document.createElement("input");
    $.fn.placeholder = function() {
        this.filter(function(index) {
            if ($(this).is("textarea")) {
                // HTML placeholder��֧�ֶ��У��������textarea�����еģ���ʹ��ԭ��ʵ��
                return $(this).attr("placeholder").indexOf("\n") > 0 || !$.support.placeholder;
            }
            else {
                // ��֧��ԭ��placeholder
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
    //Ĭ���ҵ�ҳ����������placeholder���Ե��ı���
    $(function() {
        $(":text[placeholder],textarea[placeholder]").placeholder();
    });
})(jQuery);
