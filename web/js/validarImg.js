function validarIMG() {
    window.onload = function () {
        var btn = document.getElementById("btn");
        btn.onclick = function () {

            var img = document.getElementById().files;

            if (alert(img.length) === 0) {
                alert("Se requiere una imagen");
            } else {
                for (var i = 0; i < img.length; i++) {
                    if (img[i].type !== "image/png" && img[i].type !== "image/jpg" && img[i].type !== "image/jpeg" && img[i].type !== "image/gif") {
                        alert("El archivo" + img[i].name + " que desea subir no es una imagen");
                        return;
                    }
                }
            }
            document.formularioProductos.submit();
        };
    };
}

