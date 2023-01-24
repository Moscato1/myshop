<?php

namespace App\Controller;

use App\Repository\ProduitRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    #[Route('/', name: 'home_Page')]
    public function index(ProduitRepository $produitRepository): Response
    {
        return $this->render('home/index.html.twig',[
            'produits' => $produitRepository->findBy([], ['created_at' => 'DESC', 'id' => 'DESC'], 15)
       
        ]);
    }

}


