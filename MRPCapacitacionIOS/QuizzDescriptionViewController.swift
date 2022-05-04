//
//  QuizzDescriptionViewController.swift
//  MRPCapacitacionIOS
//
//  Created by Raul Ortiz Mateos on 04/05/22.
//

import UIKit

class QuizzDescriptionViewController: UIViewController {
    
    @IBOutlet weak var labelNombreQuizz: UILabel!
    @IBOutlet weak var labelNombreMateria: UILabel!
    @IBOutlet weak var labelNombreProfesor: UILabel!
    @IBOutlet weak var labelNumeroDePreguntas: UILabel!
    @IBOutlet weak var labelDificultad: UILabel!
    // publica
    
    var nombreQuizz : String = ""
    var nombreMateria : String = ""
    var nombreProfesor : String = ""
    var numeroDePreguntas : String = ""
    var dificultad : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //asignar el nombre a la etiqueta
        
        labelNombreQuizz.text = nombreQuizz
        labelNombreMateria.text = nombreMateria
        labelNombreProfesor.text = nombreProfesor
        labelNumeroDePreguntas.text = numeroDePreguntas
        labelDificultad.text = dificultad
    }
    


}
