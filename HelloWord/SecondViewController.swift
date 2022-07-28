//
//  SecondViewController.swift
//  HelloWord
//
//  Created by Juliano Costa Silva on 26/07/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        print("Tela 2: viewDidLoad")
    }

    @IBAction func close(_ sender: Any) {
        // popViewController -> Close the viewControler
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func next3Programmatically() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let thirdVC = storyboard.instantiateViewController(identifier: "ThirdViewController")
        thirdVC.modalPresentationStyle = .fullScreen
        thirdVC.modalTransitionStyle = .crossDissolve
        
        present(thirdVC, animated: true, completion: nil)
    }
    
    @IBAction func openThirdScreen(_ sender: Any) {
        performSegue(withIdentifier: "thirdSegue", sender:nil)
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        print("Tela 2: viewWillAppear")
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        print("Tela 2: viewDidAppear")
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        print("Tela 2: viewWillDisappear")
//    }
//
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        print("Tela 2: viewDidDisappear")
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
