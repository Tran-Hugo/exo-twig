<?php

namespace App\DataFixtures;

use App\Entity\Auto;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class Autos extends Fixture
{
    public function load(ObjectManager $manager)
    {
        // $product = new Product();
        // $manager->persist($product);
        $pays = ["France","Allemagne","Italie","USA","Angleterre"];
        for($i=1; $i<100;$i++){
            $auto = new Auto();
            $auto->setMarque("Marque n° $i");
            $auto->setModele("Modele n° $i");
            $auto->setPrix(mt_rand(5000,100000));
            $auto->setMarque("Marque n° $i");
            $auto->setImage("https://via.placeholder.com/150");
            $auto->setPuissance(mt_rand(100,1000));
            $auto->setPays(array_rand($pays,1));
            $manager->persist($auto);


        };

        $manager->flush();
    }
}
