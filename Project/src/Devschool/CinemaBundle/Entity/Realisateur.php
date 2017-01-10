<?php

namespace Devschool\CinemaBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Realisateur
 *
 * @ORM\Table(name="realisateur")
 * @ORM\Entity(repositoryClass="Devschool\CinemaBundle\Repository\RealisateurRepository")
 */
class Realisateur
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
     * @ORM\Column(name="nom", type="string", length=255)
     */
    private $nom;

    /**
     * @var string
     *
     * @ORM\Column(name="bio", type="text")
     */
    private $bio;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="date_naissance", type="date")
     */
    private $dateNaissance;
    /**
     * @ORM\OneToMany(targetEntity="Film", mappedBy="realisateur")
     */
    private $films;

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
     * Set nom
     *
     * @param string $nom
     *
     * @return Realisateur
     */
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get nom
     *
     * @return string
     */
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * Set bio
     *
     * @param string $bio
     *
     * @return Realisateur
     */
    public function setBio($bio)
    {
        $this->bio = $bio;

        return $this;
    }

    /**
     * Get bio
     *
     * @return string
     */
    public function getBio()
    {
        return $this->bio;
    }

    /**
     * Set dateNaissance
     *
     * @param \DateTime $dateNaissance
     *
     * @return Realisateur
     */
    public function setDateNaissance($dateNaissance)
    {
        $this->dateNaissance = $dateNaissance;

        return $this;
    }

    /**
     * Get dateNaissance
     *
     * @return \DateTime
     */
    public function getDateNaissance()
    {
        return $this->dateNaissance;
    }
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->films = new \Doctrine\Common\Collections\ArrayCollection();
    }
    public function __toString() {
        return $this->nom;
    }
    /**
     * Add film
     *
     * @param \Devschool\CinemaBundle\Entity\Film $film
     *
     * @return Realisateur
     */
    public function addFilm(\Devschool\CinemaBundle\Entity\Film $film)
    {
        $this->films[] = $film;

        return $this;
    }

    /**
     * Remove film
     *
     * @param \Devschool\CinemaBundle\Entity\Film $film
     */
    public function removeFilm(\Devschool\CinemaBundle\Entity\Film $film)
    {
        $this->films->removeElement($film);
    }

    /**
     * Get films
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getFilms()
    {
        return $this->films;
    }
}
