<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
        
        if (!isset($this->session)) {
            $this->session->start();
        }
        
        if (!isset($this->session->id_usuario) || $this->session->perfil != '1') {
            session_destroy();
            
            redirect('login/sair');
        }
        
        $this->load->model('Album', 'album');
    }

    public function index() {
        redirect(base_url('admin/dashboard'));
    }

    public function dashboard() {
        $this->load->view('template/cabecalho');
        $this->load->view('view/dashboard');
        $this->load->view('template/rodape');
    }
    
    public function novo() {
        $this->load->view('template/cabecalho');
        $this->load->view('view/novoAlbum');
        $this->load->view('template/rodape');
    }
    
    public function novoAlbum() {
        $titulo = $this->input->post('titulo');
        $local = $this->input->post('local');
        $data = $this->input->post('data');
        $capa = $_FILES['capa'];
        
        $album = $this->album->getAlbumTitulo($titulo);
        
        $path_parts = pathinfo($capa['tmp_name'].'/'.$capa['name']);
        
        $nameSave = trim($capa['name']);
        
        $pathDB = $titulo.'/capa/'.$capa['name'];
        
        if (isset($titulo) && !file_exists('assets/imagens/'.$titulo)) {
            if ( mkdir('assets/imagens/'.$titulo, 0777, true) ) {
//                echo json_encode('Pasta '.$titulo.' criada!', JSON_UNESCAPED_UNICODE);
            } else {
//                echo json_encode('Erro ao criar pasta '.$titulo, JSON_UNESCAPED_UNICODE);
            }
            
            if ( mkdir('assets/imagens/'.$titulo.'/capa', 0777, true) ) {
//                echo json_encode('Pasta '.$titulo.'/capa criada!', JSON_UNESCAPED_UNICODE);
            } else {
//                echo json_encode('Erro ao criar pasta '.$titulo.'/capa', JSON_UNESCAPED_UNICODE);
            }
            
            if ( mkdir('assets/imagens/'.$titulo.'/fotos', 0777, true) ) {
//                echo json_encode('Pasta '.$titulo.'/fotos criada!', JSON_UNESCAPED_UNICODE);
            } else {
//                echo json_encode('Erro ao criar pasta '.$titulo.'/fotos', JSON_UNESCAPED_UNICODE);
            }
        } else {
//            echo json_encode("Pasta já existe!", JSON_UNESCAPED_UNICODE);
            exit;
        }
        
        if ( file_exists('assets/imagens/'.$titulo.'/capa') ) {
            $pathUpload = 'assets/imagens/'.$titulo.'/capa/'.basename($nameSave);
            if ( move_uploaded_file($capa['tmp_name'], $pathUpload) ) {
                if ( $this->album->setAlbum($titulo, $local, $data, $pathDB) ) {
                    echo json_encode(array('criado' => 'true'));
                } else {
                    echo json_encode(array('criado' => 'false'));
                }
            } else {
                echo json_encode(array('criado' => 'false'));
            }
        }
    }
    
    public function tags() {
        $dados['albuns'] = $this->album->getAlbuns();
        $dados['tags'] = $this->album->getTags();
        
        $this->load->view('template/cabecalho', $dados);
        $this->load->view('view/cadastroTags');
        $this->load->view('template/rodape');
        
    }
    
    public function cadastrarTags() {
        $album = $this->input->post('album');
        $tags = $this->input->post('tags');
        
        for ( $i = 0; $i<count($tags); $i++ ) {
            if ( $this->album->setTagAlbum($album, $tags[$i]) ) {
                $cadastro = true;
            } else {
                $cadastro = false;
            }
        }
        
        if ( $cadastro ) {
            echo json_encode(array('criado' => 'true'));
        } else {
            echo json_encode(array('criado' => 'false'));
        }
    }
    
    public function cadastraTags() {
        $nome = $this->input->post('nome');
        
        if ( $this->album->setTag($nome) ) {
            echo json_encode( array("cadastro" => "true") );
        } else {
            echo json_encode( array("cadastro" => "false") );
        }
    }
    
    public function fotos() {
        $dados['albuns'] = $this->album->getAlbuns();
        
        $this->load->view('template/cabecalho', $dados);
        $this->load->view('view/inserirFotos');
        $this->load->view('template/rodape');
    }
    
    public function cadastroFotos() {
        $id_album = $this->input->post('id_album');
        $fotos = $_FILES['fotos'];
        
        $dados['album'] = $this->album->getAlbum($id_album);
        
        for ($i=0; $i < count($fotos['name']); $i++) {

            $path_parts = pathinfo($fotos['tmp_name'][$i].'/'.$fotos['name'][$i]);

            $nameSave = trim($fotos['name'][$i]);

            $pathDB = $dados['album'][0]['titulo'].'/fotos/'.$fotos['name'][$i];
            
            $pathUpload = 'assets/imagens/'.$dados['album'][0]['titulo'].'/fotos/'.basename($nameSave);
            
            if ( move_uploaded_file($fotos['tmp_name'][$i], $pathUpload) ) {
                if ( $this->album->setFotos($id_album, $pathDB) ) {
                    $cadastro = true;
                } else {
                    $cadastro = false;
                }
            } else {
                $cadastro = false;
            }
                    
        }
        
        if ( $cadastro ) {
            echo json_encode(array('criado' => 'true'));
        } else {
            echo json_encode(array('criado' => 'false'));
        }
    }
    
}
