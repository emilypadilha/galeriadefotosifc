<form id="tags-form">
    <h2>Inserir <b>categorias</b> ao álbum</h2>

    <select name="album" id="album">
        <option value="0">Selecione um álbum</option>
        <?php foreach($albuns as $album): ?>
        <option value="<?php echo $album['id_album'] ?>"><?php echo $album['titulo'] ?></option>
        <?php endforeach; ?>
    </select>
    
    <?php foreach($tags as $tag): ?>
    <input type="checkbox" class="tags" value="<?php echo $tag['id_tag'] ?>" id="<?php echo $tag['id_tag'] ?>" name="tags[]"> <label for="<?php echo $tag['id_tag'] ?>"><?php echo $tag['nome'] ?></label>
    <?php endforeach; ?>
    <p id="alerta">Selecione uma tag</p>
    
    <button id="btn-cadastrar">Cadastrar</button>
</form>

<form id="new-tag-form">
    <label for="new-tag">Nova categoria</label>
    <input type="text" id="new-tag" placeholder="Insira o nome da nova categoria" name="nome">
    
    <button id="btn-new-tag">Cadastrar</button>
    
    <div id="btn-return">
        <a href="<?php echo base_url('admin/dashboard') ?>">Voltar à Dashboard</a>
    </div>

</form>