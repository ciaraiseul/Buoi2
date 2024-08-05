//
//  Student.swift
//  Buoi2
//
//  Created by Phạm Trường Giang on 04/08/2024.
//

import Foundation

class SinhVien {
    var id: String
    var ten: String
    var gioiTinh: String
    var tuoi: Int
    var diemToan: Double
    var diemVan: Double
    var diemAnh: Double
    var diemTrungBinh: Double {
        (diemToan + diemVan + diemAnh) / 3
    }
    var hocLuc: String {
        return xepLoaiHocLuc(diemTrungBinh: diemTrungBinh)
    }

    init(id: String, ten: String, gioiTinh: String, tuoi: Int, diemToan: Double, diemVan: Double, diemAnh: Double) {
        self.id = id
        self.ten = ten
        self.gioiTinh = gioiTinh
        self.tuoi = tuoi
        self.diemToan = diemToan
        self.diemVan = diemVan
        self.diemAnh = diemAnh
    }
    
    func hienThiThongTin() {
        print("ID: \(id), Tên: \(ten), Giới tính: \(gioiTinh), Tuổi: \(tuoi), Điểm Toán: \(diemToan), Điểm Văn: \(diemVan), Điểm Anh: \(diemAnh), Điểm trung bình: \(diemTrungBinh), Học lực: \(hocLuc)")
    }
    
    private func xepLoaiHocLuc(diemTrungBinh: Double) -> String {
        switch diemTrungBinh {
        case 9.0...10:
            return "Xuất Xắc"
        case 8.0..<9.0:
            return "Giỏi"
        case 6.0..<8.0:
            return "Khá"
        case 4.0..<6.0:
            return "Trung Bình"
        default:
            return "Yếu"
        }
    }
}
