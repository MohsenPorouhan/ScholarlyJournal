var EvaluatorForm = function () {
    return {
        //main function to initiate the module
        init: function (postdata) {
//              alert('submit intercepted');
            $.ajax(
                {
                    //data:postdata,
                    url: "/admin/evaluatorForm",
                    //url : formURL,
//                        data: postdata2,
                    data: postdata,
                    //data: "firstName=" + $("fn").val(),
                    cache: false,
                    contentType: false,
                    processData: false,
                    type: "post",

                    success: function (data, textStatus, jqXHR) {
//                        debugger;
//                        alert("success");
//                        alert("Good");
                        alert(data);

//                            if ($.trim(data) === "yess")
//                                alert("That's one I wanted. Excellent")
                        //Begin of reset form validation
                        //$(".alert-danger").hide();
                        $("#portlet-config2").modal("hide")
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
                    $("#assignRefereeSubmit").button('reset');
//                    $(btn).removeClass('disabled');
                });
        }

    };

}();