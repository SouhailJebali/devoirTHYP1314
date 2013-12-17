<?php
namespace Exam\Model;

use Zend\Db\TableGateway\TableGateway;

 class ExamTable
 {
     protected $tableGateway;

     public function __construct(TableGateway $tableGateway)
     {
         $this->tableGateway = $tableGateway;
     }

     public function fetchAll()
     {
         $resultSet = $this->tableGateway->select();
         return $resultSet;
     }

     public function getExam($id)
     {
         $id  = (int) $id;
         $rowset = $this->tableGateway->select(array('id' => $id));
         $row = $rowset->current();
         if (!$row) {
             throw new \Exception("Could not find row $id");
         }
         return $row;
     }

     public function saveExam(Exam $exam)
     {
         $data = array(
             'prenom' => $exam->prenom,
             'nom'  => $exam->nom,
			 'note'  => $exam->note,
			 'exercices'  => $exam->exercices,
         );

         $id = (int) $exam->id;
         if ($id == 0) {
             $this->tableGateway->insert($data);
         } else {
             if ($this->getExam($id)) {
                 $this->tableGateway->update($data, array('id' => $id));
             } else {
                 throw new \Exception('Exam id does not exist');
             }
         }
     }

     public function deleteExam($id)
     {
         $this->tableGateway->delete(array('id' => (int) $id));
     }
 }
 
?>