<?php

	Class extension_simplemde extends Extension{

		public function getSubscribedDelegates(){
			return array(
				array(
					'page'     => '/backend/',
					'delegate' => 'InitaliseAdminPageHead',
					'callback' => 'appendAssets'
				),
			);
		}

	/*-------------------------------------------------------------------------
		Delegates:
	-------------------------------------------------------------------------*/

    public function appendAssets()
    {
        $callback = Symphony::Engine()->getPageCallback();

        if ($callback['driver'] == 'publish' && $callback['context']['page'] !== 'index') {
            Administration::instance()->Page->addStylesheetToHead(URL . '/extensions/simplemde/assets/simplemde.min.css');
            Administration::instance()->Page->addStylesheetToHead(URL . '/extensions/simplemde/assets/simplemde.publish.css');
            Administration::instance()->Page->addScriptToHead(URL . '/extensions/simplemde/assets/simplemde.min.js');
            Administration::instance()->Page->addScriptToHead(URL . '/extensions/simplemde/assets/simplemde.publish.js');
        }
    }

	}
