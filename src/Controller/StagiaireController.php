<?php

namespace App\Controller;

use DateTime;
use App\Entity\Stagiaire;
use App\Repository\StagiaireRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class StagiaireController extends AbstractController
{
    #[Route('/stagiaire', name: 'stagiaire')]
    public function index(): Response
    {
        $repo = $this->getDoctrine()->getRepository(Stagiaire::class);
        $stagiaires = $repo->findAll();
        
        return $this->render('stagiaire/index.html.twig', [
            'stagiaires' => $stagiaires,
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
