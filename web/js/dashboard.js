$(document).ready(function () {
    cantidadcliente();
    cantidadproducto();
    cantidadcompra();
    cantidadtotal();
});


function cantidadcliente() {
    var url = "DashboardControlador?accion=CantidadCliente";
    console.log("hol");
    $.ajax({
        type: 'GET',
        url: url,
        async: true,
        success: function (r) {
            $("#cantclient").html(r.toString());
        }
    });
}   

function cantidadproducto() {
    var url = "DashboardControlador?accion=CantidadProducto";
    console.log("hol");
    $.ajax({
        type: 'GET',
        url: url,
        async: true,
        success: function (r) {
            $("#cantproduct").html(r.toString());
        }
    });
}   

function cantidadcompra() {
    var url = "DashboardControlador?accion=CantidadCompra";
    console.log("hol");
    $.ajax({
        type: 'GET',
        url: url,
        async: true,
        success: function (r) {
            $("#cantshop").html(r.toString());
        }
    });
}   

function cantidadtotal() {
    var url = "DashboardControlador?accion=CantidadTotal";
    console.log("hol");
    $.ajax({
        type: 'GET',
        url: url,
        async: true,
        success: function (r) {
            $("#canttotal").html(r.toString());
        }
    });
}   