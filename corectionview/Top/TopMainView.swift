//
//  TopMainView.swift
//  corectionview
//
//  Created by ASW-研修４ on 2020/04/15.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
protocol TopMainViewDelegate: NSObjectProtocol{
    func didSelectRowAt(indexPath: IndexPath)
}
extension TopMainViewDelegate {
}
// MARK: - Property
class TopMainView: BaseView {
    weak var delegate: TopMainViewDelegate? = nil
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
}
// MARK: - Life cycle
extension TopMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setDelegate()
        
        collectionViewFlowLayout.estimatedItemSize = CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        
        loadCollectionViewCellFromXib(collectionView: collectionView, cellName: "TopMainCollectionViewCell")
        loadCollectionViewCellFromXib(collectionView: collectionView, cellName: "TopMainCollectionViewSecondCell")
    }
}
// MARK: - Protocol
extension TopMainView :UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopMainCollectionViewCell", for: indexPath)as?TopMainCollectionViewCell else {return UICollectionViewCell()}
        
        guard let secondCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopMainCollectionViewSecondCell", for: indexPath)as? TopMainCollectionViewSecondCell else {return UICollectionViewCell()}
        switch indexPath.row {
        case 0:
            return cell
        case 1:
            return secondCell
        default:
            return cell
        }
        
    }
    
}

extension TopMainView :UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath:IndexPath) {
        if let delegate = delegate {delegate.didSelectRowAt(indexPath: indexPath)}
    }
}
// MARK: - method
extension TopMainView {
    func setDelegate() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}
