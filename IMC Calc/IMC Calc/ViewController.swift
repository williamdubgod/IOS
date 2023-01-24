//
//  ViewController.swift
//  IMC Calc
//
//  Created by William Vulcano on 10/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfPeso: UITextField!
    @IBOutlet weak var tfAltura: UITextField!
    @IBOutlet weak var lbResultado: UILabel!
    @IBOutlet weak var ivResultado: UIImageView!
    @IBOutlet weak var viResultado: UIView!
    
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculo(_ sender: Any) {
        if let peso = Double(tfPeso.text!), let altura = Double(tfAltura.text!) {
            imc = peso / (altura * altura)
            showResults()
        }
    }
    
    func showResults() {
        var result: String = ""
        var image: String = ""
        switch imc {
            case 0..<16:
                result = "Magreza"
                image = "magreza"
            case 16..<18.5:
                result = "Abaixo do peso"
                image = "abaixo"
            case 18.5..<25:
                result = "Peso ideal"
                image = "ideal"
            case 25..<30:
                result = "Sobrepeso"
                image = "sobre"
            default:
                result = "Obesidade"
                image = "obesidade"
        }
        lbResultado.text = "\(Int(imc)): \(result)"
        ivResultado.image = UIImage(named: image)
        viResultado.isHidden = false
    }
}

