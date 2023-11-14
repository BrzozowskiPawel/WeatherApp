//
//  HomeViewController.swift
//  WeatherApp
//
//  Created by Paweł Brzozowski on 14/11/2023.
//

import UIKit

class HomeViewController: UIViewController {
    private let weatherSummaryStack = UIStackView()
    private let emojiLabel = UILabel()
    private let degreesLabel = UILabel()
    private let descriptionLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        weatherSummaryStack.axis = .vertical
        weatherSummaryStack.alignment = .center
        weatherSummaryStack.spacing = 8
        view.backgroundColor = .white

        emojiLabel.text = "⛅️"
        degreesLabel.text = "17 °C"
        descriptionLabel.text = "Partly Cloudy"

        weatherSummaryStack.addArrangedSubview(emojiLabel)
        weatherSummaryStack.addArrangedSubview(degreesLabel)
        weatherSummaryStack.addArrangedSubview(descriptionLabel)

        view.addSubview(weatherSummaryStack)
        weatherSummaryStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            weatherSummaryStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            weatherSummaryStack.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        navigationItem.title = "Warsaw Poland"
        let barButtonImage = UIImage(systemName: "line.3.horizontal")
        let listButton = UIBarButtonItem(image: barButtonImage, style: .plain, target: self, action: #selector(listButtonTapped))
        navigationItem.rightBarButtonItem = listButton
    }

    @objc func listButtonTapped() {
        print("Add button tapped!")
    }
}
