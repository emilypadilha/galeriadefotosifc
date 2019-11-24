<form id="tags-form">
    <select name="album" id="album">
        <option value="0">Selecione um album</option>
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
    <label for="new-tag">Nova tag</label>
    <input type="text" id="new-tag" placeholder="Nova tag" name="nome">
    
    <button id="btn-new-tag">Cadastrar</button>
</form>