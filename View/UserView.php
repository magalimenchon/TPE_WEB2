<?php

require_once "./libs/smarty/Smarty.class.php";

class UserView
{

    private $title;


    function __construct()
    {
        $this->title = "Login";
    }

    function ShowLogin($message = "")
    {
        $smarty = new Smarty();
        $smarty->assign('title', $this->title);
        $smarty->assign('message', $message);

        $smarty->display('templates/login.tpl');
    }

    function ShowFlatsLocation()
    {
        header("Location: " . BASE_URL . "showFlats");
    }

    function RenderError($message)
    {
        $smarty = new Smarty();
        $smarty->assign('title', "Error");
        $smarty->assign('message', $message);

        $smarty->display('templates/error.tpl');
    }
}
