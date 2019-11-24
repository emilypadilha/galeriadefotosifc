<?php
     
class Album extends CI_Model {
    
/*               */
/*    Selects    */
/*               */

    public function getAlbuns() {
        $this->db->select('id_album');
        $this->db->select('titulo');
        $this->db->select('local');
        $this->db->select('DATE_FORMAT(data, "%d/%m/%Y") as data');
        $this->db->select('capa');
        $this->db->from('album');
        $this->db->order_by('data', 'desc');
        $query = $this->db->get();
        
        return $query->result_array();
    }
    
    public function getAlbum($id_album) {
        $this->db->select('id_album');
        $this->db->select('titulo');
        $this->db->select('local');
        $this->db->select('DATE_FORMAT(data, "%d/%m/%Y") as data');
        $this->db->select('capa');
        $this->db->from('album');
        $this->db->where('album.id_album', $id_album);
        $query = $this->db->get();
        
        return $query->result_array();
    }
    
    public function getAlbunsNome($nomeAlbum) {
        $this->db->select('album.id_album');
        $this->db->select('album.titulo');
        $this->db->select('album.local');
        $this->db->select('DATE_FORMAT(album.data, "%d/%m/%Y") as data');
        $this->db->select('album.capa');
        $this->db->from('album');
        $this->db->like('album.titulo', $nomeAlbum);
        $query = $this->db->get();
        
        return $query->result_array();
    }
    
    public function getAlbunsData($dataAlbum) {
        $this->db->select('album.id_album');
        $this->db->select('album.titulo');
        $this->db->select('album.local');
        $this->db->select('DATE_FORMAT(album.data, "%d/%m/%Y") as data');
        $this->db->select('album.capa');
        $this->db->from('album');
        $this->db->where('album.data', $dataAlbum);
        $query = $this->db->get();
        
        return $query->result_array();
    }
    
    public function getAlbunsTag($tagAlbum) {
        $this->db->select('album.id_album');
        $this->db->select('album.titulo');
        $this->db->select('album.local');
        $this->db->select('DATE_FORMAT(album.data, "%d/%m/%Y") as data');
        $this->db->select('album.capa');
        $this->db->from('album');
        $this->db->join('tagalbum', 'tagalbum.id_album = album.id_album');
        $this->db->where('tagalbum.id_tag', $tagAlbum);
        $query = $this->db->get();
        
        return $query->result_array();
    }
    
    public function getAlbumTitulo($titulo) {
        $this->db->select('id_album');
        $this->db->select('titulo');
        $this->db->select('local');
        $this->db->select('DATE_FORMAT(data, "%d/%m/%Y") as data');
        $this->db->select('capa');
        $this->db->from('album');
        $this->db->like('album.titulo', $titulo);
        $query = $this->db->get();
        
        return $query->result_array();
    }
    
    public function getFotos($id_album) {
        $this->db->select('id_imagem');
        $this->db->select('id_album');
        $this->db->select('titulo');
        $this->db->select('descricao');
        $this->db->select('caminho');
        $this->db->select('creditoFoto');
        $this->db->from('imagem');
        $this->db->where('id_album', $id_album);
        
        $query = $this->db->get();
        
        return $query->result_array();
    }
    
    public function getFoto($id_imagem) {
        $this->db->select('id_imagem');
        $this->db->select('id_album');
        $this->db->select('titulo');
        $this->db->select('descricao');
        $this->db->select('caminho');
        $this->db->select('creditoFoto');
        $this->db->from('imagem');
        $this->db->where('id_imagem', $id_imagem);
        
        $query = $this->db->get();
        
        return $query->result_array();
    }
    
    public function getPessoas() {
        $this->db->select('id_pessoa');
        $this->db->select('id_perfil');
        $this->db->select('id_login');
        $this->db->select('nome');
        $this->db->select('sobrenome');
        $this->db->select('email');
        $this->db->from('pessoa');
        $this->db->where('id_pessoa > 0');
        
        $query = $this->db->get();
        
        return $query->result_array();
    }
    
