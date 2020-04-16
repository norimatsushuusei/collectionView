//
//  TopMainCollectionViewCell.swift
//  corectionview
//
//  Created by ASW-研修４ on 2020/04/15.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
protocol TopMainCollectionViewCellDelegate: NSObjectProtocol{
}
extension TopMainCollectionViewCellDelegate {
}
// MARK: - Property
class TopMainCollectionViewCell: BaseCollectionViewCell {
    weak var delegate: TopMainCollectionViewCellDelegate? = nil
    @IBOutlet weak var topMainCollectionViewCell: UIView!
    @IBOutlet weak var roundView: UIView!
   
}
// MARK: - Life cycle
extension TopMainCollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
        topMainCollectionViewCell.layer.cornerRadius = 10
       roundView.layer.cornerRadius = 10
    }
}
// MARK: - Protocol
extension TopMainCollectionViewCell {
}
// MARK: - method
extension TopMainCollectionViewCell {
    func setLayout(){
    topMainCollectionViewCell.layer.cornerRadius = 10
    roundView.layer.cornerRadius = 10
    }
}
