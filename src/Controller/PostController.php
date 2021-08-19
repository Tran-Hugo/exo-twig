<?php

namespace App\Controller;

use App\Model\Driver;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PostController extends AbstractController
{
    #[Route('/post', name: 'post')]
    public function index(): Response
    {
        $driver = new Driver();
        $tabPosts = $driver->findAll();
        
        return $this->render('post/index.html.twig', [
            'posts' => $tabPosts,
        ]);
    }

    #[Route('/post/{id}', methods:'GET', name:'post_item')]
    public function onePost($id): Response
    {
        $driver = new Driver();
        $tabPosts = $driver->findOne($id);
        // $selectedPost = array_splice($tabPosts,$id-1,1);
        // dd($selectedPost);
        return $this->render('post/onepost.html.twig', [
            'post' => $tabPosts,
        ]);
    }

}
