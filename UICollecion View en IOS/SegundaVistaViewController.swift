//
//  SegundaVistaViewController.swift
//  UICollecion View en IOS
//
//  Created by alumno on 2/28/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class SegundaVistaViewController: UIViewController {

    @IBOutlet weak var imagenSEgundaVista: UIImageView!
    @IBOutlet weak var nombreSegundaVista: UILabel!
    @IBOutlet weak var descripcionSegundaVista: UILabel!
    var imag:UIImage!
    var nom:String!
    var des:String!
    var parametro:Item!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagenSEgundaVista.image = parametro.imagen
        nombreSegundaVista.text = parametro.nombre
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
