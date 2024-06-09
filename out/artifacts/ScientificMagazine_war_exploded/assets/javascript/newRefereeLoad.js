/**
 * Created by Mohsen Porouhan on 8/25/2018.
 */
var NewRefereeLoad = function () {


    return {
        //main function to initiate the module
        init: function () {

            $("#bodyContain").load("/admin/newReferee", function (responseTxt, statusTxt, xhr) {
                if (statusTxt == "success") {

//                    $.getScript('/assets/plugins/select2/select2.min.js', function () {
//                        $.getScript('/assets/scripts/custom/form-samples.js', function () {
//                            FormSamples.init();
//                        });
//                    });

                }
                if (statusTxt == "error")
                    alert("Error: " + xhr.status + ": " + xhr.statusText);
            });
        }

    };

}();