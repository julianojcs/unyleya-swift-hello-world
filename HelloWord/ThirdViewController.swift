//
//  ThirdViewController.swift
//  HelloWord
//
//  Created by Juliano Costa Silva on 27/07/22.
//

import UIKit

class ThirdViewController: UIViewController {

    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var labelName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("O texto do Label era \(labelName.text!)")
        labelName.text = "Seja bem vindo!!"
//        labelName.textColor = UIColor.orange
//        labelName.textColor = .orange
//        labelName.textColor = #colorLiteral(red: 0.6763845304, green: 0.7215648293, blue: 0.3066736996, alpha: 1)
        labelName.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
    }


    // Quando o sender é definido como Any, o @IBAction pode ser associado a qualquer componente (Any). Quando definimos como UIButton, apenas componentes do tipo UIButton (botões) podem ser associados ao @IBAction
    // Uma função @IBAction pode ser associado a mais de um componente. Para associa-lo a outros conponentes, basta clicar no ícone de círculo na margem esquerda e arrastar e soltar em cima do componente a ser associado. No entanto, facilita associar com o componente a ser manipulado
//    @IBAction func register(_ sender: Any) {
    @IBAction func register(_ sender: UIButton) {
        labelName.text = textFieldName.text!.isEmpty ? "Por favor, entre com seu nome" : "\(textFieldName.text!)"
//        if textFieldName.text!.isEmpty {
//            labelName.text = "Por favor, entre com seu nome"
//        } else {
//            labelName.text = "\(textFieldName.text!)"
//        }
    }
    
    @IBAction func goToRoot(_ sender: Any) {
        if navigationController == nil {
            print("No navigation Controller. Programmatically close modal controller swift")
            dismiss(animated: true, completion: nil)
        } else {
            // popViewController -> Close the viewControler
            navigationController?.popToRootViewController(animated: false)
        }
    }
    
    
}
