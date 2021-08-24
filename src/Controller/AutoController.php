<?php

namespace App\Controller;

use App\Entity\Auto;
use App\Form\AutoType;
use App\Repository\AutoRepository;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\MoneyType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

class AutoController extends AbstractController
{
    #[Route('/auto', name: 'auto')]
    public function index(PaginatorInterface $paginator,Request $request): Response
    {
        $repo = $this->getDoctrine()->getRepository(Auto::class);
        $autosData = $repo->findAll();
        $autosPagination = $paginator->paginate(
            $autosData,
            $request->query->getInt('page',1)
            );
        // dd($autos);
        return $this->render('auto/index.html.twig', [
            'autos' => $autosPagination,
        ]);
    }
    #[Route('/auto/{id}', methods:'GET', name: 'auto_item')]
    // public function getAuto($id, AutoRepository $repo)
    // {   
    //     // $repo = $this->getDoctrine()->getRepository(Auto::class);
    //      $auto = $repo->find($id);
    //     // dd($auto);
    //     return $this->render('auto/detail.html.twig', [
    //         'auto' => $auto,
    //     ]);
    // }
    public function getAuto(Auto $car)
    {   
        return $this->render('auto/detail.html.twig', [
            'auto' => $car,
        ]);
    }

    #[Route('/new', name: 'auto_new')]
    public function create(Request $request){

        if($request->request) {
            // dd($request->get("submit"));
            $em = $this->getDoctrine()->getManager();
        

            $auto = new Auto();
            $auto->setMarque($request->get('marque'));
            $auto->setModele($request->get('modele'));
            $auto->setPuissance($request->get('puissance'));
            $auto->setPrix($request->get('prix'));
            $auto->setPays($request->get('pays'));
            $auto->setImage($request->get('image'));
            
            $em->persist($auto);
            $em->flush();
            return $this->redirectToRoute("auto");
     }
        
        
        return $this->render('auto/add.html.twig');
    }
    #[Route('/add', name: 'add_auto')]
    public function addForm(Request $request,EntityManagerInterface $em){
        $auto = new Auto();
        $form_auto = $this->createFormBuilder($auto)
                          ->add('marque', TextType::class)
                          ->add('modele',TextType::class,[
                              'label'=>'Modèle',
                          ])
                          ->add('prix',MoneyType::class)
                          ->add('puissance')
                          ->add('image')
                          ->add('pays')
                          ->add('Soumettre',SubmitType::class)
                          
                          ->getForm();
        $form_auto->handleRequest($request);
        if($form_auto->isSubmitted() && $form_auto->isValid()){
            // dd($auto);
            $em->persist($auto);
            $em->flush();
            return $this->redirectToRoute('auto');
        }
        return $this->render("auto/add2.html.twig",[
            'form_car' => $form_auto->createView()
        ]);
    }

    #[Route('/edit/{id}', name: 'auto_edit')]
    public function update($id, Request $request){

        $em = $this->getDoctrine()->getManager();

        $auto = $em->getRepository(Auto::class)->find($id);
        $form_edit=$this->createForm(AutoType::class,$auto);

        if(!$auto){
            throw $this->createNotFoundException(
                'aucune voiture ne correspond à l\'id :'.$id
            );
        }
        $form_edit->handleRequest($request);
        if($form_edit->isSubmitted() && $form_edit->isValid()) {
            $em->flush();
            return $this->redirectToRoute("auto_item",['id'=>$auto->getId()]);
        }
        // $auto->setMarque('Peugeot');
        // $em->flush();
        // return $this->redirectToRoute("auto_item",['id'=>$auto->getId()]);
        return $this->render("auto/edit.html.twig",['form_edit'=>$form_edit->createView()]);
   
    }
    
    #[Route('/delete/{id}', name: 'auto_delete')]
    public function delete($id){

        $em = $this->getDoctrine()->getManager();

        $auto = $em->getRepository(Auto::class)->find($id);
        
        if(!$auto){
            throw $this->createNotFoundException(
                'aucune voiture ne correspond à l\'id :'.$id
            );
        }
        $em->remove($auto);
        $em->flush();
        return $this->redirectToRoute("auto");
    }
}
