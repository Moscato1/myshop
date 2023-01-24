<?php

namespace App\Controller;
use App\Entity\Produit;
use App\Form\ProductType;
use App\Form\ReservationType;
use App\Repository\ProduitRepository;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Component\HttpFoundation\Request;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ProduitController extends AbstractController
{
    private $managerRegistry;
    private $productRepository;

    public function __construct(ManagerRegistry $managerRegistry, ProduitRepository $produitRepository)
    {
        $this->managerRegistry = $managerRegistry;
        $this->productRepository = $produitRepository;
    }




    #[Route('/produit', name: 'produit')]
    public function index( ProduitRepository $produitRepository): Response
    {
        return $this->render('produit/index.html.twig', [
            'produits' => $produitRepository->findAll(),
        ]);
    }


    #[Route('/produit/create', name: 'produit_create')]
    public function create(Request $request): Response
    {
        $produit = new Produit();
        $form = $this->createForm(ProductType::class, $produit);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $produit->setCreatedAt(new \DateTimeImmutable());
            $manager = $this->managerRegistry->getManager();
            $manager->persist($produit);
            $manager->flush();

            $this->addFlash('success', 'Le produit a bien été créé');
            return $this->redirectToRoute('home_page');
        }

        return $this->render('produit/form.html.twig', [
            'produitForm' => $form->createView()
        ]);
    }




    #[Route('/produit/{id}', name: 'produit_detail')]
    public function show(Produit $produit,ProduitRepository $produitRepository, int $id, Request $request): Response
    {

       
        $form = $this->createForm(ReservationType::class, $produit);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            
            $manager = $this->managerRegistry->getManager();
            $manager->persist($produit);
            $manager->flush();

            $this->addFlash('success', 'Le produit a bien été réservé');
            return $this->redirectToRoute('home');
        }
        return $this->render('produit/show.html.twig', [
            'produit' => $produitRepository->findOneBy(['id' => $id]),
            'ReservationForm' => $form->createView()
        ]);
    }


}