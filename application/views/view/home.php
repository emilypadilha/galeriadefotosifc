<!--

Página inicial que mostra os álbuns existentes - aqui serão apresentadas as capas, título, data e local
de cada álbum, portanto, para cada item (foreach) será gerado o HTML abaixo - ou seja, um novo box
com o álbum

-->
<div class="content" id="albuns-fundo">
    <div id="forms-filtros">
        <form id="form-filtro-titulo">
            <input type="text" id="nome-album" placeholder="Busca por palavra-chave" name="nome-album">
        </form>

        <form id="form-filtro-data">
            <input type="date" id="filtro-data" name="data" placeholder="Busca por data">
        </form>

        <form id="form-filtro-tag">
            <select name="tag" id="filtro-tag">
                <option value="0">Busca por categoria</option>
                <?php foreach($tags as $tag): ?>
                <option value="<?php echo $tag['id_tag'] ?>"><?php echo $tag['nome'] ?></option>
                <?php endforeach; ?>
            </select>
        </form>
    </div>

    <div id="albuns">
        <?php foreach($albuns as $album): ?>
        <!-- Para cada item gera o HTML abaixo -->
        <a href="<?php echo base_url('Visitante/album/'.$album['id_album']) ?>">
            <div class="home-albuns">
                <h4><?php echo $album['data'] ?></h4>
                <img style="width: 100%; height: 230px"  src="<?php echo base_url('assets/imagens/'.$album['capa']) ?>" alt="Logotipo do Insituto Federal Catarinense - Campus Camboriú">
                <h2><?php echo $album['titulo'] ?></h2>
                <p><img src="<?php echo base_url('assets/imagens/local.png') ?>" width="10px" height="10px"> <?php echo $album['local'] ?></p>
                <ul>
                    <?php
                    foreach($tagAlbuns as $tagAlbum){
                        if ($album['id_album'] == $tagAlbum['id_album']) {
                            for ($i=0; $i<count($tags); $i++) {
                                if ($tagAlbum['id_tag'] == $tags[$i]['id_tag']) {

                                    echo '<li>'.$tags[$i]['nome'].'</li>';

                                }                            
                            }
                        }
                    }
                    ?>
                </ul>
            </div>
        </a>
        <?php endforeach; ?>
    </div>
</div>


<div class="paginacao">
    <ul>
        <li><b>1</b></li>
        <li>2</li>
        <li>3</li>
        <li>...</li>
        <li>8</li>
        <li>></li>
    </ul>
</div>