
//

import UIKit

public class SlideRightTransitionAnimator: NSObject, UIViewControllerAnimatedTransitioning, UIViewControllerTransitioningDelegate {
    
    public let duration = 1.0
    public var isPresenting = false
    
    public func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
    
    public func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        // Get reference to our fromView, toView and the container view
        guard let fromView = transitionContext.view(forKey: UITransitionContextViewKey.from) else {
            return
        }
        
        guard let toView = transitionContext.view(forKey: UITransitionContextViewKey.to) else {
            return
        }
        
        // Set up the transform we'll use in the animation
        let container = transitionContext.containerView
        
        let offScreenLeft = CGAffineTransform(translationX: -container.frame.width, y: 0)
        
        // Make the toView off screen
        if isPresenting {
            toView.transform = offScreenLeft
        }
        
        // Add both views to the container view
        if isPresenting {
            container.addSubview(fromView)
            container.addSubview(toView)
        } else {
            container.addSubview(toView)
            container.addSubview(fromView)
        }
        
        // Perform the animation
        UIView.animate(withDuration: duration, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: {
            
            if self.isPresenting {
                toView.transform = CGAffineTransform.identity
            } else {
                fromView.transform = offScreenLeft
            }
            
        }, completion: { finished in
            
            transitionContext.completeTransition(true)
            
        })
    }
    
    public func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        isPresenting = true
        return self
    }
    
    public func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        isPresenting = false
        return self
    }
    
}
