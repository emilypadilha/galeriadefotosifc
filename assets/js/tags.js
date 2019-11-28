$(document).ready(function () {
    
    $('#btn-cadastrar').click(verificaCampos);
    
    function verificaCampos(e) {
        var check = $('.tags'), k = 0, l = 0;
        e.preventDefault();
        
        if ( $('#album').val() == '0' ) {
            $('#album').css({
                'border-color' : '#ff0000'
            });
        }

        if ( $('#album').val() != '0' ) {
            $('#album').css({
                'border-color' : 'initial'
            });
            l++;
        }
        

        for (var i=0;i<check.length;i++){
            
            if ( check[i].checked == true ){
                $('#alerta').css({
                    'display': 'none'
                })
                
                k++;
            }

            if ( check[i].checked == false ) {
                $('#alerta').css({
                    'display': 'block'
                })
            }
            
            if ( k != 0 ) {
                l++;
                break;
            }
            
        }
        
        if ( l == 2 ) {
            enviarForm();
        }
        
    }
    
    function enviarForm() {
        $.ajax({
            method: 'POST',
            dataType: 'JSON',
            url: base_url+'Admin/cadastrarTags',
            data: $('#tags-form').serialize()
        }).done(function (data) {
            $('#div-tag-form').html('');
            
            if ( data.criado == 'true' ) {
                $('#div-tag-form').html('<p>Categorias cadastradas com sucesso!</p>');
            } else {
                $('#div-tag-form').html('<p>Falha ao cadastrar categorias</p>');
            }
        })
    }
    
    $('#btn-new-tag').click(verificaCampo);
    
    function verificaCampo(e) {
        var k = 0;
        e.preventDefault();
        
        if ( $('#new-tag').val() == '' ) {
            $('#new-tag').css({
                'border-color': '#ff0000'
            });
        }
        
        if ( $('#new-tag').val() != '' ) {
            $('#new-tag').css({
                'border-color': 'initial'
            });
            k++;
        }
        
        if (k == 1) {
            cadastraTag();
        }
    }
    
    function cadastraTag() {
        $.ajax({
            method: 'POST',
            dataType: 'JSON',
            url: base_url+'Admin/cadastraTags',
            data: $('#new-tag-form').serialize()
        }).done(function (data) {
            if (data.cadastro) {
                window.location.reload();
            }
        })
    }
    
});