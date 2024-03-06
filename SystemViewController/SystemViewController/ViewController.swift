//
//  ViewController.swift
//  SystemViewController
//
//  Created by user2 on 29/01/24.
//

import UIKit
import SafariServices

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBAction func SharedButtonTapper(_ sender: Any) {
        guard let image  = ImageView.image else{return}
        let activityController  = UIActivityViewController(activityItems:[image], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = sender as! UIView
        present(activityController, animated:true, completion: nil)
    }
    
    
    @IBAction func safariButtonTapped(_ sender: UIButton) {
        if let url  = URL(string: "https://www.apple.com"){
            let safariViewController = SFSafariViewController(url: url)
            present(safariViewController, animated: true, completion: nil)
            
    }
    }
    
    
    @IBAction func CameraButtontapped(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        let alertController=UIAlertController(title: "Choose Image Source", message: nil, preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title : "cancel", style: .cancel, handler: nil)
        let cameraAction = UIAlertAction(title: "Camera", style: .default, handler: {action in print("User selected Camera action")
        })
        let photoLibraryAction = UIAlertAction(title:"Photo library", style:.default, handler:{action in print("User selected photo library action")})
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let photoLibraryAction = UIAlertAction(title: "Photo library", style: .default, handler:{action in self.present(imagePicker, animated: true)})
            alertController.addAction(photoLibraryAction)
        }
        
        
        
        
        alertController.addAction(cancelAction)
        alertController.addAction(cameraAction)
        alertController.addAction(photoLibraryAction)
        
        alertController.popoverPresentationController?.sourceView = sender; present(alertController, animated: true)
                }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else {return}
        ImageView.image = selectedImage
        dismiss(animated:true, completion: nil)
    }
    
                }
