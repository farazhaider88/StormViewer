//
//  DetailViewController.swift
//  StormVIewer
//
//  Created by Faraz Haider on 29/07/2020.
//  Copyright © 2020 Faraz Haider. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var selectedImage: String?
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never
        
        if let image = selectedImage{
            imageView.image = UIImage(named: image)
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
