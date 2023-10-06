//
//  ProfileViewController.swift
//  Navigation
//
//  Created by gleb on 04/10/2023.
//

import UIKit

class ProfileViewController: UIViewController {

    // MARK: - DATA
    
    fileprivate lazy var data = PostModel.make()

//    var userService: UserService
//    var login: String?
    
    // MARK: - SUBVIEWS
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView.init(
            frame: .zero,
            style: .grouped
        )

        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private lazy var signOutButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "rectangle.portrait.and.arrow.right"), for: .normal)
        button.addTarget(self, action: #selector(didTapSignOut), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private enum CellReuseID: String {
        case base = "BaseTableView_ReuseID"
        case photos = "PhotosTableView_ReuseID"
    }
    
    private enum HeaderFooterReuseID: String {
        case base = "TableSectionFooterHeaderView_ReuseID"
    }
    
    // MARK: - USER SERVICE INIT
    
//    init(userService: UserService, login: String) {
//        self.userService = userService
//        self.login = login
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    // MARK: - LIFECYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupSubview()
        setupConstraints()
        tuneTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    // MARK: - PRIVATE METHODS
    
    private func setupView() {
        view.backgroundColor = .systemGray6
    }
    
    private func setupSubview() {
        view.addSubview(tableView)
        view.addSubview(signOutButton)
    }
    
    private func setupConstraints() {
        
        let safeAreaGuide = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: safeAreaGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: safeAreaGuide.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: signOutButton.bottomAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaGuide.bottomAnchor),
            
            signOutButton.heightAnchor.constraint(equalToConstant: 25),
            signOutButton.widthAnchor.constraint(equalToConstant: 25),
            signOutButton.trailingAnchor.constraint(equalTo: safeAreaGuide.trailingAnchor, constant: -16),
            signOutButton.topAnchor.constraint(equalTo: safeAreaGuide.topAnchor, constant: 16)
        ])
    }
    
    private func tuneTableView() {
        tableView.rowHeight = UITableView.automaticDimension
        tableView.backgroundColor = .white
        tableView.register(
            PostTableViewCell.self,
            forCellReuseIdentifier: CellReuseID.base.rawValue)
        
        tableView.register(
            PhotosTableViewCell.self,
            forCellReuseIdentifier: CellReuseID.photos.rawValue)
        
        tableView.register(
            ProfileTableHeaderView.self,
            forHeaderFooterViewReuseIdentifier: HeaderFooterReuseID.base.rawValue
        )
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    public func dismissSelf() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func didTapSignOut() {
        let keychain = KeychainService.shared.keychain
        keychain["isSignedIn"] = "false"
        
        navigationController?.popViewController(animated: true)
    }
}

// MARK: - EXTENSIONS

extension ProfileViewController: UITableViewDelegate {
    
    func tableView(
        _ tableView: UITableView,
        heightForHeaderInSection section: Int
    ) -> CGFloat {
        if section == 0 {
            return 250
        } else {
            return 0
        }
    }
    
    func tableView(
        _ tableView: UITableView,
        viewForHeaderInSection section: Int
    ) -> UIView? {
        if section == 0 {
            guard let headerView = tableView.dequeueReusableHeaderFooterView(
                withIdentifier: HeaderFooterReuseID.base.rawValue
            ) as? ProfileTableHeaderView else {
                fatalError("could not dequeueReusableCell")
            }
            return headerView
        } else {
            let emptyHeader = UIView()
            return emptyHeader
        }
    }
    
    func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        if indexPath.section == 0 {
            let nextViewController = PhotosViewController()
            navigationController?.navigationBar.isHidden = false
            navigationController?.pushViewController(
                nextViewController,
                animated: true
            )
        }
    }
}

extension ProfileViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        if section == 0 {
            return 1
        } else {
            return data.count
        }
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: CellReuseID.photos.rawValue,
                for: indexPath
            ) as? PhotosTableViewCell else {
                fatalError("could not dequeueReusableCell")
            }
            return cell
        }
        
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: CellReuseID.base.rawValue,
            for: indexPath)
                as? PostTableViewCell else {
            fatalError("could not dequeueReusableCell")
        }
        
        let data = data[indexPath.row]
        cell.setup(with: data)
        
        return cell
    }
}
