import sys
from suydientien import Suy_Dien_Tien
from dto.dao import Converter
from dto.disease import Disease
from dto.sympton import Symptom
from dto.user import User

user = User(None,None,None,None)
db = Converter()
db.getTrieuChung()
db.getTapBenh()
db.getSuyDienTien()
trieuChung = db.tapTrieuChung

def introduce_question():
    print("-->Chatbot: Xin chào, tôi là chatbot chuẩn đoán bệnh về xương khớp!")
    print("-->Chatbot: Vui lòng điền một số thông tin cá nhân để tiếp tục!")

    print("-->Chatbot: Hãy nhập tên của bạn")
    user.name = input()
    print(f'-->Người dùng: Tên của tôi là, {user.name}')
    print("-->Chatbot: Hãy nhập tuổi của bạn")
    user.age = input()
    print(f'-->Người dùng: Tôi {user.age} tuổi')
    print("-->Chatbot: Hãy cho tôi biết chiều cao của bạn ( Đơn vị cm)")
    user.height = input()
    print(f'-->Người dùng: Tôi cao {user.height} cm')
    print("-->Chatbot: Hãy cho tôi biết cân nặng của bạn ( Đơn vị kg)")
    user.weight = input()
    print(f'-->Người dùng: Tôi nặng {user.weight} kg')

    print("-->Chatbot: Cảm ơn bạn đã cung cấp đủ thông tin!")

    return user;

def confirm_question():
    NewAllSymLst = []
    print("-->Chatbot: Bạn có đang bị đau ở khớp không ?")
    print("1. Có")
    print("0. Không")
    answer = input()
    if(answer=="0"):
        print("-->Chatbot: Có vẻ bạn không có dấu hiệu đặc trưng của các bệnh về xương khớp")
        print("-->Chatbot: Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi!")
        return False;
    NewAllSymLst.append(trieuChung[0]['id'])
    print(
        f'-->Chatbot: Danh sách mã các triệu chứng bạn đang mắc phải:'
    )
    print([i for i in NewAllSymLst])
    return NewAllSymLst
# def where_question(listSymptom):

if __name__ =="__main__":
    user = introduce_question()
    listTrieuChung = confirm_question()
    