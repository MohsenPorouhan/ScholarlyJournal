/**
 * Created by Mohsen Porouhan on 8/25/2018.
 */
var MyProfile = function () {

    return {
        //main function to initiate the module
        init: function () {
            $.ajax(
                {
                    //data:postdata,
                    url: "/user/myProfile",
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