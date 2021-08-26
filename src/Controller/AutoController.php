<?php

namespace App\Controller;

use App\Entity\Auto;
use App\Form\AutoType;
use App\Form\ContactType;
use App\Service\AutoService;
use Doctrine\ORM\EntityManager;
use Symfony\Component\Mime\Email;
use App\Repository\AutoRepository;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Component\Filesystem\Filesystem;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\MoneyType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AutoController extends AbstractController
{   
    private $session;
    public function __construct(SessionInterface $session){
        $this->session=$session;
    }
    #[Route('/auto', name: 'auto')]
    public function index(PaginatorInterface $paginator,Request $request): Response
    {
        // dd($request->get('search'));
        $repo = $this->getDoctrine()->getRepository(Auto::class);
        $autosData = $repo->findAll();
        $cars = $repo->findBy(['id'=>206]);
        $this->session->set('cars',$cars);
        $autosPagination = $paginator->paginate(
            $autosData,
            $request->query->getInt('page',1)
            );
        // dd($autos);
        return $this->render('auto/index.html.twig', [
            'autos' => $autosPagination,
            'cars' => $cars
        ]);
    }

    #[Route('/cars-exp', name: 'cars_exp')]
    public function expensiveAutos(AutoRepository $repo){
        $carsExp = $repo->findAllGreaterThanPrice2(90000);
        dd($carsExp);
    }

    #[Route('/result', name: 'search_result')]
    public function search(AutoRepository $repo,Request $request,PaginatorInterface $paginator){
        $slug=$request->get('search');
        $carsSearched = $repo->findSearchedCar($slug);
        // dd($carsSearched);
        $autosPagination = $paginator->paginate(
            $carsSearched,
            $request->query->getInt('page',1)
            );
        return $this->render('auto/result.html.twig',[
            'autos'=>$autosPagination
        ]);
    }


    #[Route('/auto/{id}', methods:'GET', name: 'auto_item')]
    // public function getAuto($id, AutoRepository $repo)
    // {   
    //     // $repo = $this->getDoctrine()->getRepository(Auto::class);
    //      $auto = $repo->find($id);
    //     // dd($auto);
    //     return $this->render('auto/detail.html.twig', [
    //         'auto' => $auto,
    //     ]);
    // }
    public function getAuto(Auto $car)
    {   
        return $this->render('auto/detail.html.twig', [
            'auto' => $car,
        ]);
    }

    #[Route('/new', name: 'auto_new')]
    public function create(Request $request){

        if($request->request) {
            // dd($request->get("submit"));
            $em = $this->getDoctrine()->getManager();
        

            $auto = new Auto();
            $auto->setMarque($request->get('marque'));
            $auto->setModele($request->get('modele'));
            $auto->setPuissance($request->get('puissance'));
            $auto->setPrix($request->get('prix'));
            $auto->setPays($request->get('pays'));
            $auto->setImage($request->get('image'));
            
            $em->persist($auto);
            $em->flush();
            return $this->redirectToRoute("auto");
     }
        
        
        return $this->render('auto/add.html.twig');
    }
    #[Route('/add', name: 'add_auto')]
    public function addForm(Request $request,EntityManagerInterface $em,AutoService $autoService){
        $auto = new Auto();
        $form_auto = $this->createFormBuilder($auto)
                          ->add('marque', TextType::class)
                          ->add('modele',TextType::class,[
                              'label'=>'Modèle',
                          ])
                          ->add('prix',MoneyType::class)
                          ->add('puissance')
                          ->add('image',FileType::class)
                          ->add('pays')
                          ->add('Soumettre',SubmitType::class)
                          
                          ->getForm();
        $form_auto->handleRequest($request);
        if($form_auto->isSubmitted() && $form_auto->isValid()){
            // dd($auto);
            // $file = $form_auto->get('image')->getData();
            // // dd($file);
            // $fileName = time().'.'.$file->guessExtension();

            // $file->move(
            //     $this->getParameter('images_directory'),
            //     $fileName
            // );
            $imageDestination=$this->getParameter('images_directory');
            $fileName=$autoService->upload($form_auto,$imageDestination);
            $auto->setImage($fileName);
            $em->persist($auto);
            $em->flush();
            $this->addFlash('success','Voiture ajoutée avec succès');
            return $this->redirectToRoute('auto');
        }
        

        return $this->render("auto/add2.html.twig",[
            'form_car' => $form_auto->createView()
        ]);
    }

    #[Route('/edit/{id}', name: 'auto_edit')]
    public function update($id, Request $request){

        $em = $this->getDoctrine()->getManager();

        $auto = $em->getRepository(Auto::class)->find($id);
        $form_edit=$this->createForm(AutoType::class,$auto);
        $oldImage=$auto->getImage();
        // dd($oldImage);
        if(!$auto){
            throw $this->createNotFoundException(
                'aucune voiture ne correspond à l\'id :'.$id
            );
        }
        
        $form_edit->handleRequest($request);

        if($form_edit->isSubmitted() && $form_edit->isValid()) {
            
            $fileSystem = new Filesystem();
            $file = $form_edit->get('image')->getData();
           
            
            
            if($file){
                $fileName = time().'.'.$file->guessExtension();


            $file->move(
                $this->getParameter('images_directory'),
                $fileName
            );
                if(file_exists('imgs/'.$oldImage)){
                    $fileSystem->remove('imgs/'.$oldImage);
                    
                }
                $auto->setImage($fileName);
                

            }
            
            $em->flush();
            $this->addFlash('success','Voiture modifiée avec succès');

            return $this->redirectToRoute("auto_item",['id'=>$auto->getId()]);
        }
        
        return $this->render("auto/edit.html.twig",[
            'form_edit'=>$form_edit->createView(),
            'auto'=>$auto
        ]);
   
    }
    
    #[Route('/delete/{id}', name: 'auto_delete')]
    public function delete($id){

        $fileSystem = new Filesystem();
        
        $em = $this->getDoctrine()->getManager();

        $auto = $em->getRepository(Auto::class)->find($id);
        
        if(!$auto){
            throw $this->createNotFoundException(
                'aucune voiture ne correspond à l\'id :'.$id
            );
        }
        if(file_exists('imgs/'.$auto->getImage())){
            // dd($auto);
            $fileSystem->remove('imgs/'.$auto->getImage());

        }
        $em->remove($auto);
        $em->flush();
        $this->addFlash('success','Voiture supprimée avec succès');

        return $this->redirectToRoute("auto");
    }

    #[Route('/email-contact', name: 'email-contact')]
    public function sendEmail(MailerInterface $mailer): Response
    {
        $email = (new Email())
            ->from('hugo.tran77@gmail.com')
            ->to('hugo.tran77@gmail.com')
            //->cc('cc@example.com')
            //->bcc('bcc@example.com')
            //->replyTo('fabien@example.com')
            //->priority(Email::PRIORITY_HIGH)
            ->subject('Time for Symfony Mailer!')
            ->text('Sending emails is fun again!')
            ->html('<p>See Twig integration for better HTML integration!</p>');

        $mailer->send($email);

        // ...
        return new Response("Email envoyé");
    }

    #[Route('/send-mail', name: 'form_contact')]
    public function sendMail(Request $request, MailerInterface $mailer){
        $form_contact = $this->createForm(ContactType::class);
        $form_contact->handleRequest($request);
        if($form_contact->isSubmitted() && $form_contact->isValid()){
            $contact = $form_contact->getData();
            // dd($contact);

            $email = (new TemplatedEmail())
                    ->from($contact['email'])
                    ->to('hugo.tran77@gmail.com')
                    ->subject($contact['subject'])
                    ->htmlTemplate('emails/message.html.twig')
                    ->context([
                        'contact'=>$contact
                    ]);
                    $mailer->send($email);
                    return $this->redirectToRoute('confirm_email');
        }
        return $this->render('auto/contact.html.twig',[
            'formContact'=>$form_contact->createView()
        ]);

    }
    
    #[Route('/confirm-email', name: 'confirm_email')]
    public function confirmation(){
        return $this->render('emais/confirmation.html.twig');
    }
}
