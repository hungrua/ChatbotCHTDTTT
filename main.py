
from suydientien import Suy_Dien_Tien
from suydienlui import Suy_Dien_Lui
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
rule = db.tapSuyDienTien


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

    return user

def confirm_question():
    NewAllSymLst = []
    print("-->Chatbot: Bạn có đang bị đau ở khớp không ?")
    print("1. Có")
    print("0. Không")
    answer = input()
    if(answer=="0"):
        print("-->Chatbot: Có vẻ bạn không có dấu hiệu đặc trưng của các bệnh về xương khớp")
        print("-->Chatbot: Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi!")
        return False
    NewAllSymLst.append(trieuChung[0]['id'])
    print(
        f'-->Chatbot: Danh sách mã các triệu chứng bạn đang mắc phải:'
    )
    print([i for i in NewAllSymLst])
    return NewAllSymLst
def where_question(listSymptom):
    print("-->Chatbot: Để phục vụ cho việc chẩn đoán bệnh mà bạn đang mắc phải")
    print("-->Chatbot: Vui lòng trả lời trung thực 3 câu hỏi bắt buộc sau!")
    print("-->Chatbot: Bạn bị đau ở vị trí nào sau đây ? ")
    list_where_symptom = []
    index = 1
    for i in range(1,12):
        dict_where_symptom = {}
        dict_where_symptom['index'] = str(index);
        dict_where_symptom['id'] = trieuChung[i]['id']
        dict_where_symptom['name'] = trieuChung[i]['name']
        list_where_symptom.append(dict_where_symptom)
        print(index, trieuChung[i]['name'])
        index+=1
        dict_where_symptom = {}
    print('-->Chatbot: Nếu bị nhiều hơn 1 triệu chứng hay nhập các lựa chọn ngăn cách nhau bởi dấu "," ')
    answer_where = input().split(",")
    for i in list_where_symptom:
        # print(type(i['index']))
        if i['index'] in answer_where:
            print("triệu chứng đau ở đâu", i["id"])
            listSymptom.append(i['id'])
    print([i for i in listSymptom])
    return listSymptom
def how_question(listSymptom):
    print("-->Chatbot: Dấu hiệu cơn đau của bạn như thế nào ?")
    list_how_symptom = []
    index = 1
    for i in range(12,23):
        dict_how_symptom = {}
        dict_how_symptom['index'] = str(index);
        dict_how_symptom['id'] = trieuChung[i]['id']
        dict_how_symptom['name'] = trieuChung[i]['name']
        list_how_symptom.append(dict_how_symptom)
        print(index, trieuChung[i]['name'])
        index+=1
        dict_how_symptom = {}
    print('-->Chatbot: Nếu bị nhiều hơn 1 triệu chứng hay nhập các lựa chọn ngăn cách nhau bởi dấu "," ')
    answer_how = input().split(",")
    for i in list_how_symptom:
        # print(type(i['index']))
        if i['index'] in answer_how:
            print("triệu chứng đau như thế nào", i["id"])
            listSymptom.append(i['id'])
    print([i for i in listSymptom])
    return listSymptom


def when_question(listSymptom):
    print("-->Chatbot: Cơn đau của bạn xuất hiện khi nào ?")
    list_when_symptom = []
    index = 1
    for i in range(23,30):
        dict_when_symptom = {}
        dict_when_symptom['index'] = str(index);
        dict_when_symptom['id'] = trieuChung[i]['id']
        dict_when_symptom['name'] = trieuChung[i]['name']
        list_when_symptom.append(dict_when_symptom)
        print(index, trieuChung[i]['name'])
        index+=1
        dict_when_symptom = {}
    print('-->Chatbot: Nếu bị nhiều hơn 1 triệu chứng hay nhập các lựa chọn ngăn cách nhau bởi dấu "," ')
    answer_when = input().split(",")
    for i in list_when_symptom:
        # print(type(i['index']))
        if i['index'] in answer_when:
            print("triệu chứng đau như thế nào", i["id"])
            listSymptom.append(i['id'])
    print([i for i in listSymptom])
    return listSymptom


if __name__ =="__main__":
    # user = introduce_question()
    listTrieuChung = confirm_question()
    # listTrieuChung = where_question()
    listTrieuChung = where_question(listTrieuChung)
    listTrieuChung = how_question(listTrieuChung)
    listTrieuChung = when_question(listTrieuChung)

    suydientien = Suy_Dien_Tien(rule, listTrieuChung)
    # rules = suydientien.read_rule(rule)
    # print(rules)
    suyDienTienKq = suydientien.suy_dien_tien()
    print("Dựa vào các dấu hiệu trên chúng tôi dự đoán bạn có thể bị các bệnh sau : ")
    print("Tổng số bệnh nghi ngờ:", len(suyDienTienKq[2]))
    for i in suyDienTienKq[2]:
        print(i)
        print("=============================")

    db.getSuyDienLui(suyDienTienKq[2])
    suydienlui = Suy_Dien_Lui(db.tapSuyDienLui,listTrieuChung,suyDienTienKq[2])
    result = suydienlui.suy_dien_lui(listTrieuChung)
    print(result)