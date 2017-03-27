<?php

	if (!isset($_GET['page']) || $_GET['page'] == "")
	{
		$page = "accueil";
	}
	else
	{
		if (!file_exists("contenu/" . $_GET['page'] . ".php"))
		{
			$page = "404";
		}
		else
		{
			$page = $_GET['page'];
		}
	}

	require 'includes/header.php';
	
	require "contenu/" . $page . ".php";
	
	require 'includes/footer.php';

?>
