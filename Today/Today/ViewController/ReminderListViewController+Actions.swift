//
//  ReminderListViewController+Actions.swift
//  Today
//
//  Created by Owen Henley on 14/03/2023.
//

import Foundation

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(withId: id)
    }
}
