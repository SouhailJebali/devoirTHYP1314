<?php
 namespace Exam;

 // Add these import statements:
 use Exam\Model\Exam;
 use Exam\Model\ExamTable;
 use Zend\Db\ResultSet\ResultSet;
 use Zend\Db\TableGateway\TableGateway;

 
 class Module
 {
	// getAutoloaderConfig() and getConfig() methods here
     public function getAutoloaderConfig()
     {
         return array(
             'Zend\Loader\ClassMapAutoloader' => array(
                 __DIR__ . '/autoload_classmap.php',
             ),
             'Zend\Loader\StandardAutoloader' => array(
                 'namespaces' => array(
                     __NAMESPACE__ => __DIR__ . '/src/' . __NAMESPACE__,
                 ),
             ),
         );
     }

     public function getConfig()
     {
         return include __DIR__ . '/config/module.config.php';
     }

     
     // Add this method:
     public function getServiceConfig()
     {
         return array(
             'factories' => array(
                 'Exam\Model\ExamTable' =>  function($sm) {
                     $tableGateway = $sm->get('ExamTableGateway');
                     $table = new ExamTable($tableGateway);
                     return $table;
                 },
             'ExamTableGateway' => function ($sm) {
                     $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                     $resultSetPrototype = new ResultSet();
                     $resultSetPrototype->setArrayObjectPrototype(new Exam());
                     return new TableGateway('notes', $dbAdapter, null, $resultSetPrototype);
                 },
             ),
         );
     }
 }
 

 ?>