<?php

namespace App\Controller;

use DateTime;
use App\Entity\Stagiaire;
use App\Form\StagiaireType;
use App\Repository\StagiaireRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class StagiaireController extends AbstractController
{
    #[Route('/stagiaire', name: 'stagiaire')]
    public function index(PaginatorInterface $paginator,Request $request): Response
    {
        $repo = $this->getDoctrine()->getRepository(Stagiaire::class);
        $stagiaires = $repo->findAll();
        $stgPagination = $paginator->paginate(
            $stagiaires,
            $request->query->getInt('page',1)
            );
        return $this->render('stagiaire/index.html.twig', [
            'stagiaires' => $stgPagination,
        ]);
    }
    #[Route('stagiaire/new', name: 'stagiaire_new')]
    public function create(){

        $em = $this->getDoctrine()->getManager();

        $sta = new Stagiaire();
        $sta->setNom("Tran");
        $sta->setPrenom("Hugo");
        $sta->setTelephone("0123456789");
        $sta->setAdresse("5 rue de la grande place rouge");
        $sta->setDiplome("Bac+5 du chomage");
        $sta->setContrat(true);
        $sta->setPhoto("https://via.placeholder.com/150/0000FF/808080 ?ford-Mustang");
        $sta->setDescription("Developpeur doué");
        $sta->setDateNaiss(new DateTime('2000-01-01'));
        
        $em->persist($sta);
        $em->flush();
        return $this->redirectToRoute("stagiaire");
    }
    #[Route('stagiaire/add', name: 'stagiaire_add')]
    public function add(Request $request){

        $em = $this->getDoctrine()->getManager();
        $stg = new Stagiaire();
        $form_edit=$this->createForm(StagiaireType::class,$stg);
        $form_edit->handleRequest($request);
        
        if($form_edit->isSubmitted() && $form_edit->isValid()) {
            // dd($form_edit);
            $em->persist($stg);
            $em->flush();
            return $this->redirectToRoute("stagiaire");
        }
        return $this->render("stagiaire/add.html.twig",['form_edit'=>$form_edit->createView()]);
    }

    #[Route('/stagiaire/detail/{id}', name: 'stagiaire_item')]
    public function findOne($id, StagiaireRepository $repo): Response
    {
        $repo = $this->getDoctrine()->getRepository(Stagiaire::class);
        $stagiaire = $repo->find($id);
        // dd($stagiaire);
        return $this->render('stagiaire/detail.html.twig', [
            'stagiaire' => $stagiaire,
        ]);
    }
    
    #[Route('/stagiaire/edit/{id}', name: 'stagiaire_edit')]
    public function edit($id): Response
    {
        $em = $this->getDoctrine()->getManager();
        $stagiaire = $em->getRepository(Stagiaire::class)->find($id);
        if(!$stagiaire){
            throw $this->createNotFoundException(
                'aucun stagiaire ne correspond à l\'id :'.$id
            );
        }
        $stagiaire->setNom('Jean Bernard');
        $em->flush();
        return $this->redirectToRoute('stagiaire');
    }

    #[Route('/stagiaire/update/{id}', name: 'stagiaire_update')]
    public function update($id, Request $request): Response
    {
        $em = $this->getDoctrine()->getManager();
        $stagiaire = $em->getRepository(Stagiaire::class)->find($id);
        $form_edit = $this->createForm(StagiaireType::class,$stagiaire);
        if(!$stagiaire){
            throw $this->createNotFoundException(
                'aucun stagiaire ne correspond à l\'id :'.$id
            );
        }
        $form_edit->handleRequest($request);
        if($form_edit->isSubmitted() && $form_edit->isValid()){
            $em->flush();
            return $this->redirectToRoute('stagiaire_item',['id'=>$id]);
        }
        
        return $this->render('stagiaire/edit.html.twig',['form_edit'=>$form_edit->createView()]);
    }

    #[Route('/stagiaire/delete/{id}', name: 'stagiaire_delete')]
    public function delete($id): Response
    {
        $em = $this->getDoctrine()->getManager();
        $stagiaire = $em->getRepository(Stagiaire::class)->find($id);
        if(!$stagiaire){
            throw $this->createNotFoundException(
                'aucun stagiaire ne correspond à l\'id :'.$id
            );
        }
        $em->remove($stagiaire);
        $em->flush();
        return $this->redirectToRoute('stagiaire');
    }
}
