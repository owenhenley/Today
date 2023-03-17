//
//  ReminderViewController+Row.swift
//  Today
//
//  Created by Owen Henley on 17/03/2023.
//

import UIKit

extension ReminderViewController {
    enum Row: Hashable {
        case date
        case notes
        case time
        case title

        private var imageName: String? {
            switch self {
            case .date: return "calendar.circle"
            case .notes: return "square.and.pencil"
            case .time: return "clock"
            default: return nil
            }
        }

        var image: UIImage? {
            guard let imageName = imageName else { return nil }
            let configuration = UIImage.SymbolConfiguration(textStyle: .headline)
            return UIImage(systemName: imageName, withConfiguration: configuration)
        }

        var textStyle: UIFont.TextStyle {
            switch self {
            case .title: return .headline
            default: return .subheadline
            }
        }
    }
}
