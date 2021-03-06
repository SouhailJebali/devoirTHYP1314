<?php
namespace Exam\Form;

use Zend\Form\Form;

 class ExamForm extends Form
 {
     public function __construct($name = null)
     {
         // we want to ignore the name passed
         parent::__construct('exam');

         $this->add(array(
             'name' => 'id',
             'type' => 'Hidden',
         ));
         $this->add(array(
             'name' => 'nom',
             'type' => 'Text',
             'options' => array(
                 'label' => 'Nom',
             ),
         ));
         $this->add(array(
             'name' => 'prenom',
             'type' => 'Text',
             'options' => array(
                 'label' => 'Prenom',
             ),
         ));
		 $this->add(array(
             'name' => 'note',
             'type' => 'Text',
             'options' => array(
                 'label' => "Note",
             ),
         ));
		 $this->add(array(
             'name' => 'exercices',
             'type' => 'Text',
             'options' => array(
                 'label' => "Exercices",
             ),
         ));
         $this->add(array(
             'name' => 'submit',
             'type' => 'Submit',
             'attributes' => array(
                 'value' => 'Go',
                 'id' => 'submitbutton',
             ),
         ));
     }
 } 
 ?>