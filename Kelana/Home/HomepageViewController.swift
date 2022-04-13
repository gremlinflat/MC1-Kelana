//
//  HomeViewController.swift
//  kelana
//
//  Created by Rizky Maulana on 08/04/22.
//

import UIKit


class HomepageViewController: UIViewController {
    
    
    //MARK: -Properties
    @IBOutlet weak var detailCollectionView: UICollectionView!
    @IBOutlet weak var eventTable: UITableView!
    private var dummy = EventDummy.data
    private var mock = MockData()
    let searchController = UISearchController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        setupCollectionView()
        setupTableView()
        // Do any additional setup after loading the view.
    }
    private func setupTableView(){
        eventTable.dataSource = self
        eventTable.delegate = self
    }
    private func setupCollectionView(){
        detailCollectionView.delegate = self
        detailCollectionView.dataSource = self
        detailCollectionView.collectionViewLayout = createCollectionViewLayout()
    }
}
//MARK: -UITableViewDataSource
extension HomeViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dummy.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let x = dummy[indexPath.row]
        let cell = eventTable.dequeueReusableCell(withIdentifier: "eventCell", for: indexPath) as! EventTableViewCell
        cell.titleLabel.text = x.title
        cell.locationLabel.text = x.location
        cell.locationImage.image = UIImage(named: x.imageName)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 57
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
//MARK: -UICollectionViewDelegate & UICollectionViewDataSource
extension HomeViewController:UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        print(indexPath)
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        mock.destinations.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let x = mock.destinations[indexPath.row]

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recoCell", for: indexPath) as! RecommendedCollectionViewCell
        cell.locationImage.loadFrom(URLAddress: x.imageLocations[0])
        cell.titleLabel.text = x.name
        cell.locationLabel.text = x.location
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 30
        cell.titleLabel.textColor = .white
        cell.locationLabel.textColor = .white
        
        
        return cell
    }
   
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    private func createCollectionViewLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout {
            (section, _) -> NSCollectionLayoutSection? in
            if section == 0 {
                let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension:.fractionalWidth(1), heightDimension: .fractionalHeight(1)
                    )
                )
                item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 8)
                
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .absolute(234), heightDimension: .absolute(234)), subitem: item, count: 1)
                
                group.contentInsets = NSDirectionalEdgeInsets(top: 16, leading: 0, bottom: 0, trailing: 0)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 5)
                return section
            }
            return nil
        }
    }
    
}
extension UIImageView {
    func loadFrom(URLAddress: String) {
        guard let url = URL(string: URLAddress) else {
            return
        }
        
        DispatchQueue.main.async { [weak self] in
            if let imageData = try? Data(contentsOf: url) {
                if let loadedImage = UIImage(data: imageData) {
                        self?.image = loadedImage
                }
            }
        }
    }
}
