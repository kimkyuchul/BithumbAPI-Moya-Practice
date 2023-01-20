//
//  DetailViewController.swift
//  MoyaPractice
//
//  Created by 김규철 on 2022/11/25.
//

import UIKit

class DetailViewController: UIViewController {
    
    let detailView = DetailView()
    
    var orderCurrency = "BTC"
    var paymentCurrency = "KRW"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewHierarchies()
        setConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        getCoinData()
        
    }
    
    func getCoinData() {

        NetworkService.shared.bithumb.getBithumbs(orderCurrency: orderCurrency, paymentCurrency: paymentCurrency) { [weak self] response in
            switch response {
            case .success(let coinData):
                
                guard let data = coinData as? coinResponse.ResponseData else { fatalError() }
                
                print(data.opening_price)
                
                self?.detailView.opening_price.text = data.opening_price
                self?.detailView.closing_price.text = data.closing_price
                self?.detailView.min_price.text = data.min_price
                self?.detailView.max_price.text = data.max_price
                self?.detailView.acc_trade_value.text = data.acc_trade_value
                self?.detailView.prev_closing_price.text = data.prev_closing_price
                self?.detailView.units_traded_24H.text = data.units_traded_24H
                self?.detailView.acc_trade_value_24H.text = data.acc_trade_value_24H
                self?.detailView.fluctate_24H.text = data.fluctate_24H
                self?.detailView.fluctate_rate_24H.text = data.fluctate_rate_24H
                self?.detailView.date.text = data.date
                
            case .requestErr(let message):
                print("requestErr", message)
            case .pathErr:
                print(".pathErr")
            case .serverErr:
                print("serverErr")
            case .networkFail:
                print("networkFail")
                    
            }
        }
    }
    
    func setViewHierarchies() {
        self.view.addSubview(detailView)
    }
    func setConstraints() {
        detailView.snp.makeConstraints { make in
            make.edges.equalTo(self.view.safeAreaLayoutGuide)
        }
    }
    

}
