//
//  ViewController.swift
//  IronMansScrollviewRescue
//
//  Created by Cenker Soyak on 5.10.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let label4 = UILabel()
    let label5 = UILabel()
    let label6 = UILabel()
    let label7 = UILabel()
    let label8 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
    }
    
    func createUI(){
        view.backgroundColor = .white
        
        let scrollview = UIScrollView()
        view.addSubview(scrollview)
        scrollview.addSubview(label1)
        scrollview.addSubview(label2)
        scrollview.addSubview(label3)
        scrollview.addSubview(label4)
        scrollview.addSubview(label5)
        scrollview.addSubview(label6)
        scrollview.addSubview(label7)
        scrollview.addSubview(label8)
        
        scrollview.delegate = self
        scrollview.backgroundColor = .white
        scrollview.isPagingEnabled = false
        scrollview.translatesAutoresizingMaskIntoConstraints = false
        scrollview.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        scrollview.contentSize = CGSize(width: view.frame.size.width, height: view.frame.size.height * 2)
        
        label1.text = "Tony Stark1"
        label1.font = .systemFont(ofSize: 15)
        label1.textAlignment = .left
        label1.snp.makeConstraints { make in
            make.top.equalTo(scrollview.snp.bottom).offset(100)
            make.left.equalTo(scrollview.snp.left).offset(10)
        }
        label2.text = "Tony Stark2"
        label2.font = .systemFont(ofSize: 15)
        label2.textAlignment = .left
        label2.snp.makeConstraints { make in
            make.top.equalTo(label1.snp.bottom).offset(150)
            make.left.equalTo(scrollview.snp.left).offset(10)
        }
        label3.text = "Tony Stark3"
        label3.font = .systemFont(ofSize: 15)
        label3.textAlignment = .left
        label3.snp.makeConstraints { make in
            make.top.equalTo(label2.snp.bottom).offset(150)
            make.left.equalTo(scrollview.snp.left).offset(10)
        }
        label4.text = "Tony Stark4"
        label4.font = .systemFont(ofSize: 15)
        label4.textAlignment = .left
        label4.snp.makeConstraints { make in
            make.top.equalTo(label3.snp.bottom).offset(150)
            make.left.equalTo(scrollview.snp.left).offset(10)
        }
        label5.text = "Tony Stark5"
        label5.font = .systemFont(ofSize: 15)
        label5.textAlignment = .left
        label5.snp.makeConstraints { make in
            make.top.equalTo(label4.snp.bottom).offset(300)
            make.left.equalTo(scrollview.snp.left).offset(10)
        }
        label6.text = "Tony Stark6"
        label6.font = .systemFont(ofSize: 15)
        label6.textAlignment = .left
        label6.snp.makeConstraints { make in
            make.top.equalTo(label5.snp.bottom).offset(150)
            make.left.equalTo(scrollview.snp.left).offset(10)
        }
        label7.text = "Tony Stark7"
        label7.font = .systemFont(ofSize: 15)
        label7.textAlignment = .left
        label7.snp.makeConstraints { make in
            make.top.equalTo(label6.snp.bottom).offset(150)
            make.left.equalTo(scrollview.snp.left).offset(10)
        }
        label8.text = "Tony Stark8"
        label8.font = .systemFont(ofSize: 15)
        label8.textAlignment = .left
        label8.snp.makeConstraints { make in
            make.top.equalTo(label7.snp.bottom).offset(150)
            make.left.equalTo(scrollview.snp.left).offset(10)
        }
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let bottomEdge = scrollView.contentOffset.y + scrollView.frame.size.height
        if bottomEdge >= scrollView.contentSize.height {
            let alert = UIAlertController(title: "Alert", message: "You have reached the end of the scroll view", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alert, animated: true)
        }
    }
}
