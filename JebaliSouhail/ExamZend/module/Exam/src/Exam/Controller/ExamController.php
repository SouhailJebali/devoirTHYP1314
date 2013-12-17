<?php
 namespace Exam\Controller;
 
 use Zend\View\Model\JsonModel;
 use Zend\Mvc\Controller\AbstractActionController;
 use Zend\View\Model\ViewModel;
 use Exam\Model\Exam;
 use Exam\Form\ExamForm;


 class ExamController extends AbstractActionController
 {
	 protected $examTable;
     // module/Exam/src/Exam/Controller/ExamController.php:
     public function indexAction()
     {
         return new ViewModel(array(
             'exams' => $this->getExamTable()->fetchAll(),
         ));
     }
	 // ...

	public function addAction()
     {
         $form = new ExamForm();
         $form->get('submit')->setValue('Ajouter une personne');

         $request = $this->getRequest();
         if ($request->isPost()) {
             $exam = new Exam();
             $form->setInputFilter($exam->getInputFilter());
             $form->setData($request->getPost());

             if ($form->isValid()) {
                 $exam->exchangeArray($form->getData());
                 $this->getExamTable()->saveExam($exam);

                 // Redirect to list of exams
                 return $this->redirect()->toRoute('exam');
             }
         }
         return array('form' => $form);
     }
	
     public function editAction()
     {
         $id = (int) $this->params()->fromRoute('id', 0);
         if (!$id) {
             return $this->redirect()->toRoute('exam', array(
                 'action' => 'add'
             ));
         }

         // Get the Exam with the specified id.  An exception is thrown
         // if it cannot be found, in which case go to the index page.
         try {
             $exam = $this->getExamTable()->getExam($id);
         }
         catch (\Exception $ex) {
             return $this->redirect()->toRoute('exam', array(
                 'action' => 'index'
             ));
         }

         $form  = new ExamForm();
         $form->bind($exam);
         $form->get('submit')->setAttribute('value', 'Editer');

         $request = $this->getRequest();
         if ($request->isPost()) {
             $form->setInputFilter($exam->getInputFilter());
             $form->setData($request->getPost());

             if ($form->isValid()) {
                 $this->getExamTable()->saveExam($exam);

                 // Redirect to list of exams
                 return $this->redirect()->toRoute('exam');
             }
         }

         return array(
             'id' => $id,
             'form' => $form,
         );
     }
	 
	 
	 
	 // Add content to the following method:
     public function deleteAction()
     {
         $id = (int) $this->params()->fromRoute('id', 0);
         if (!$id) {
             return $this->redirect()->toRoute('exam');
         }

         $request = $this->getRequest();
         if ($request->isPost()) {
             $del = $request->getPost('del', 'Non');

             if ($del == 'Oui') {
                 $id = (int) $request->getPost('id');
                 $this->getExamTable()->deleteExam($id);
             }

             // Redirect to list of exams
             return $this->redirect()->toRoute('exam');
         }

         return array(
             'id'    => $id,
             'exam' => $this->getExamTable()->getExam($id)
         );
     }
	 
	 public function suppAction(){
		$id = (int) $this->params()->fromRoute('id', 0);
		$this->getExamTable()->deleteExam($id);
		$result = new JsonModel(array(
				'success'=>true,
			));
			return $result;
     } 
	 
	
	 public function modifAction(){
		
		$id = (int) $this->params()->fromRoute('id', 0);

         // Get the Exam with the specified id.  An exception is thrown
         // if it cannot be found, in which case go to the index page.
         try {
             $exam = $this->getExamTable()->getExam($id);
         }
         catch (\Exception $ex) {
             return $this->redirect()->toRoute('exam', array(
                 'action' => 'index'
             ));
         }

		return $result;
     }
	 

	 public function getExamTable()
     {
         if (!$this->examTable) {
             $sm = $this->getServiceLocator();
             $this->examTable = $sm->get('Exam\Model\ExamTable');
         }
         return $this->examTable;
     }

 }
 
?>