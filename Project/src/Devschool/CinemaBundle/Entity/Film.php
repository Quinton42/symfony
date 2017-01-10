<?php

namespace Devschool\CinemaBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Film
 *
 * @ORM\Table(name="film")
 * @ORM\Entity(repositoryClass="Devschool\CinemaBundle\Repository\FilmRepository")
 */
class Film
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="titre", type="string", length=255)
     */
    private $titre;

    /**
     * @var string
     *
     * @ORM\Column(name="synopsis", type="text")
     */
    private $synopsis;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="date_sortie", type="date")
     */
    private $dateSortie;

    /**
     * @ORM\ManyToOne(targetEntity="Realisateur", inversedBy="films")
     */
    private $realisateur;

    /**
     * @ORM\ManyToOne(targetEntity="Genre", inversedBy="films")
     */
    private $genre;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set titre
     *
     * @param string $titre
     *
     * @return Film
     */
    public function setTitre($titre)
    {
        $this->titre = $titre;

        return $this;
    }

    /**
     * Get titre
     *
     * @return string
     */
    public function getTitre()
    {
        return $this->titre;
    }

    /**
     * Set synopsis
     *
     * @param string $synopsis
     *
     * @return Film
     */
    public function setSynopsis($synopsis)
    {
        $this->synopsis = $synopsis;

        return $this;
    }

    /**
     * Get synopsis
     *
     * @return string
     */
    public function getSynopsis()
    {
        return $this->synopsis;
    }

    /**
     * Set dateSortie
     *
     * @param \DateTime $dateSortie
     *
     * @return Film
     */
    public function setDateSortie($dateSortie)
    {
        $this->dateSortie = $dateSortie;

        return $this;
    }

    /**
     * Get dateSortie
     *
     * @return \DateTime
     */
    public function getDateSortie()
    {
        return $this->dateSortie;
    }

    /**
     * Set realisateur
     *
     * @param \Devschool\CinemaBundle\Entity\Realisateur $realisateur
     *
     * @return Film
     */
    public function setRealisateur(\Devschool\CinemaBundle\Entity\Realisateur $realisateur = null)
    {
        $this->realisateur = $realisateur;

        return $this;
    }

    /**
     * Get realisateur
     *
     * @return \Devschool\CinemaBundle\Entity\Realisateur
     */
    public function getRealisateur()
    {
        return $this->realisateur;
    }

    /**
     * Set genre
     *
     * @param \Devschool\CinemaBundle\Entity\Genre $genre
     *
     * @return Film
     */
    public function setGenre(\Devschool\CinemaBundle\Entity\Genre $genre = null)
    {
        $this->genre = $genre;

        return $this;
    }

    /**
     * Get genre
     *
     * @return \Devschool\CinemaBundle\Entity\Genre
     */
    public function getGenre()
    {
        return $this->genre;
    }
}
