<form id="form-cadastro-fotos">
    <label for="id_album">Album</label>
    <select name="id_album" id="id_album">
        <option value="0">Selecione um album</option>
        <?php foreach($albuns as $album): ?>
        <option value="<?php echo $album['id_album'] ?>"><?php echo $album['titulo'] ?></option>
        <?php endforeach; ?>
    </select>
    
    <label for="fotos" id="label-fotos">Fotos</label>
    <input type="file" name="fotos[]" id="fotos" accept="image/jpeg, image/x-png" multiple>
    
    <button id="btn-new-fotos">Cadastrar</button>
</form>