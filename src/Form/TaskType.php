<?php
namespace App\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\FileType;

class TaskType extends AbstractType{
	
	public function buildForm(FormBuilderInterface $builder, array $options){
		$builder->add('title', TextType::class, array(
			'label' => 'Titulo'
		))
		->add('content', TextareaType::class, array(
			'label' => 'Contenido'
		))
		->add('topic', ChoiceType::class, array(
			'label' => 'Tema',
			'choices' => array(
				'Programacion' => 'Bigdata,IA,Programacion',
				'Educacion' => 'Ciencia,Matematicas,Quimica',
				
			)
		))
		->add('words', TextType::class, array(
			'label' => 'Palabras escritas'
		#))
		#->add('image', FileType::class,array(
		#	 'label" => "Imagen:',
		#		'attr' =>array('class' => 'form-control')
		))

		->add('submit', SubmitType::class, array(
			'label' => 'Guardar'
		
		));
	}
	
}