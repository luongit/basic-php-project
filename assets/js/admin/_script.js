 function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        var name = input.files[0].name;
        reader.onload = function (e) {
            $('#blah').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
}

$("#myFile").change(function(){
    readURL(this);
});