<?php

namespace App\Controller;

use App\Entity\Auto;
use App\Repository\AutoRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AutoController extends AbstractController
{
    #[Route('/auto', name: 'auto')]
    public function index(): Response
    {
        $repo = $this->getDoctrine()->getRepository(Auto::class);
        $autos = $repo->findAll();
        // dd($autos);
        return $this->render('auto/index.html.twig', [
            'autos' => $autos,
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
    public function create(){

        $em = $this->getDoctrine()->getManager();

        $auto = new Auto();
        $auto->setMarque("Ford");
        $auto->setModele("Mustang");
        $auto->setPuissance(421);
        $auto->setPrix(100000);
        $auto->setPays("U.S.A");
        $auto->setImage("https://via.placeholder.com/150/0000FF/808080 ?ford-Mustang");
        
        $em->persist($auto);
        $em->flush();
        return $this->redirectToRoute("auto");
    }
    #[Route('/edit/{id}', name: 'auto_edit')]
    public function update($id){

        $em = $this->getDoctrine()->getManager();

        $auto = $em->getRepository(Auto::class)->find($id);
        
        if(!$auto){
            throw $this->createNotFoundException(
                'aucune voiture ne correspond à l\'id :'.$id
            );
        }
        $auto->setMarque('Peugeot');
        $em->flush();
        return $this->redirectToRoute("auto_item",['id'=>$auto->getId()]);
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
