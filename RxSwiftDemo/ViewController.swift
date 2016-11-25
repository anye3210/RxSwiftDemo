//
//  ViewController.swift
//  RxSwiftDemo
//
//  Created by wpsd on 2016/11/25.
//  Copyright © 2016年 wpsd. All rights reserved.
//

import UIKit
import RxSwift
import RxDataSources

class ViewController: UIViewController {
    
    let tableView = UITableView(frame: UIScreen.main.bounds, style: UITableViewStyle.plain)
    let cellIdentifier = "\(AYCell.self)"
    let viewModel = AYViewModel()
    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        tableView.register(AYCell.self, forCellReuseIdentifier: cellIdentifier)
        
        let dataSource = RxTableViewSectionedReloadDataSource<SectionModel<String, AYCell>>()
        
        dataSource.configureCell = {
            _, tableView, indexPath, user in
            let cell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier, for: indexPath)
            cell.tag = indexPath.row
            return cell
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

