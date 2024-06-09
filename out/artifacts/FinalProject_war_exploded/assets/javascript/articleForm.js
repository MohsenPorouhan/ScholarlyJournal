var ArticleForm = function () {
    return {
        //main function to initiate the module
        init: function (postdata) {
//              alert('submit intercepted');
            $.ajax(
                {
                    //data:postdata,
                    url: "user/articleForm",
                    //url : formURL,
//                        data: postdata2,
                    data: postdata,
                    //data: "firstName=" + $("fn").val(),
                    cache: false,
                    contentType: false,
                    processData: false,
                    type: "post",

                    success: function (data, textStatus, jqXHR) {
                        debugger;
//                        alert("success");
//                        alert("Good");
//                        alert(data);

//                            if ($.trim(data) === "yess")
//                                alert("That's one I wanted. Excellent")
                        //Begin of reset form validation
                        //$(".alert-danger").hide();
                        $("#portlet-config").modal("hide")
                        $(".input-icon .fa-warning").addClass('fa').removeClass('fa-warning');
                        $(".input-icon .fa-check").addClass('fa').removeClass('fa-check');
                        $('.form-group').removeClass('has-error');
                        $('.form-group').removeClass('has-success');
//                      End of reset form validation
                        //$("#bodyContain").html(data);
//                        $("#bodyContain").html(jQuery(data).find('#sample_1').html()

//                        alert(jQuery(data).find('#sample_1').html());
//                        $("#sample_1").html(jQuery(data).find('#sample_1').html());

//                        $.getScript('/assets/javascript/articleLoad.js', function () {
//                            ArticleLoad.init();
//                        });
//Begin of article load
//                        $("#sample_1").DataTable().fnDestroy();
                        $.ajax(
                            {
                                //data:postdata,
                                url: "user/articleLoad",
                                //url : formURL,
//                              data: postdata2,
                                //data: postdata,
                                //data: "firstName=" + $("fn").val(),
                                cache: false,
                                contentType: false,
                                processData: false,
                                type: "get",

                                success: function (data2, textStatus, jqXHR) {
                                    debugger;
                                    try {
                                        $("#sample_1").DataTable().fnDestroy();
                                        $("#sample_1").html(jQuery(data2).find('#sample_1').html());
                                        TableManaged.init();
                                    }
                                    catch(err) {
                                        $("#sample_1").DataTable().destroy();
                                        $("#sample_1").html(jQuery(data2).find('#sample_1').html());
                                        TableManaged.init();
                                    }


//                                alert(jQuery(responseTxt).find('#sample_1').html());

                                },
                                error: function (jqXHR, textStatus, errorThrown) {
                                    alert("erorr");
                                    alert(jqXHR);
                                    alert(textStatus);
                                }
                            });
//End of article load


//                        $("#sample_1").DataTable().fnDestroy();
//                        $("#sample_1").load("user/articleLoad", function (responseTxt, statusTxt, xhr) {
//                            if (statusTxt == "success")
//                            {
//                                $("#sample_1").DataTable().fnDestroy();
////                                alert(jQuery(responseTxt).find('#sample_1').html());
//                                $("#sample_1").html(jQuery(responseTxt).find('#sample_1').html());
//                                TableManaged.init();
//                            }
//                            if (statusTxt == "error")
//                                alert("Error: " + xhr.status + ": " + xhr.statusText);
//                        });
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        alert("erorr");
                        alert(jqXHR);
                        alert(textStatus);
                    }
                }).always(function () {
//                    $("#articleSubmit").removeAttr("disabled","disabled")
                    $("#articleSubmit").button('reset');
//                    $(btn).removeClass('disabled');
                });
        }

    };

}();