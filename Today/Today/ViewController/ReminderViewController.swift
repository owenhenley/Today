//
//  ReminderViewController.swift
//  Today
//
//  Created by Owen Henley on 16/03/2023.
//

import UIKit

class ReminderViewController: UICollectionViewController {
    var reminder: Reminder

    init(reminder: Reminder) {
        self.reminder = reminder
        var listConfiguration = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
        listConfiguration.showsSeparators = false
        let listLayout = UICollectionViewCompositionalLayout.list(using: listConfiguration)
        super.init(collectionViewLayout: listLayout)
    }

    required init?(coder: NSCoder) {
        fatalError("Always initialize ReminderViewController using init(reminder:)")
    }
}