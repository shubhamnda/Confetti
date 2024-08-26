import UIKit
import SAConfettiView
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
        // Create a UIButton
        
        let celebrationButton = UIButton(type: .system)
        celebrationButton.setTitle("Celebrate!", for: .normal)
        celebrationButton.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        celebrationButton.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
        celebrationButton.addTarget(self, action: #selector(startCelebration), for: .touchUpInside)
        view.addSubview(celebrationButton)
       
       
    }
   @objc func startCelebration()
    {
        let confettiView = SAConfettiView(frame: self.view.bounds)
       
        confettiView.type = .Confetti
        
        confettiView.startConfetti()
        view.addSubview(confettiView)
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            confettiView.stopConfetti()
              }
        
        
        
    }
}
