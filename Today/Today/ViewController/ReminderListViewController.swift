//
//  ReminderListViewController.swift
//  Today
//
//  Created by Owen Henley on 08/03/2023.
//

import UIKit

class ReminderListViewController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let listLayout = listLayout()
        collectionView.collectionViewLayout = listLayout
    }

    private func listLayout() -> UICollectionViewCompositionalLayout {
        var listConfiguration = UICollectionLayoutListConfiguration(appearance: .grouped)
        listConfiguration.showsSeparators = false
        listConfiguration.backgroundColor = .clear
        return UICollectionViewCompositionalLayout.list(using: listConfiguration)
    }
}
