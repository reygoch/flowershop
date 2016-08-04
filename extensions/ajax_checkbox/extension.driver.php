<?php
	/*
	Copyight: Deux Huit 2013
	License: MIT, see the LICENCE file
	http://deuxhuithuit.mit-license.org/
	*/

	if(!defined("__IN_SYMPHONY__")) die("<h2>Error</h2><p>You cannot directly access this file</p>");

	/**
	 *
	 * Block user agent Decorator/Extension
	 * @author nicolasbrassard
	 *
	 */
	class extension_ajax_checkbox extends Extension {
		
		/**
		 * Name of the extension
		 * @var string
		 */
		const EXT_NAME = 'Ajax Checkbox';
		
		const SETTING_GROUP = 'ajax-checkbox';

		/**
		 * private variable for holding the errors encountered when saving
		 * @var array
		 */
		protected $errors = array();

		/**
		 *
		 * Symphony utility function that permits to
		 * implement the Observer/Observable pattern.
		 * We register here delegate that will be fired by Symphony
		 */
		public function getSubscribedDelegates(){
			return array(
				array(
					'page' => '/backend/',
					'delegate' => 'InitaliseAdminPageHead',
					'callback' => 'appendToHead'
				)
			); 
		}
		
		
		
		/**
		 *
		 * Appends file references into the head, if needed
		 * @param array $context
		 */
		public function appendToHead(Array $context) {
			// store de callback array locally
			$c = Administration::instance()->getPageCallback();
			
			// publish page
			if($c['driver'] == 'publish'){
				
				//var_dump($context, $c);die;
				
				Administration::instance()->Page->addScriptToHead(
					URL . '/extensions/ajax_checkbox/assets/publish.ajax_checkbox.js',
					time(),
					false
				);
				
				Administration::instance()->Page->addStylesheetToHead(
					URL . '/extensions/ajax_checkbox/assets/publish.ajax_checkbox.css',
					'screen',
					time() + 1,
					false
				);
			}
		}
		
		/**
		 *
		 * Delegate fired when the extension is install
		 */
		public function install() {
			return true;
		}
		
		/**
		 *
		 * Delegate fired when the extension is updated (when version changes)
		 * @param string $previousVersion
		 */
		public function update($previousVersion) {
			return true;
		}

		/**
		 *
		 * Delegate fired when the extension is uninstall
		 * Cleans settings and Database
		 */
		public function uninstall() {
			return true;
		}
		
	}