/**
 * Created by Mohsen on 8/21/2018.
 */
var ArticleDelete2 = function () {
    return {
        //main function to initiate the module
        init: function (postdata) {
//              alert('submit intercepted');
            $.ajax(
                {
                    //data:postdata,
                    url: "/user/articleDelete2",
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