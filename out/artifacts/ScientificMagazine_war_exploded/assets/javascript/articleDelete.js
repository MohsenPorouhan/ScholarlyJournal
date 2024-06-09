/**
 * Created by Mohsen on 8/21/2018.
 */
var ArticleDelete = function () {
    return {
        //main function to initiate the module
        init: function (postdata) {
//              alert('submit intercepted');
            $.ajax(
                {
                    //data:postdata,
                    url: "user/articleDelete",
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
                        //Begin of reset form validation
                        //$(".alert-danger").hide();
                        $("#articleDelete").modal("hide")
//End of reset form validation
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
//                                alert(jQuery(responseTxt).find('#sample_1').html());
                                        $("#sample_1").html(jQuery(data2).find('#sample_1').html());
                                        TableManaged.init();
                                    }
                                    catch(err) {
                                        $("#sample_1").DataTable().destroy();
//                                alert(jQuery(responseTxt).find('#sample_1').html());
                                        $("#sample_1").html(jQuery(data2).find('#sample_1').html());
                                        TableManaged.init();
                                    }

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
//                    $("#articleSubmit").button('reset');
//                    $(btn).removeClass('disabled');
                });
        }

    };

}();