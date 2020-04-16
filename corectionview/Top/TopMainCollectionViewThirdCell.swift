//
//  TopMainCollectionViewThirdCell.swift
//  corectionview
//
//  Created by ASW-研修４ on 2020/04/16.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
protocol TopMainCollectionViewThirdCellDelegate: NSObjectProtocol{
}
extension TopMainCollectionViewThirdCellDelegate {
}
// MARK: - Property
class TopMainCollectionViewThirdCell: BaseCollectionViewCell {
    weak var delegate: TopMainCollectionViewThirdCellDelegate? = nil
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var topMainCollectionViewThirdCell: UIView!
}
// MARK: - Life cycle
extension TopMainCollectionViewThirdCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
    }
}
// MARK: - Protocol
extension TopMainCollectionViewThirdCell {
}
// MARK: - method
extension TopMainCollectionViewThirdCell {
    func setLayout() {
        topMainCollectionViewThirdCell.layer.cornerRadius = 10
        imageView.layer.cornerRadius = 10
    }
}
