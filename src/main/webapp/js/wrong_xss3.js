$(function () {

    $("#arg1").on('change', function () {
        var text = $( this ).val();
        $( "#div" ).html( text );        
    });

});