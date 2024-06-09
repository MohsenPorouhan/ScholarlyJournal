/**
 * Created by Mohsen Porouhan on 8/25/2018.
 */
var AssignRefereeLoad = function () {

    return {
        //main function to initiate the module
        init: function () {

//            $("#bodyContain").load("/admin/assignReferee", function (responseTxt, statusTxt, xhr) {
//                if (statusTxt == "success") {
//
////                    $.getScript('/assets/plugins/select2/select2.min.js', function () {
////                        $.getScript('/assets/scripts/custom/form-samples.js', function () {
////                            FormSamples.init();
////                        });
////                    });
//
//                }
//                if (statusTxt == "error")
//                    alert("Error: " + xhr.status + ": " + xhr.statusText);
//            });

            $.ajax(
                {
                    //data:postdata,
                    url: "/admin/assignReferee",
                    cache: false,
                    contentType: false,
                    processData: false,
                    type: "GET",

                    success: function (data, textStatus, jqXHR) {
                        debugger;
                        $("#bodyContain").html(data);
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