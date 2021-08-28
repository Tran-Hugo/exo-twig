<?php

namespace App\DataFixtures;

use App\Entity\Auto;
use App\Entity\Category;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class Autos extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $categories = [];

        $cat1 = new Category();
        $cat1->setName('Luxe');
        $cat1->setCreatedAt(new \DateTimeImmutable());

        $cat2 = new Category();
        $cat2->setName('Neuve');
        $cat2->setCreatedAt(new \DateTimeImmutable());

        $cat3 = new Category();
        $cat3->setName('Sport');
        $cat3->setCreatedAt(new \DateTimeImmutable());

        array_push($categories, $cat1, $cat2, $cat3);

        $images = ["1629876379.png","1629882976.jpg","1629883351.png"];
        $pays = ["France","Allemagne","Italie","USA","Angleterre"];
        for($i=1; $i<100;$i++){
            $auto = new Auto();
            $auto->setMarque("Marque n° $i");
            $auto->setModele("Modele $i");
            $auto->setPuissance(mt_rand(100,1000));
            $auto->setPrix(mt_rand(5000,100000));
            $auto->setPays(array_rand($pays,1));
            $auto->setImage($images[array_rand($images,1)]);
            $auto->setCategory($categories[array_rand($categories,1)]);
            $manager->persist($categories[array_rand($categories,1)]);
            $manager->persist($auto);


        };

        $manager->flush();
    }
}
