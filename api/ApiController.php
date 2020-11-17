<?php

require_once './model/CommentModel.php';
require_once 'ApiView.php';

class ApiController{
    
    private $model;
    private $view;

    private $data; /* solo para prueba */

    function __construct(){
        $this->model = new CommentModel();
        $this->view = new ApiView();
        $this->data = file_get_contents("php://input"); /* solo para prueba */
    }

    function getData(){ /* solo para prueba */
        return json_decode($this->data); 
    }

    function getComments(){
        $data = $this->model->getComments();
        $this->view->response($data, 200);
    }

    function getCommentsByFlatId($params = null){
        $flatId = $params[':ID'];
        $data = $this->model->getCommentByFlatId($flatId);

        if ($data)
            $this->view->response($data, 200);
        else 
            $this->view->response("Departamento Id: $flatId No Existe!", 404);
        
    }

    function postComment(){
        // $text = $_POST['input_text'];
        // $userId = $_POST['input_user_id'];
        // $flatId = $_POST['input_flat_id'];
        $body = $this->getData();

        // $this->model->postComment($text, $userId, $flatId);

        $comment = $this->model->postComment($body->texto, $body->id_usuario_fk, $body->id_depto_fk);

        if ($comment)
            $this->view->response( $body, 201);
        else
            $this->view->response("El comentario no se pudo crear", 404);
    }

    function deleteComment($params = null){
        $commentId = $params[':ID'];
        $result = $this->model->deleteComment($commentId);

        if($result > 0)
            $this->view->response("Comentario eliminado", 200);
        else
            $this->view->response("Comentario Id: $commentId No Existe!", 404);
    }
   
}