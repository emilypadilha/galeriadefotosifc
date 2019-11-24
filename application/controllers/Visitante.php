<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Visitante extends CI_Controller { // pasta Visitante no controller

    public function __construct() {
        parent::__construct();
        
        $this->load->model('Album', 'album');
    }

    public function index() {
        redirect(base_url('visitante/home'));
    }
    
	public function home() { // acesso meu metódo - INDEX
        
        $dados['albuns'] = $this->album->getAlbuns();
        $dados['tagAlbuns'] = $this->album->getTagAlbuns();
        $dados['tags'] = $this->album->getTags();
        
		$this->load->view('template/cabecalho');
		$this->load->view('view/home', $dados);
		$this->load->view('template/rodape');
	}
    
    public function album($id_album) {
        
        $dados['fotos'] = $this->album->getFotos($id_album);
        $dados['album'] = $this->album->getAlbum($id_album);
        $dados['tags'] = $this->album->getTagPorAlbum($id_album);
        
		$this->load->view('template/cabecalho');
		$this->load->view('view/album', $dados);
		$this->load->view('template/rodape');
	}
    
    public function filtroAlbum() {
        $nomeAlbum = $this->input->post('nome-album');
        
        if (isset($nomeAlbum)) {
            $dados['albuns'] = $this->album->getAlbunsNome($nomeAlbum);
        }
        
        $dataAlbum = $this->input->post('data');
        
        if (isset($dataAlbum)) {
            $dados['albuns'] = $this->album->getAlbunsData($dataAlbum);
        }
        
        $tagAlbum = $this->input->post('tag');
        
        if (isset($tagAlbum)) {
            $dados['albuns'] = $this->album->getAlbunsTag($tagAlbum);
        }
        
        echo json_encode($dados['albuns']);
    }
    
    public function tags($id_album) {
        $tags = $this->album->getTagPorAlbum($id_album);
        
        echo json_encode($tags);
    }
}