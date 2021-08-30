<?php

namespace App\Form;

use App\Entity\Auto;
use App\Entity\Category;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\FileType;

class AutoType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('marque')
            ->add('modele')
            ->add('puissance')
            ->add('prix')
            ->add('pays')
            ->add('image',FileType::class,array('data_class' => null,'required'   => false))
            ->add('category',EntityType::class,[
                "label"=>"Catégorie",
                "class"=>Category::class,
                'placeholder' => 'Choisissez une catégorie',
                "choice_label"=>"name"
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Auto::class,
        ]);
    }
}
