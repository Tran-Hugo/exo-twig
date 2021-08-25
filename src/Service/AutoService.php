<?php
namespace App\Service;

class AutoService{

    public function upload($form, $directory)
    {
        $file = $form->get('image')->getData();
            
           $fileName = "";
           if($file){
                $fileName = time().'.'.$file->guessExtension();
                
                $file->move(
                    $directory,
                    $fileName
                );
           }

        return $fileName;
    }
}