// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
#//= require jquery_ujs
//= require activestorage
//= require turbolinks
//= require rails.validations
//= require_tree .
//= require materialize-sprockets

    $(document).ready(function(){
     /*   var inputBusqueda;
        $("#verificacion_credencial").change(function(){
                $.post('/verificacion', $("#form_verificacion").serialize(), function (data){
                    //$(".datoEmpleado").html(data);
                    $(".datoEmpleado").append(data);

                });
        })*/
      M.updateTextFields();
       $('select').formSelect();
       $(document).on("turbolinks:load",function() {
           $.rails.refreshCSRFTokens();

       })
        $('.tooltipped').tooltip();



    })
