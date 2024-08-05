import Foundation

func main() {
    let lopHoc = LopHoc(id: "1", tenLop: "Lớp 12A1", tenGVCN: "Nguyễn Văn A")
    
    while true {
        print("1. Thêm sinh viên")
        print("2. Hiển thị danh sách sinh viên")
        print("3. Xóa sinh viên theo ID")
        print("4. Xóa nhiều sinh viên theo ID")
        print("5. Sắp xếp sinh viên theo điểm trung bình")
        print("6. Tìm kiếm sinh viên theo tên")
        print("7. Cập nhật thông tin sinh viên theo ID")
        print("8. Thoát")
        print("Chọn chức năng: ", terminator: "")
        
        if let choice = readLine(), let choiceInt = Int(choice) {
            switch choiceInt {
            case 1:
                let sinhVien = nhapThongTinSinhVien()
                lopHoc.themSinhVien(sinhVien: sinhVien)
                print("Đã thêm sinh viên thành công!")
            case 2:
                lopHoc.hienThiDanhSachSinhVien()
            case 3:
                print("Nhập ID sinh viên cần xóa: ", terminator: "")
                let id = readLine() ?? ""
                lopHoc.xoaSinhVienTheoID(id: id)
            case 4:
                print("Nhập ID các sinh viên cần xóa (ngăn cách bởi dấu phẩy): ", terminator: "")
                let idsString = readLine() ?? ""
                let ids = idsString.split(separator: ",").map { $0.trimmingCharacters(in: .whitespaces) }
                lopHoc.xoaNhieuSinhVienTheoID(ids: ids)
            case 5:
                lopHoc.sapXepSinhVienTheoDiemTrungBinh()
                print("Danh sách sinh viên đã được sắp xếp theo điểm trung bình.")
            case 6:
                print("Nhập tên sinh viên cần tìm: ", terminator: "")
                let ten = readLine() ?? ""
                lopHoc.timKiemSinhVienTheoTen(ten: ten)
            case 7:
                print("Nhập ID sinh viên cần cập nhật: ", terminator: "")
                let id = readLine() ?? ""
                lopHoc.capNhatThongTinSinhVien(id: id)
            case 8:
                return
            default:
                print("Chọn không hợp lệ, vui lòng chọn lại.")
            }
        }
    }
}

main()
