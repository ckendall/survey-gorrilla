// $(document).ready(function() {
//     var max_fields      = 10; //maximum input boxes allowed
//     var wrapper         = $(".input_fields_wrap"); //Fields wrapper
//     var add_button      = $(".add_field_button"); //Add button ID

//     var x = 1; //initlal text box count
//     $(add_button).click(function(e){ //on add input button click
//         e.preventDefault();
//         if(x < max_fields){ //max input box allowed
//             x++; //text box increment
//             $(wrapper).append('<div><input type="text" name="mytext[]"/><a href="#" class="remove_field">Remove</a></div>'); //add input box
//         }
//     });

//     $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
//         e.preventDefault(); $(this).parent('div').remove(); x--;
//     })
// });


// (function(){
//     var pwd = document.getElementById('pwd');
//     var chk = document.getElementById('showPwd');

//     addEventListener(chk, 'change', function(e) {
//         console.log("bananas")
//         var target = e.target || e.srcElement;
//         try {
//             console.log("bananas")
//             if (target.checked) {
//                 pwd.type = 'text';
//                 console.log("bananas")
//             } else {
//                 pwd.type = 'password';
//             }
//         } catch(error) {
//             alert('This browser cannot switch type');
//         }
//     });
// }());

$(document).ready(function ($) {
    $.toggleShowPassword = function (options) {
        var settings = $.extend({
            field: "#password",
            control: "#toggle_show_password",
        }, options);

        var control = $(settings.control);
        var field = $(settings.field)

        control.bind('click', function () {
            if (control.is(':checked')) {
                field.attr('type', 'text');
            } else {
                field.attr('type', 'password');
            }
        })
    };
}(jQuery));

//Here how to call above plugin from everywhere in your application document body
$.toggleShowPassword({
    field: '#pwd',
    control: '#showPwd'
});

$(document).ready(function() {
    $("#my_audio").get(0).play();
});