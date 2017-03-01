//
//  NormalViewController.swift
//  UICollecion View en IOS
//
//  Created by alumno on 2/28/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class NormalViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

        var items = Array<Item>()
    var elegido:Int!
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0...7{
            let item = Item()
            item.nombre = "item \(i)"
            item.precio = Double(i) * 100.0
            item.imagen = UIImage(named: "image_\(i)")
            items.append(item)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Celda", for: indexPath) as! ItemCell
        
        cell.nombre.text = items[indexPath.row].nombre
        cell.precio.text = "S/. " + String(items[indexPath.row].precio)
        cell.imgItem.image = items[indexPath.row].imagen
        
        cell.layer.borderWidth = 1
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        elegido = indexPath.row
        self.performSegue(withIdentifier: "siguientevista", sender: items[elegido])
        print(elegido)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nuevavista:SegundaVistaViewController = segue.destination as! SegundaVistaViewController
        nuevavista.parametro = sender as! Item
    
    }

}
