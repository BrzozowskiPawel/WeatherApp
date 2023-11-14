//
//  HomeViewController.swift
//  WeatherApp
//
//  Created by Paweł Brzozowski on 14/11/2023.
//

import UIKit

class HomeViewController: UIViewController {
    private let summaryStack = UIStackView()
    private let emojiLabel = UILabel()
    private let degreesLabel = UILabel()
    private let descriptionLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    private func setup() {
        navigationSetup()
        summaryStackSetup()
    }
    
    private func summaryStackSetup() {
        summaryStack.axis = .vertical
        summaryStack.alignment = .center
        summaryStack.spacing = 8
        view.backgroundColor = .white

        emojiLabel.text = "⛅️"
        degreesLabel.text = "17 °C"
        descriptionLabel.text = "Partly Cloudy"

        summaryStack.addArrangedSubview(emojiLabel)
        summaryStack.addArrangedSubview(degreesLabel)
        summaryStack.addArrangedSubview(descriptionLabel)

        view.addSubview(summaryStack)
        summaryStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            summaryStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            summaryStack.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func navigationSetup() {
        navigationItem.title = "Warsaw Poland"
        let listImage = UIImage(systemName: "line.3.horizontal")
        let listButton = UIBarButtonItem(image: listImage, style: .plain, target: self, action: #selector(listButtonTapped))
        navigationItem.rightBarButtonItem = listButton
        
        let locationImage = UIImage(systemName: "location")
        let locationButton = UIBarButtonItem(image: locationImage, style: .plain, target: self, action: #selector(locationButtonTapped))
        navigationItem.leftBarButtonItem = locationButton
    }

    @objc func listButtonTapped() {
        print("Add button tapped!")
    }
    
    @objc func locationButtonTapped() {
        print("Location button tapped!")
    }
}
