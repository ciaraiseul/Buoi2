class LopHoc {
    var id: String
    var tenLop: String
    var tenGVCN: String
    var danhSachSinhVien: [SinhVien]

    init(id: String, tenLop: String, tenGVCN: String) {
        self.id = id
        self.tenLop = tenLop
        self.tenGVCN = tenGVCN
        self.danhSachSinhVien = []
    }

    func themSinhVien(sinhVien: SinhVien) {
        danhSachSinhVien.append(sinhVien)
    }

    func hienThiDanhSachSinhVien() {
        for sinhVien in danhSachSinhVien {
            sinhVien.hienThiThongTin()
        }
    }

    func xoaSinhVienTheoID(id: String) {
        if let index = danhSachSinhVien.firstIndex(where: { $0.id == id }) {
            danhSachSinhVien.remove(at: index)
            print("Đã xóa sinh viên với ID \(id) thành công!")
        } else {
            print("Không tìm thấy sinh viên với ID \(id).")
        }
    }

    func xoaNhieuSinhVienTheoID(ids: [String]) {
        for id in ids {
            if let index = danhSachSinhVien.firstIndex(where: { $0.id == id }) {
                danhSachSinhVien.remove(at: index)
                print("Đã xóa sinh viên với ID \(id) thành công!")
            } else {
                print("Không tìm thấy sinh viên với ID \(id).")
            }
        }
    }

    func sapXepSinhVienTheoDiemTrungBinh() {
        danhSachSinhVien.sort { $0.diemTrungBinh > $1.diemTrungBinh }
    }

    func timKiemSinhVienTheoTen(ten: String) {
        let ketQua = danhSachSinhVien.filter { $0.ten.lowercased().contains(ten.lowercased()) }
        if ketQua.isEmpty {
            print("Không tìm thấy sinh viên với tên '\(ten)'.")
        } else {
            print("Kết quả tìm kiếm cho tên '\(ten)':")
            for sinhVien in ketQua {
                sinhVien.hienThiThongTin()
            }
        }
    }

    func capNhatThongTinSinhVien(id: String) {
        if let index = danhSachSinhVien.firstIndex(where: { $0.id == id }) {
            print("Nhập tên mới: ", terminator: "")
            danhSachSinhVien[index].ten = readLine() ?? danhSachSinhVien[index].ten
            print("Nhập giới tính mới: ", terminator: "")
            danhSachSinhVien[index].gioiTinh = readLine() ?? danhSachSinhVien[index].gioiTinh
            print("Nhập tuổi mới: ", terminator: "")
            if let tuoi = readLine(), let tuoiInt = Int(tuoi) {
                danhSachSinhVien[index].tuoi = tuoiInt
            }
            print("Nhập điểm Toán mới: ", terminator: "")
            if let diemToan = readLine(), let diemToanDouble = Double(diemToan) {
                danhSachSinhVien[index].diemToan = diemToanDouble
            }
            print("Nhập điểm Văn mới: ", terminator: "")
            if let diemVan = readLine(), let diemVanDouble = Double(diemVan) {
                danhSachSinhVien[index].diemVan = diemVanDouble
            }
            print("Nhập điểm Anh mới: ", terminator: "")
            if let diemAnh = readLine(), let diemAnhDouble = Double(diemAnh) {
                danhSachSinhVien[index].diemAnh = diemAnhDouble
            }
            print("Cập nhật thông tin sinh viên thành công!")
        } else {
            print("Không tìm thấy sinh viên với ID \(id).")
        }
    }
}

func nhapThongTinSinhVien() -> SinhVien {
    print("Nhập ID sinh viên: ", terminator: "")
    let id = readLine() ?? ""
    
    print("Nhập tên sinh viên: ", terminator: "")
    let ten = readLine() ?? ""
    
    print("Nhập giới tính: ", terminator: "")
    let gioiTinh = readLine() ?? ""
    
    print("Nhập tuổi: ", terminator: "")
    let tuoi = Int(readLine() ?? "") ?? 0
    
    print("Nhập điểm Toán: ", terminator: "")
    let diemToan = Double(readLine() ?? "") ?? 0.0
    
    print("Nhập điểm Văn: ", terminator: "")
    let diemVan = Double(readLine() ?? "") ?? 0.0
    
    print("Nhập điểm Anh: ", terminator: "")
    let diemAnh = Double(readLine() ?? "") ?? 0.0
    
    return SinhVien(id: id, ten: ten, gioiTinh: gioiTinh, tuoi: tuoi, diemToan: diemToan, diemVan: diemVan, diemAnh: diemAnh)
}

