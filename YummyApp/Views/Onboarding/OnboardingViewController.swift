//
//  OnboardingViewController.swift
//  YummyApp
//
//  Created by DA MAC M1 157 on 2023/06/13.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [OnboardingSlide] = []
    
    var currentPage = 0 {
        didSet {
            if currentPage == slides.count - 1 {
                nextButton.setTitle("Get Started", for: .normal)
            } else {
                nextButton.setTitle("Next", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slides = [
            OnboardingSlide(title: "Delicious DIshes", description: "Come and buy nice meal", image: #imageLiteral(resourceName: "slide3") ),
            OnboardingSlide(title: "Delicious DIshes", description: "Come and buy nice meal", image: #imageLiteral(resourceName: "slide2") ),
            OnboardingSlide(title: "Delicious DIshes", description: "Come and buy nice meal", image: #imageLiteral(resourceName: "slide1") )
        ]
        
    }

    @IBAction func nextBtnClicked(_ sender: UIButton) {
        
        pageControl.currentPage = currentPage
        if currentPage == slides.count-1 {
            guard let controller = storyboard?.instantiateViewController(identifier: "HomeNC") as? UINavigationController else { return }
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle  = .flipHorizontal
            
            present(controller, animated: true, completion: nil)
            
        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
        
    }
}


extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as? OnboardingCollectionViewCell else { return UICollectionViewCell() }
        cell.setup(slides[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x/width)
    }
}
