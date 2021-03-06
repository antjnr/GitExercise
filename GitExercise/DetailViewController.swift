//
//  DetailViewController.swift
//  GitExercise
//
//  Created by Kate Lanyon on 15/04/2015.
//  Copyright (c) 2015 Kate Lanyon. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: StudentProtocol? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: StudentProtocol = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.message
                label.numberOfLines = 0
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

