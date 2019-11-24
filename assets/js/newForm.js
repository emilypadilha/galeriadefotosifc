$(document).ready(function () {

    $('#btn-new').click(verificaCampos);

    function verificaCampos(e) {
        var campos, k = 0;
        e.preventDefault();

        campos = ['#new-titulo', '#new-local', '#new-data'];

        for (var i = 0; i < campos.length; i++) {
            if ($(campos[i]).val() == '') {
                $(campos[i]).css({
                    'border-color': '#ff0000'
                })
            } else {
                $(campos[i]).css({
                    'border-color': 'initial'
                })
                k++;
            }
        }

        if ($('#new-capa').val() == '') {
            $('#label-capa').css({
                'border': '1px solid #ff0000'
            })
        } else {
            $('#label-capa').css({
                'border': '1px solid #cccccc'
            })
            k++;
        }

        if (k == 4) {
            enviarForm();
        }
    }

    function enviarForm() {
        var formulario = document.getElementById('form-new');
        var form = new FormData(formulario);
        
        $.ajax({
            type: 'POST', 
            mimeType: 'multipart/form-data',
            url: base_url+"admin/novoAlbum",
            data: form,
            processData: false, // impedir que o jQuery tranforma a "data" em querystring
            contentType: false, // desabilitar o cabeçalho "Content-Type"
            cache: false, // desabilitar o "cache"
            async: false
        }).done(function(data) {
            console.log(data);
        }).fail(function(data) {
            console.log(data);
        });
    }

});
