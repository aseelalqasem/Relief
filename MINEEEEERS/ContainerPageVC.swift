//
//  ContainerPageVC.swift
//  UIpagrcontroller
//
//  Created by buthaina albassam on 05/08/1443 AH.
//

import UIKit

class ContainerPageVC: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    var imageView: UIImageView?
var pageControl = UIPageControl()
    var arrContainers = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
        let vc1 = self.storyboard?
            .instantiateViewController(withIdentifier: "page1")
        let vc2 = self.storyboard?
            .instantiateViewController(withIdentifier: "page2")
        let vc3 = self.storyboard?
            .instantiateViewController(withIdentifier: "page3")
        
        arrContainers.append(vc1!)
        arrContainers.append(vc2!)
        arrContainers.append(vc3!)
        delegate = self
        dataSource = self
        
        
        if let firstVC = arrContainers.first {
            setViewControllers([firstVC], direction: .forward , animated: true, completion: nil)
        }
        
    }
    

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = arrContainers.firstIndex(of: viewController) else { return nil }
        
        let previousIndex = currentIndex - 1
        guard previousIndex >= 0 else {
        return nil
    }
        
        return arrContainers[previousIndex]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = arrContainers.firstIndex(of: viewController) else {
            return nil
        }
        let afterIndex = currentIndex + 1
        guard afterIndex < arrContainers.count else {
            return nil
        }
        addPageControl()
        return arrContainers[afterIndex]
    }
//    func presentationCount(for pageViewController: UIPageViewController) -> Int {
//        return arrContainers.count
//
//    }
//    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
//        return 0
//    }
    func addPageControl(){
        pageControl = UIPageControl(frame: CGRect (x: 0,y : UIScreen.main.bounds.maxY - 75,width: UIScreen.main.bounds.width, height: 50))
        self.pageControl.numberOfPages = arrContainers.count
        self.pageControl.currentPage = 0
        self.pageControl.tintColor = UIColor.white
        self.pageControl.pageIndicatorTintColor = UIColor.white
//        self.pageControl.pageIndicatorTintColor = white
        self.pageControl.currentPageIndicatorTintColor = UIColor.white
        self.view.addSubview(pageControl)
        
    }
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool,
previousViewControllers: [UIViewController], transitionCompleted completed: Bool)
    {
        let pageContentViewController = pageViewController.viewControllers![0]
        self.pageControl.currentPage = arrContainers.firstIndex(of: pageContentViewController)!
    }
}
