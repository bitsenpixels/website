<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcesubnavigation extends Datasource{

		public $dsParamROOTELEMENT = 'subnavigation';
		public $dsParamORDER = 'desc';
		public $dsParamREDIRECTONEMPTY = 'no';

		public $dsParamFILTERS = array(
				'parent' => '{$current-page} or {$parent-page}',
				'type' => 'sub',
		);

		

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'SubNavigation',
				'author' => array(
					'name' => 'Marco de Vries',
					'website' => 'http://bitsenpixels.nl',
					'email' => 'info@bitsenpixels.nl'),
				'version' => '1.0',
				'release-date' => '2011-04-30T15:30:21+00:00'
			);
		}

		public function getSource(){
			return 'navigation';
		}

		public function allowEditorToParse(){
			return true;
		}

		public function grab(&$param_pool=NULL){
			$result = new XMLElement($this->dsParamROOTELEMENT);

			try{
				include(TOOLKIT . '/data-sources/datasource.navigation.php');
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}

			if($this->_force_empty_result) $result = $this->emptyXMLSet();

			

			return $result;
		}

	}
