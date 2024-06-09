/**
 * Created by Mohsen on 8/25/2018.
 */
var RefereeForm = function () {
    return {
        //main function to initiate the module
        init: function (postdata) {
//              alert('submit intercepted');
            $.ajax(
                {
                    //data:postdata,
                    url: "/admin/refereeForm",
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
                        toastr.options.timeOut = "8000";
                        toastr.options.positionClass = "toast-top-center";
                        toastr.success("The referee successfully inserted.");
                        //Begin of reset form validation
                        //$(".alert-danger").hide();
                        $(".input-icon .fa-warning").addClass('fa').removeClass('fa-warning');
                        $(".input-icon .fa-check").addClass('fa').removeClass('fa-check');
                        $('.form-group').removeClass('has-error');
                        $('.form-group').removeClass('has-success');
//                      End of reset form validation
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        alert("erorr");
                        alert(jqXHR);
                        alert(textStatus);
                    }
                }).always(function () {
//                    $("#articleSubmit").removeAttr("disabled","disabled")
                    $("#refereeSubmit").button('reset');
//                    $(btn).removeClass('disabled');
                });
        }

    };

}();