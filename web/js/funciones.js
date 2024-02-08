$(document).ready(function () {
    $("tr #deleteItem").click(function (e) {
        e.preventDefault();
        var idp = $(this).parent().find('#item2').val();
        swal({
            title: "Esta Seguro de Eliminar?",
            text: "Una una Vez Eliminado, Debera Agregar de Nuevo!",
            icon: "warning",
            buttons: true,
            dangerMode: true
        }).then((willDelete) => {
            if (willDelete) {
                eliminar(idp);
                swal(" ¡Oh! ¡Registro Borrado! ", {
                    icon: "success",
                }).then((willDelete) => {
                    if (willDelete) {
                        parent.location.href = "Controlador?accion=carrito";
                    }
                });
            }
        });
    });
    function eliminar(idp) {
        var url = "Controlador?accion=deleteProducto&id=" + idp;
        console.log("hol");
        $.ajax({
            type: 'POST',
            url: url,
            async: true,
            success: function (r) {
            }
        });
    }
    /*$(".cantMenor").click(function (){
     //alert($("#Cant").val());
     var num=parseInt($("#Cant").val());
     $("#Cant").val(num-1);
     //console.log(num);
     });*/
    /*$(".cantMayor").click(function (){
     //alert($("#Cant").val());
     var num=parseInt($("#Cant").val());
     $("#Cant").val(num+1);
     //console.log(num);
     });*/
    //$("tr #Cant").click(function (e) {
    $(document).on('change', 'tr #Cant', function (e) {
        var idp = $(this).parent().find('#item1').val();
        var cantidad = $(this).parent().find('#Cant').val();
        var url = "Controlador?accion=updateCantidad";
        console.log(idp, cantidad);
        if (cantidad > 100) {
            swal("¡Aviso!", "Solo se puede comprar hasta 100 unidades", "warning");
        } else {
            $.ajax({
                type: 'POST',
                url: url,
                data: "id=" + idp + "&cantidad=" + cantidad,
                success: function (data, textStatus, jqXHR) {
//                parent.location.href = "Controlador?accion=carrito";
                }
            });
            location.reload();
        }
        
    });



});



