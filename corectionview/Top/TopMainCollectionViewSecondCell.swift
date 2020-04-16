//
//  TopMainCollectionViewSecondCell.swift
//  corectionview
//
//  Created by ASW-研修４ on 2020/04/15.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
protocol TopMainCollectionViewSecondCellDelegate: NSObjectProtocol{
}
extension TopMainCollectionViewSecondCellDelegate {
}
// MARK: - Property
class TopMainCollectionViewSecondCell: BaseCollectionViewCell {
    weak var delegate: TopMainCollectionViewSecondCellDelegate? = nil
    @IBOutlet weak var topMainCollectionViewSecondCell: UIView!
    @IBOutlet weak var roundSecondView: UIView!
}
// MARK: - Life cycle
extension TopMainCollectionViewSecondCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
         topMainCollectionViewSecondCell.layer.cornerRadius = 10
        roundSecondView.layer.cornerRadius = 10
    }
}
// MARK: - Protocol
extension TopMainCollectionViewSecondCell {
}
// MARK: - method
extension TopMainCollectionViewSecondCell {
    func setLayout() {
        topMainCollectionViewSecondCell.layer.cornerRadius = 10
        roundSecondView.layer.cornerRadius = 10
    }
}
