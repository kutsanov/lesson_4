//
//  CellData.swift
//  Lesson_4
//
//  Created by Vova Kutsanov on 07.03.2020.
//  Copyright © 2020 Vova Kutsanov. All rights reserved.
//

struct CellData {
    let url: String
    let name: String
    let note: String
}

extension CellData {
    static func lstPharmznanie() -> [CellData] {
        return [
            CellData(url: "https://pharmznanie.ru", name: "Фармзнание", note: "Российский проект, направленный на дистанционное обучение фармацевтоф по программеи НМиФО"),
            CellData(url: "https://кэшбэкотаптек.рф", name: "Кэшбэк от аптек", note: "Позволяет получать кэшбэк покупателям аптек"),
            CellData(url: "https://pharmmarket.ru", name: "Фарммаркет", note: "Сервис для взаимодействия аптек и фармпроизводителей"),
            CellData(url: "https://pharma.market", name: "Pharma market", note: "Digital distribution platform for pharmaceutical companies and healthcare retail"),
            CellData(url: "https://pharma.global", name: "PharmaGlobal", note: "B2B e-commerce platform based on the digital distribution model providing the pharmaceutical manufacturers and healthcare retailers an opportunity to interact directly with the help of flexible smart solutions")
        ]
    }
    
    static func lstAutoPoisk() -> [CellData] {
        return [
            CellData(url: "https://auto.vin", name: "AutoVIN", note: "Система поиска запчасти по каталогам"),
            CellData(url: "https://autopoisk.su/ru", name: "Autopoisk", note: "Интернет-презентация проекта")
        ]
    }
    
    static func lstMoreOptom() -> [CellData] {
        return [
            CellData(url: "https://moreoptom.ru", name: "МореОптом", note: "Агрегатор компания рыбной промышленности"),
            CellData(url: "http://katran-nsk.ru", name: "Катран", note: "Сайт компании построенный на движке проекта МореОптом")
        ]
    }
}
