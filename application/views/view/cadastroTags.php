<form id="tags-form">
    <h2>Inserir categorias ao álbum</h2>

    <select name="album" id="album">
        <option value="0">Selecione um álbum</option>
        <?php foreach($albuns as $album): ?>
        <option value="<?php echo $album['id_album'] ?>"><?php echo $album['titulo'] ?></option>
        <?php endforeach; ?>
    </select>
    
    <h4>Selecione a(s) categoria(s) referente(s) ao álbum:</h4>
    <?php foreach($tags as $tag): ?>
    <input type="checkbox" class="tags" value="<?php echo $tag['id_tag'] ?>" id="<?php echo $tag['id_tag'] ?>" name="tags[]"> <label for="<?php echo $tag['id_tag'] ?>"><?php echo $tag['nome'] ?></label></br>
    <?php endforeach; ?>
    <p id="alerta">Selecione uma tag</p>
    
    <button id="btn-cadastrar">Cadastrar</button>
</form>

<form id="new-tag-form">
    <h4>Caso nenhuma das categorias acima se encaixe, crie uma nova categoria:</h4>

    <label for="new-tag">Nova categoria</label>
    <input type="text" id="new-tag" placeholder="Insira o nome da nova categoria" name="nome">
    
    <button id="btn-new-tag">Cadastrar</button>
    
    <div id="btn-return">
        <a href="<?php echo base_url('admin/dashboard') ?>">Voltar à Dashboard</a>
    </div>

</form>