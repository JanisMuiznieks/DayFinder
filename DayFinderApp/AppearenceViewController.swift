//
//  AppearenceViewController.swift
//  DayFinderApp
//
//  Created by janis.muiznieks on 02/02/2021.
//

import UIKit

class AppearenceViewController: UIViewController {

   
   
    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelText()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func openSettingsButtonTap(_ sender: Any) {
        openSettings()
    }
    
    @IBAction func closeButtonTap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func setLabelText(){
            var text = "Unable to specify UI Style"
        if self.traitCollection.userInterfaceStyle == .dark {
            text = "Dark Mode is On \n Go to settings if you would like \nto change to Light Mode"
        } else {
            text = "Light Mode is On \n Go to settings if you would like \nto change to Dark Mode"
        }
        textLabel.text = text
    }
    
    func openSettings() {
        guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        
        if UIApplication.shared.canOpenURL(settingsURL) {
            UIApplication.shared.open(settingsURL, options: [:]) { (success) in
                print("open:", success)
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}//end

extension AppearenceViewController {
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()        
    }
}
