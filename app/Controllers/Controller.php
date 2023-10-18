<?php

namespace App\Controllers;

use Exception;
use Smarty;

class Controller{
	
	protected function view(string $path, $data = []) : void
	{
		$viewPath = __DIR__ . '/../../templates/'. str_replace('.', '/', $path) .'.tpl';

		try {
			if (file_exists($viewPath)) {

				$smarty = new Smarty;
		
				foreach ($data as $key => $value) {
					$smarty->assign($key, $value);
				}
		
				

				$smarty->display($viewPath);
				
			} else {
				throw new Exception('Arquivo de visualização não encontrado');
			}
		} catch (Exception $e) {
			// Trate a exceção (erro) aqui
			echo 'Erro 500: ' . $e->getMessage();
		}
	}
	
}