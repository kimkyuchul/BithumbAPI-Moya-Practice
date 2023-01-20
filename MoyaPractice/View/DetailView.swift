//
//  DetailView.swift
//  MoyaPractice
//
//  Created by 김규철 on 2022/11/25.
//

import UIKit
import SnapKit

class DetailView: UIView {
    
    let opening_priceTitle : UILabel = {
        let label = UILabel()
        label.text = "opening_price"
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let opening_price : UILabel = {
        let label = UILabel()
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let opening_priceStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 4
        stackView.distribution = .fill
        return stackView
    }()
    
    let closing_priceTitle : UILabel = {
        let label = UILabel()
        label.text = "closing_price"
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    var closing_price : UILabel = {
        let label = UILabel()
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let closing_priceStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.distribution = .fill
        return stackView
    }()
    
    let min_priceTitle : UILabel = {
        let label = UILabel()
        label.text = "min_price"
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let min_price : UILabel = {
        let label = UILabel()
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let min_priceStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.distribution = .fill
        return stackView
    }()
    
    let max_priceTitle : UILabel = {
        let label = UILabel()
        label.text = "max_price"
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let max_price : UILabel = {
        let label = UILabel()
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let max_priceStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.distribution = .fill
        return stackView
    }()
    
    let acc_trade_valueTitle : UILabel = {
        let label = UILabel()
        label.text = "acc_trade_value"
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let acc_trade_value : UILabel = {
        let label = UILabel()
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let acc_trade_valueStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.distribution = .fill
        return stackView
    }()
    
    let prev_closing_priceTitle : UILabel = {
        let label = UILabel()
        label.text = "prev_closing_price"
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let prev_closing_price : UILabel = {
        let label = UILabel()
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let prev_closing_priceStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.distribution = .fill
        return stackView
    }()
    
    let units_traded_24HTitle : UILabel = {
        let label = UILabel()
        label.text = "units_traded_24H"
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let units_traded_24H : UILabel = {
        let label = UILabel()
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let units_traded_24HStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.distribution = .fill
        return stackView
    }()
    
    let acc_trade_value_24HTitle : UILabel = {
        let label = UILabel()
        label.text = "acc_trade_value_24H"
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let acc_trade_value_24H : UILabel = {
        let label = UILabel()
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let acc_trade_value_24HStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.distribution = .fill
        return stackView
    }()
    
    let fluctate_24HTitle : UILabel = {
        let label = UILabel()
        label.text = "fluctate_24H"
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let fluctate_24H : UILabel = {
        let label = UILabel()
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let fluctate_24HStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.distribution = .fill
        return stackView
    }()
    
    let fluctate_rate_24HTitle : UILabel = {
        let label = UILabel()
        label.text = "fluctate_rate_24H"
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let fluctate_rate_24H : UILabel = {
        let label = UILabel()
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let fluctate_rate_24HStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.distribution = .fill
        return stackView
    }()
    
    let dateTitle : UILabel = {
        let label = UILabel()
        label.text = "date"
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let date : UILabel = {
        let label = UILabel()
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.black
        return label
    }()
    
    let dateStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.distribution = .fill
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setViewHierarchies()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setViewHierarchies() {
        opening_priceStackView.addArrangedSubviews([opening_priceTitle, opening_price])
        closing_priceStackView.addArrangedSubviews([closing_priceTitle, closing_price])
        min_priceStackView.addArrangedSubviews([min_priceTitle, min_price])
        max_priceStackView.addArrangedSubviews([max_priceTitle, max_price])
        acc_trade_valueStackView.addArrangedSubviews([acc_trade_valueTitle, acc_trade_value])
        prev_closing_priceStackView.addArrangedSubviews([prev_closing_priceTitle, prev_closing_price])
        units_traded_24HStackView.addArrangedSubviews([units_traded_24HTitle, units_traded_24H])
        acc_trade_value_24HStackView.addArrangedSubviews([acc_trade_value_24HTitle, acc_trade_value_24H])
        fluctate_24HStackView.addArrangedSubviews([fluctate_24HTitle, fluctate_24H])
        fluctate_rate_24HStackView.addArrangedSubviews([fluctate_rate_24HTitle, fluctate_rate_24H])
        dateStackView.addArrangedSubviews([dateTitle, date])
        
        addSubview(opening_priceStackView)
        addSubview(closing_priceStackView)
        addSubview(min_priceStackView)
        addSubview(max_priceStackView)
        addSubview(acc_trade_valueStackView)
        addSubview(prev_closing_priceStackView)
        addSubview(units_traded_24HStackView)
        addSubview(acc_trade_value_24HStackView)
        addSubview(fluctate_24HStackView)
        addSubview(fluctate_rate_24HStackView)
        addSubview(dateStackView)
    }
    
    func setConstraints() {
        opening_priceStackView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(5)
            make.leading.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(10)
            make.height.equalTo(30)
        }
        closing_priceStackView.snp.makeConstraints { make in
            make.top.equalTo(opening_priceStackView.snp.bottom).offset(5)
            make.leading.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(10)
            make.height.equalTo(30)
        }
        min_priceStackView.snp.makeConstraints { make in
            make.top.equalTo(closing_priceStackView.snp.bottom).offset(5)
            make.leading.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(10)
            make.height.equalTo(30)
        }
        max_priceStackView.snp.makeConstraints { make in
            make.top.equalTo(min_priceStackView.snp.bottom).offset(5)
            make.leading.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(10)
            make.height.equalTo(30)
        }
        acc_trade_valueStackView.snp.makeConstraints { make in
            make.top.equalTo(max_priceStackView.snp.bottom).offset(5)
            make.leading.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(10)
            make.height.equalTo(30)
        }
        prev_closing_priceStackView.snp.makeConstraints { make in
            make.top.equalTo(acc_trade_valueStackView.snp.bottom).offset(5)
            make.leading.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(10)
            make.height.equalTo(30)
        }
        units_traded_24HStackView.snp.makeConstraints { make in
            make.top.equalTo(prev_closing_priceStackView.snp.bottom).offset(5)
            make.leading.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(10)
            make.height.equalTo(30)
        }
        acc_trade_value_24HStackView.snp.makeConstraints { make in
            make.top.equalTo(units_traded_24HStackView.snp.bottom).offset(5)
            make.leading.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(10)
            make.height.equalTo(30)
        }
        fluctate_24HStackView.snp.makeConstraints { make in
            make.top.equalTo(acc_trade_value_24HStackView.snp.bottom).offset(5)
            make.leading.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(10)
            make.height.equalTo(30)
        }
        fluctate_rate_24HStackView.snp.makeConstraints { make in
            make.top.equalTo(fluctate_24HStackView.snp.bottom).offset(5)
            make.leading.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(10)
            make.height.equalTo(30)
        }
        dateStackView.snp.makeConstraints { make in
            make.top.equalTo(fluctate_rate_24HStackView.snp.bottom).offset(5)
            make.leading.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(10)
            make.height.equalTo(30)
        }
    }
}
