$(document).ready(function () {
    
    $('#btn-new-fotos').click(verificaCampos);
    
    function verificaCampos(e) {
        e.preventDefault();
        var k=0;
        
        if ( $('#id_album').val() == 0 ) {
            $('#id_album').css({
                'border-color': '#ff0000'
            })
        }
        
        if ( $('#id_album').val() != 0 ) {
            $('#id_album').css({
                'border-color': 'initial'
            })
            k++
        }
        
        if ( $('#fotos').val() == '' ) {
            $('#label-fotos').css({
                'border': '1px solid #ff0000'
            })
        }
        
        if ( $('#fotos').val() != '' ) {
            $('#label-fotos').css({
                'border': '1px solid #cccccc'
            })
            k++
        }
        
        if ( k == 2 ) {
            cadastroFotos();
        }
        
    }
    
    function cadastroFotos(e) {
        var formulario = document.getElementById('form-cadastro-fotos');
        var form = new FormData(formulario);
        
        $.ajax({
            type: 'POST', 
            mimeType: 'multipart/form-data',
            url: base_url+"admin/cadastroFotos",
            data: form,
            processData: false, // impedir que o jQuery tranforma a "data" em querystring
            contentType: false, // desabilitar o cabeçalho "Content-Type"
            cache: false, // desabilitar o "cache"
            async: false
        }).done(function(result) {
            var array = JSON.parse(result);

            $('#div-form-fotos').html('');

            if (array['criado'] == 'true') {
                $('#div-form-fotos').html('<p>Fotos cadastradas com sucesso!</p>');
                console.log(array['criado']);
            } else {
                $('#div-form-fotos').html('<p>Falha ao cadastrar fotos!</p>');
                console.log(array['criado']);
            }
        }).fail(function(result) {
            console.log(result);
        });
    }
    
});