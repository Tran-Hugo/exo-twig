<?php

namespace App\DataFixtures;

use DateTime;
use App\Entity\Stagiaire;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;

class Stagiaires extends Fixture
{
    public function load(ObjectManager $manager)
    {
        // $product = new Product();
        // $manager->persist($product);
        $int= mt_rand(1262055681,1262055681);
        $rd_date = strtotime(date("Y-m-d H:i:s",$int));
        for($i=1; $i<100;$i++){
            $stg = new Stagiaire();
            $stg->setNom("Nom n° $i");
            $stg->setPrenom("Modele n° $i");
            $stg->setTelephone("n° $i");
            $stg->setAdresse("Adresse n° $i");
            $stg->setDiplome(random_int(0,1));
            $stg->setDateNaiss(new DateTime('2000-01-01'));
            $stg->setContrat(random_int(0,1));
            $manager->persist($stg);


        };
        $manager->flush();
    }
}
