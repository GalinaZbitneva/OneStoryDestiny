//
//  ViewController.swift
//  Destini-iOS13


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = storiesBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        choice1Button.setTitle(storyBrain.stories[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[0].choice2, for: .normal)
        storyLabel.text = storyBrain.stories[0].title
      

    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
       
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.choice1Button.setTitle(self.storyBrain.nextStory.choice1, for: .normal)
            self.choice2Button.setTitle(self.storyBrain.nextStory.choice2, for: .normal)
            self.storyLabel.text = self.storyBrain.nextStory.title
        }
    }
    
    

}

