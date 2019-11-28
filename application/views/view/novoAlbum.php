<div id="div-novo-album">
    <form id="form-new">

        <p>Cadastar Novo Álbum</p>

        <label for="new-titulo">Título do Álbum</label>
        <input type="text" id="new-titulo" name="titulo" placeholder="Título do álbum">
        <label for="new-local">Local do Evento</label>
        <input type="text" id="new-local" name="local" placeholder="Local onde foi realizado o evento">
        <label for="new-data">Data do Evento</label>
        <input type="date" id="new-data" name="data" placeholder="Data do evento">
        <label id="label-capa" for="new-capa">Capa do Álbum</label>
        <input type="file" id="new-capa" name="capa" placeholder="Capa do álbum">
        <button id="btn-new">Salvar</button>

        <div id="btn-return">
            <a href="<?php echo base_url('admin/dashboard') ?>">Voltar à Dashboard</a>
        </div>

    </form>
</div>
