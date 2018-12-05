/**
 *
 *
 **/
$(document).ready(function(){
    /*var inputBusqueda;
    $("#verificacion_credencial").change(function(){
        $.post('/verificacion', $("#form_verificacion").serialize(), function (data){
            //$(".datoEmpleado").html(data);
            $(".datoEmpleado").append(data);
        });
    })*/
    $(document).ready(function(){
        $('select').formSelect();
    });
});
    $(function (){
        $("#verificacion_credencial").on('input',function(){
            $(this).parents("form").submit();
        });
    })

