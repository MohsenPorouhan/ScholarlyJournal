var ArticleLoad2 = function () {


    return {
        //main function to initiate the module
        init: function () {

            //  alert('submit intercepted');
            $.ajax(
                    {
                        //data:postdata,
                        url: "/user/articleLoad22",
                        //url : formURL,
                        //data: new FormData(this),
                        //data: "firstName=" + $("fn").val(),
                        cache: false,
                        contentType: false,
                        processData: false,
                        type: "GET",

                        success: function (data, textStatus, jqXHR) {
                            debugger;
//                            alert("success");
//                            alert("Good");
//                            alert(data);
                            loadCSS = function(href) {

                                var cssLink = $("<link>");
                                $("head").append(cssLink); //IE hack: append before setting href

                                cssLink.attr({
                                    rel:  "stylesheet",
                                    type: "text/css",
                                    href: href
                                });

                            };

//                            loadJs = function(src) {
//
////                                var jsLink = $("<script>");
//                                var script = document.createElement('script');
//                                $("body").children(":nth-last-child(5)").after(script); //IE hack: append before setting href
////                                jsLink.attr({
////                                    src: src
////                                });
//                                script.type = 'text/javascript';
//                                script.src = src;
//
//                            };

                            $("#bodyContain").html(data);
                            loadCSS("/assets/plugins/select2/select2-rtl.css");
                            loadCSS("/assets/plugins/select2/select2-metronic-rtl.css");
//                            loadJs("/assets/plugins/select2/select2.min.js");
//                            loadJs("/assets/scripts/custom/form-samples.js")
                            $.getScript('/assets/plugins/select2/select2.min.js', function() {
                                $.getScript('/assets/scripts/custom/form-samples.js', function() {
                                    FormSamples.init();
                                });
                            });

//                            if ($.trim(data) === "yess")
//                                alert("That's one I wanted. Excellent")
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            alert("erorr");
                            alert(jqXHR);
                            alert(textStatus);
                        }
                    });
        }

    };

}();