<?php

namespace Devschool\CinemaBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="page_accueil")
     */
    public function indexAction()
    {
        return $this->render('DevschoolCinemaBundle:Default:index.html.twig');
    }
    /**
     * @Route("/films", name="page_films")
     */
    public function listFilm()
    {
        $films = $this->getDoctrine()->getRepository('DevschoolCinemaBundle:Film')->findAll();
        $titre_de_la_page = 'Cinéma';

        return $this->render('DevschoolCinemaBundle:Film:list.html.twig', ['films' => $films, 'titre' => $titre_de_la_page]);

    }
    /**
     * @Route("/film/{id}", requirements={"id": "\d+"}, name="page_film")
     */
    public function showFilm($id)
    {
        $film = $this->getDoctrine()->getRepository('DevschoolCinemaBundle:Film')->find($id);

        return $this->render('DevschoolCinemaBundle:Film:show.html.twig', ['film' => $film]);
    }

    /**
     * @Route("/realisateurs", name="page_realisateurs")
     */
    public function listRealisateur()
    {
        $realisateurs = $this->getDoctrine()->getRepository('DevschoolCinemaBundle:Realisateur')->findAll();
        $titre_de_la_page = 'Cinéma';

        return $this->render('DevschoolCinemaBundle:Realisateur:list.html.twig', ['realisateurs' => $realisateurs, 'titre' => $titre_de_la_page]);

    }
    /**
     * @Route("/realisateur/{id}", requirements={"id": "\d+"}, name="page_realisateur")
     */
    public function showRealisateur($id)
    {
        $realisateur = $this->getDoctrine()->getRepository('DevschoolCinemaBundle:Realisateur')->find($id);
        $films = $this->getDoctrine()->getRepository('DevschoolCinemaBundle:Realisateur')->findAll();
        $titre_de_la_page = 'Cinéma';

        return $this->render('DevschoolCinemaBundle:Realisateur:show.html.twig', ['realisateur' => $realisateur, 'films' => $films, 'titre' => $titre_de_la_page]);
    }


}
