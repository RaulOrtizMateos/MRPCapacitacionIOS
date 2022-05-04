//
//  ListaQuizzesViewController.swift
//  MRPCapacitacionIOS
//
//  Created by Raul Ortiz Mateos on 04/05/22.
//

import UIKit

class ListaQuizzesViewController: UIViewController {

    @IBOutlet weak var tabla: UITableView!
    // arreglo con los cursos
    private let arrQuizzes = ["Redes VLAN 1","Redes VLAN 2","Redes VLAN 3","Redes VLAN 4","Redes VLAN 5","Redes VLAN 6"]
    private let materia = "Business Intelligence"
    private let arrPreguntas = ["5","7","11","4","12","10"]
    private let arrProfesores = ["Raúl Ortiz","ALberto Morales", "Juan de la Barrera","Guillermo Morales","Antonino Gaucho", "Pipita Higuain"]
    private let arrDificultad = ["Fácil","Difícil","Medio","Fácil","Difícil","Medio","Fácil","Difícil","Medio"]
    private let arrPremium = ["  -  VIP","","  -  VIP","","  -  VIP","  -  VIP","","","  -  VIP"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! QuizzDescriptionViewController
        // renglon que selecciono el usuario
        let indice = (tabla.indexPathForSelectedRow?.row)!
        vc.nombreQuizz = arrQuizzes[indice]
        vc.nombreMateria = materia
        vc.nombreProfesor = "Prof. " + arrProfesores[indice]
        vc.numeroDePreguntas = arrPreguntas[indice] + " preguntas"
        vc.dificultad = arrDificultad[indice]
    }

}

extension ListaQuizzesViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrQuizzes.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaQuizzes", for: indexPath)
        
        // texto principal
        celda.textLabel?.text = arrQuizzes[indexPath.row] + arrPremium[indexPath.row]
        //texto secundario
        celda.detailTextLabel?.text = arrDificultad[indexPath.row]
        return celda
    }
}
