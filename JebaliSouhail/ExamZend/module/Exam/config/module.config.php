<?php

return array(
     'controllers' => array(
         'invokables' => array(
             'Exam\Controller\Exam' => 'Exam\Controller\ExamController',
         ),
     ),
	 // The following section is new and should be added to your file
     'router' => array(
         'routes' => array(
             'exam' => array(
                 'type'    => 'segment',
                 'options' => array(
                     'route'    => '/exam[/][:action][/:id]',
                     'constraints' => array(
                         'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                         'id'     => '[0-9]+',
                     ),
                     'defaults' => array(
                         'controller' => 'Exam\Controller\Exam',
                         'action'     => 'index',
                     ),
                 ),
             ),
         ),
     ),
	 
     'view_manager' => array(
         'template_path_stack' => array(
             'exam' => __DIR__ . '/../view',
         ),
		 'strategies' => array (
			'ViewJsonStrategy'
		),
     ),
 );

?>