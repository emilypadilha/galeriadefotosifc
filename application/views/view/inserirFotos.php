<div id="div-form-fotos">
    <form id="form-cadastro-fotos">
        <p>Inserir fotos ao álbum</p>

        <label for="id_album">Álbum</label>
        <select name="id_album" id="id_album">
            <option value="0">Selecione um álbum</option>
            <?php foreach($albuns as $album): ?>
            <option value="<?php echo $album['id_album'] ?>"><?php echo $album['titulo'] ?></option>
            <?php endforeach; ?>
        </select>

        <label for="fotos" id="label-fotos">Selecione as fotos para upload</label>
        <input type="file" name="fotos[]" id="fotos" accept="image/jpeg, image/x-png" multiple>

        <button id="btn-new-fotos">Cadastrar</button>

        <div id="btn-return">
            <a href="<?php echo base_url('admin/dashboard') ?>">Voltar à Dashboard</a>
        </div>

    </form>
</div>