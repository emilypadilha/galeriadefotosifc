<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>Galeria de Fotos IFC - Campus Camboriú</title>
    <link href="https://fonts.googleapis.com/css?family=Lato:400,400i,700&display=swap" rel="stylesheet"/> 
    
    <link rel="stylesheet" href="<?php echo base_url('assets/css/style.css') ?>">
</head>

<body>

    <div id="menu">
        <script>var base_url = '<?php echo base_url() ?>'</script>
        <a href="<?php echo base_url('visitante/home') ?>">Início</a>
        <a href="http://camboriu.ifc.edu.br/" target="_blank">Site Institucional</a>
        <a href="http://www.camboriu.ifc.edu.br/estude-no-ifc/" target="_blank">Estude no IFC</a>
        <a href="https://issuu.com/institutofederalcatarinense/docs/ifc_guiadecursos">Conheça Nossos Cursos</a>
        <?php if(isset($this->session->id_usuario)): ?>
        <a href="<?php echo base_url('admin/dashboard') ?>">Painel Administrativo</a>
        <a href="<?php echo base_url('login/sair') ?>">Sair</a>
        <?php endif; ?>
        
        <?php if(!isset($this->session->id_usuario)): ?>
        <a href="<?php echo base_url('login/login') ?>">Acesso Restrito</a>
        <?php endif; ?>
    </div>
    
    <div class="main">
    <header>
        <div class="box1">
            <a href="<?php echo base_url('visitante/home') ?>"><img src="<?php echo base_url('assets/imagens/logo-ifc.png') ?>" alt="Logotipo do Instituto Federal Catarinense - Campus Camboriú" /></a>
        </div>

        <div class="box1">
            <h1>Galeria de Fotos</h1>
        </div>
    </header>
