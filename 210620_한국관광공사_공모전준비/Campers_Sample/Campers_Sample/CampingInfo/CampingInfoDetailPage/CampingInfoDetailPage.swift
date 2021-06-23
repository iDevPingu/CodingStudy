//
//  CampingInfoDetailPage.swift
//  Campers_Sample
//
//  Created by Ick on 2021/06/24.
//

import UIKit

extension CampingInfoDetailPage {
    static func new() -> CampingInfoDetailPage {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CampingInfoDetailPage") as! CampingInfoDetailPage
        return vc
    }
}

class CampingInfoDetailPage: UIViewController {
    static let identifier = "CampingInfoDetailPage"
    
    
    @IBAction func clickClose(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelInfo: UILabel!
    @IBOutlet weak var labelAddress: UILabel!
    @IBOutlet weak var labelPhoneNumber: UILabel!
    @IBOutlet weak var labelURLAddress: UILabel!
    @IBOutlet weak var buttonRegister: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUserInterface()
    }
    
    func setUserInterface() {
        self.labelTitle.text = "가평 푸른숲 캠핑장"
        self.labelInfo.text = "경기도 가평군 설악면 가일리에 위치하는 푸른숲캠핑장은 울창한 잣나무 숲에서 힐링의 시간을 갖으며 행복한 시간을 보낼 수 있는 캠핑장이다. 푸른숲캠핑장은 20미터 이상 크기의 어른 잣나무가 군집을 이룬 숲속에 자리하는데 산비탈을 그대로 이용하여 캠핑장을 조성하였고 사이트틑 잔체가 나무 데크로 바닥 때문에 고생할 일은 없다. 사이트 크기는 4m×5m 30면과 3m×5m 5면을 운영 중이고 성수기에는 5면정도 추가된다. 관리실은 주인집에 있으며 황토방을 같이 운영하여 캠핑외에 또다른 힐링꺼리를 주고 있다. 공용 시설은 대체적으로 꺠끗하고 공용 개수대는 외부 1곳 실내 2곳이 있다."
        self.labelAddress.text = "경기 가평군 설악면 유명산길 61-108"
        self.labelPhoneNumber.text = "031-584-0118"
        self.labelURLAddress.text = "http://www.woodcamp.co.kr/"
        
        self.buttonRegister.layer.cornerRadius = 10
    }
}
