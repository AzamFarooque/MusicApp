//
//  SegmentedProgressBar.swift
//  SegmentedProgressBar
//
//  Created by Farooque on 08/10/17.
//  Copyright © 2017 Quintype. All rights reserved.
//

import Foundation
import UIKit

protocol SegmentedProgressBarDelegate: class {
    func segmentedProgressBarChangedIndex(index: Int)
    func segmentedProgressBarFinished()
}

class SegmentedProgressBar: UIView {
    
    weak var delegate: SegmentedProgressBarDelegate?
    var topColor = UIColor.gray {
        didSet {
            self.updateColors()
        }
    }
    var bottomColor = UIColor.gray.withAlphaComponent(0.25) {
        didSet {
            self.updateColors()
        }
    }
    var padding: CGFloat = 2.0
    var isNext: Bool = false {
        didSet {
            if isNext {
                for segment in segments {
                    let layer = segment.topSegmentView.layer
                    let pausedTime = layer.convertTime(CACurrentMediaTime(), from: nil)
                    layer.speed = 5.0
                    layer.timeOffset = pausedTime
                    layer.speed = 1.0
                }
            }
        }
    }
    
    var segments = [Segment]()
    var duration: TimeInterval
    var hasDoneLayout = false
    var currentAnimationIndex = 0
    
    init(numberOfSegments: Int, duration: TimeInterval = 5.0) {
        self.duration = duration
        super.init(frame: CGRect.zero)
        
        for _ in 0..<numberOfSegments {
            let segment = Segment()
           addSubview(segment.bottomSegmentView)
           addSubview(segment.topSegmentView)
           segments.append(segment)
           
        }
        self.updateColors()
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if hasDoneLayout {
            return
        }
        let width = (frame.width - (padding * CGFloat(segments.count - 1))) / CGFloat(segments.count)
        for (index, segment) in segments.enumerated() {
            let segFrame = CGRect(x: CGFloat(index) * (width + padding), y: 0, width: width, height: frame.height)
            segment.bottomSegmentView.frame = segFrame
            segment.topSegmentView.frame = segFrame
            segment.topSegmentView.frame.size.width = 0
            
            let cr = frame.height / 2
            segment.bottomSegmentView.layer.cornerRadius = cr
            segment.topSegmentView.layer.cornerRadius = cr
        }
        hasDoneLayout = true
    }
    
    func startAnimation() {
        layoutSubviews()
        animate()
    }
    
    func animate(animationIndex: Int = 0) {
        let nextSegment = segments[animationIndex]
        currentAnimationIndex = animationIndex
        self.isNext = false
        UIView.animate(withDuration: duration, delay: 0.0, options: .curveLinear, animations: {
            nextSegment.topSegmentView.frame.size.width = nextSegment.bottomSegmentView.frame.width
        }) { (finished) in
            if !finished {
                return
            }
            self.next()
        }
    }
    
     func updateColors() {
        for segment in segments {
            segment.topSegmentView.backgroundColor = topColor
            segment.bottomSegmentView.backgroundColor = bottomColor
        }
    }
    
     func next() {
        let newIndex = self.currentAnimationIndex + 1
        if newIndex < self.segments.count {
            self.delegate?.segmentedProgressBarChangedIndex(index: newIndex)
            self.animate(animationIndex: newIndex)
        } else {
            self.delegate?.segmentedProgressBarFinished()
        }
    }
    
    func skip() {
        let currentSegment = segments[currentAnimationIndex]
        currentSegment.topSegmentView.frame.size.width = currentSegment.bottomSegmentView.frame.width
        currentSegment.topSegmentView.layer.removeAllAnimations()
        self.next()
    }
    
    func rewind() {
        let currentSegment = segments[currentAnimationIndex]
        currentSegment.topSegmentView.layer.removeAllAnimations()
        currentSegment.topSegmentView.frame.size.width = 0
        let newIndex = max(currentAnimationIndex - 1, 0)
        let prevSegment = segments[newIndex]
        prevSegment.topSegmentView.frame.size.width = 0
        self.delegate?.segmentedProgressBarChangedIndex(index: newIndex)
        self.animate(animationIndex: newIndex)
    }
}

   class Segment {
    let bottomSegmentView = UIView()
    let topSegmentView = UIView()
    init() {
    }
}
