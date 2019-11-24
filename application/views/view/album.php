<!--

Página para detalhamento dos álbuns - aqui serão apresentadas as fotos de cada álbum,
portanto, para cada item (foreach) será gerado o HTML abaixo

-->
<div class="conteudo">
    <h1><?php echo $album[0]['titulo'] ?></h1>
    <h4><?php echo $album[0]['data'] ?></h4>
    <ul>
        <?php foreach($tags as $tag): ?>
        <li><?php echo $tag['nome'] ?></li>
        <?php endforeach; ?>
    </ul>
    <?php foreach($fotos as $foto): ?>
    <!-- Para cada item gera o HTML abaixo -->
    <div class="home-albuns">
        <div style="width: 300px;">
            <img style="width: 100%" src="<?php echo base_url('assets/imagens/'.$foto['caminho']) ?>" alt="<?php echo $foto['descricao'] ?>">
            <h5><?php echo $foto['titulo'] ?></h5>
            <h5><?php echo $foto['creditoFoto'] ?></h5>
        </div>
    </div>
    <?php endforeach; ?>
</div>