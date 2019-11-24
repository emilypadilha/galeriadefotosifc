$(document).ready(function () {

    var linha = "";

    $('#nome-album').keyup(filtrar);

    function filtrar(e) {
        e.preventDefault();

        $.ajax({
            method: 'POST',
            dataType: 'JSON',
            url: base_url + 'Visitante/filtroAlbum',
            data: $('#form-filtro-titulo').serialize()
        }).done(function (data) {
            data.forEach(gerarLinha);
            linha = '';
        })
    }

    $('#filtro-data').change(filtrarData);

    function filtrarData(e) {
        e.preventDefault();

        $.ajax({
            method: 'POST',
            dataType: 'JSON',
            url: base_url + 'Visitante/filtroAlbum',
            data: $('#form-filtro-data').serialize()
        }).done(function (data) {
            data.forEach(gerarLinha);
            linha = '';
        })
    }

    $('#filtro-tag').change(filtrarTag);

    function filtrarTag(e) {
        e.preventDefault();

        $.ajax({
            method: 'POST',
            dataType: 'JSON',
            url: base_url + 'Visitante/filtroAlbum',
            data: $('#form-filtro-tag').serialize()
        }).done(function (data) {
            data.forEach(gerarLinha);
            linha = '';
        })
    }

    function gerarLinha(value) {
        console.log(!$('#lista-tags-' + value.id_album).parentNode)
        if (!$('#lista-tags-' + value.id_album).parentNode) {
            linha += '<a href="album/' + value.id_album + '"><div class="home-albuns"><img style="width: 100%" src="../assets/imagens/' + value.capa + '" alt=""><h2>' + value.titulo + '</h2><h4>' + value.data + '</h4><p>Local: ' + value.local + '</p><ul id="lista-tags-' + value.id_album + '"></ul></div></a>';
            $.getJSON(base_url + 'visitante/tags/' + value.id_album, function (result) {
                for (var i = 0; i < result.length; i++) {
                    $('#lista-tags-' + result[i].id_album).append('<li>' + result[i].nome + '</li>');
                }
            })
            $('#albuns').html('');
            $('#albuns').html(linha);
        }
    }

});