    public function getPessoa($id_pessoa) {
        $this->db->select('id_pessoa');
        $this->db->select('id_perfil');
        $this->db->select('id_login');
        $this->db->select('nome');
        $this->db->select('sobrenome');
        $this->db->select('email');
        $this->db->from('pessoa');
        $this->db->where('id_pessoa', $id_pessoa);
        
        $query = $this->db->get();
        
        return $query->result_array();
    }
    
    public function getTags() {
        $this->db->select('tag.id_tag');
        $this->db->select('tag.nome');
        $this->db->from('tag');
        $this->db->where('tag.id_tag > 0');
        
        $query = $this->db->get();
        
        return $query->result_array();
    }
    
    public function getTag($id_tag) {
        $this->db->select('tag.id_tag');
        $this->db->select('tag.nome');
        $this->db->from('tag');
        $this->db->where('tag.id_tag', $id_tag);
        
        $query = $this->db->get();
        
        return $query->result_array();
    }
    
    public function getTagPorAlbum($id_album) {
        $this->db->select('tag.id_tag');
        $this->db->select('tag.nome');
        $this->db->select('tagalbum.id_album');
        $this->db->from('tag');
        $this->db->join('tagalbum', 'tagalbum.id_tag = tag.id_tag');
        $this->db->where('tagalbum.id_album', $id_album);
        
        $query = $this->db->get();
        
        return $query->result_array();
    }
    
    public function getTagAlbuns() {
        $this->db->select('tagalbum.id_tagAlbum');
        $this->db->select('tagalbum.id_album');
        $this->db->select('tagalbum.id_tag');
        $this->db->from('tagalbum');
        $this->db->where('tagalbum.id_tagAlbum > 0');
        
        $query = $this->db->get();
        
        return $query->result_array();
    }
    
    public function getTagAlbum($id_tagAlbum) {
        $this->db->select('tagalbum.id_tagAlbum');
        $this->db->select('tagalbum.id_album');
        $this->db->select('tagalbum.id_tag');
        $this->db->from('tagalbum');
        $this->db->where('tagalbum.id_tagAlbum', $id_tagAlbum);
        
        $query = $this->db->get();
        
        return $query->result_array();
    }
    
    public function getPessoaLogin($id_login) {
        $this->db->select('pessoa.id_pessoa');
        $this->db->select('pessoa.id_perfil');
        $this->db->select('pessoa.nome');
        $this->db->select('pessoa.sobrenome');
        $this->db->select('pessoa.email');
        $this->db->from('pessoa');
        $this->db->join('login', 'pessoa.id_login = login.id_login', 'inner');
        $this->db->where('pessoa.id_login', $id_login);
        $query = $this->db->get();
        
        return $query->result_array();
    }
    
    public function verificaLogin($inputUser, $inputSenha){
        
		$this->db->from('login');
		$this->db->where('login.usuario', $inputUser);
		$this->db->where('login.senha', $inputSenha);
		$usuario = $this->db->get();

		if($usuario->num_rows() > 0){
			$user = $usuario->result_array();
			return $user[0];
		}else{
			return false;
		}
	}
    
/*               */
/*    Inserts    */
/*               */

    public function setAlbum($titulo, $local, $data, $capa) {
        $data = array(
            'titulo' => $titulo,
            'local' => $local,
            'data' => $data,
            'capa' => $capa
        );

        if ( $this->db->insert('album', $data) ) {
            return true;
        } else {
            return false;
        }
    }
    
    public function setTagAlbum($id_album, $id_tag) {
        $data = array (
            'id_album' => $id_album,
            'id_tag' => $id_tag
        );
        
        if ( $this->db->insert('tagalbum', $data) ) {
            return true;
        } else {
            return false;
        }
    }
    
    public function setTag($nome) {
        $data = array('nome' => $nome);
        
        if ( $this->db->insert('tag', $data) ) {
            return true;
        } else {
            return false;
        }
    }
    
    public function setFotos($id_album, $caminho) {
        $data = array(
            'id_album' => $id_album,
            'caminho' => $caminho
        );
        
        if ( $this->db->insert('imagem', $data) ) {
            return true;
        } else {
            return false;
        }
    }
    
}