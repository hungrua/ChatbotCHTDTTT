
from suydientien import Suy_Dien_Tien
from suydienlui import Suy_Dien_Lui
from dto.dao import Converter
from dto.disease import Disease
from dto.sympton import Symptom
from dto.user import User
from colorama import Fore
import time

user = User(None,1,None,None)
db = Converter()
db.getTrieuChung()
db.getTapBenh()
db.getSuyDienTien()
trieuChung = db.tapTrieuChung
rule = db.tapSuyDienTien
fact_suy_dien_loi_khuyen = []

def introduce_question():
    print(Fore.YELLOW+"-->Chatbot: Xin chào, tôi là chatbot chuẩn đoán bệnh về xương khớp!")
    print(Fore.YELLOW+"-->Chatbot: Vui lòng điền một số thông tin cá nhân để tiếp tục!")

    print(Fore.YELLOW+"-->Chatbot: Hãy nhập tên của bạn")
    user.name = input(Fore.RED)
    print(Fore.RED+f'-->Người dùng: Tên của tôi là, {user.name}')
    print(Fore.YELLOW+"-->Chatbot: Hãy nhập tuổi của bạn")
    user.age = int(input(Fore.RED))

    print(Fore.RED+f'-->Người dùng: Tôi {user.age} tuổi')
    print(Fore.YELLOW+"-->Chatbot: Hãy cho tôi biết chiều cao của bạn ( Đơn vị cm)")
    user.height = input(Fore.RED)
    print(Fore.RED+f'-->Người dùng: Tôi cao {user.height} cm')
    print(Fore.YELLOW+"-->Chatbot: Hãy cho tôi biết cân nặng của bạn ( Đơn vị kg)")
    user.weight = input(Fore.RED)
    print(Fore.RED+f'-->Người dùng: Tôi nặng {user.weight} kg')

    print(Fore.YELLOW+"-->Chatbot: Cảm ơn bạn đã cung cấp đủ thông tin!")

    return user

def confirm_question():
    NewAllSymLst = []
    print(Fore.YELLOW+"-->Chatbot: Bạn có đang bị đau ở khớp không ?")
    print("1. Có")
    print("0. Không")
    answer = input(Fore.RED)
    if(answer=="0"):
        print(Fore.YELLOW+"-->Chatbot: Có vẻ bạn không có dấu hiệu đặc trưng của các bệnh về xương khớp")
        print(Fore.YELLOW+"-->Chatbot: Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi!")
        return False
    NewAllSymLst.append(trieuChung[0]['id'])
    print(
        Fore.YELLOW+'-->Chatbot: Danh sách mã các triệu chứng bạn đang mắc phải:'
    )
    print([i for i in NewAllSymLst])
    return NewAllSymLst

def where_question(listSymptom):
    print(Fore.YELLOW+"-->Chatbot: Để phục vụ cho việc chẩn đoán bệnh mà bạn đang mắc phải")
    print(Fore.YELLOW+"-->Chatbot: Vui lòng trả lời trung thực 3 câu hỏi bắt buộc sau!")
    print(Fore.YELLOW+"-->Chatbot: Bạn bị đau ở vị trí nào sau đây ? ")
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
    print(Fore.YELLOW+'-->Chatbot: Nếu bị nhiều hơn 1 triệu chứng hãy nhập các lựa chọn ngăn cách nhau bởi dấu "," ')
    answer_where = input(Fore.RED).split(",")
    for i in list_where_symptom:
        # print(type(i['index']))
        if i['index'] in answer_where:
            print("triệu chứng đau ở đâu", i["id"])
            listSymptom.append(i['id'])
    print([i for i in listSymptom])
    return listSymptom

def how_question(listSymptom):
    print(Fore.YELLOW+"-->Chatbot: Dấu hiệu cơn đau của bạn như thế nào ?")
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
    print(Fore.YELLOW+'-->Chatbot: Nếu bị nhiều hơn 1 triệu chứng hay nhập các lựa chọn ngăn cách nhau bởi dấu "," ')
    answer_how = input(Fore.RED).split(",")
    for i in list_how_symptom:
        # print(type(i['index']))
        if i['index'] in answer_how:
            print("triệu chứng đau như thế nào", i["id"])
            listSymptom.append(i['id'])
    print([i for i in listSymptom])
    return listSymptom

def when_question(listSymptom):
    print(Fore.YELLOW+"-->Chatbot: Cơn đau của bạn xuất hiện khi nào ?")
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
    print(Fore.YELLOW+'-->Chatbot: Nếu bị nhiều hơn 1 triệu chứng hay nhập các lựa chọn ngăn cách nhau bởi dấu "," ')
    answer_when = input(Fore.RED).split(",")
    for i in list_when_symptom:
        # print(type(i['index']))
        if i['index'] in answer_when:
            print("triệu chứng đau như thế nào", i["id"])
            listSymptom.append(i['id'])
    print([i for i in listSymptom])
    return listSymptom

def xetNguongTuoi(diseaseId, age):
    if(diseaseId == "B1"):
        if(age >= 40):
            return ">40"
        return "<40"
    elif(diseaseId == "B2"):
        if(age >= 16):
            return ">16"
        return "<16"
    return ">00"

def additionAdvice():
    print(Fore.YELLOW+f'-->Chatbot: Ngoài ra chúng tôi còn một vài lời khuyên về chế độ ăn và thói quen vận động để giúp bạn hạn chế gặp các bệnh về xương khớp')
    print(Fore.YELLOW+"-->Chatbot : Bạn có muốn tiếp tục nhận lời khuyên ?")
    print("1. Có")
    print("0. Không")
    answer = input(Fore.RED)
    if(answer=="0"):
        print(Fore.YELLOW+"-->Chatbot: Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi!")
        return False
    print(Fore.YELLOW+"-->Chatbot : Hãy trả lời 2 câu hỏi sau về chế ăn và thói quen vận động hàng ngày của bạn")
    diet()
    exerciseHabits()
    print(Fore.YELLOW+"-->Chatbot : Trên đây là các lời khuyên hữu ích dành cho bạn, cảm ơn bạn đã hỏi chat, chúc bạn mau khỏi bệnh")
    
def diet():
    dietAsk  = db.getAdviceById("CD")
    print(Fore.YELLOW+"-->Chatbot: Chế độ ăn hàng ngày của bạn thuộc loại nào dưới đây ?")
    for i in range(len(dietAsk)):
        print(f"{i+1}. {dietAsk[i].ask} " )
    print(Fore.YELLOW+'-->Chatbot : Bạn có thể chọn nhiều đáp án cho câu hỏi này,hãy nhập các lựa chọn ngăn cách nhau bởi dấu "," !')
    answer = input(Fore.RED+f"Câu trả lời của tôi là : ").split(",")
    print(Fore.YELLOW,"-->Chatbot: Danh sách các lời khuyên theo chế độ ăn của bạn là: ")
    for key in answer:
        for diet in dietAsk:
            if "CD"+key == str(diet.id):
                print(Fore.WHITE, diet.advice)

def exerciseHabits():
    exerciseHabits  = db.getAdviceById("TQ")
    print(Fore.YELLOW+"-->Chatbot: Thói quen hoạt động của bạn thuộc loại nào dưới đây ?")
    for i in range(len(exerciseHabits)):
        print(f"{i+1}. {exerciseHabits[i].ask} " )
    print(Fore.YELLOW+'-->Chatbot : Bạn có thể chọn nhiều đáp án cho câu hỏi này,hãy nhập các lựa chọn ngăn cách nhau bởi dấu "," !')
    answer = input(Fore.RED+f"Câu trả lời của tôi là : ").split(",")
    print(Fore.YELLOW,"-->Chatbot: Danh sách các lời khuyên thói quen hoạt động của bạn là: ")
    for key in answer:
        for exerciseHabit in exerciseHabits:
            if "TQ"+key == str(exerciseHabit.id):
                print(Fore.WHITE, exerciseHabit.advice)

if __name__ =="__main__":
    user = introduce_question()
    listTrieuChung = confirm_question()
    listTrieuChung = where_question(listTrieuChung)
    listTrieuChung = how_question(listTrieuChung)
    listTrieuChung = when_question(listTrieuChung)
    suydientien = Suy_Dien_Tien(rule, listTrieuChung)
    suyDienTienKq = suydientien.suy_dien_tien()
    print("Dựa vào các dấu hiệu trên chúng tôi dự đoán bạn có thể bị các bệnh sau : ")
    print("Tổng số bệnh nghi ngờ:", len(suyDienTienKq[2]))
    for i in suyDienTienKq[2]:
        print(i)
        print("=============================")

    db.getSuyDienLui(suyDienTienKq[2])
    suydienlui = Suy_Dien_Lui(db.tapSuyDienLui,listTrieuChung,suyDienTienKq[2])
    result = suydienlui.suy_dien_lui(listTrieuChung)


    print(Fore.YELLOW+f"-->Chatbot: Dựa trên những thông tin mà bạn cung cấp chúng tôi có kết luận sơ bộ là bạn đang mắc bệnh")
    resultDisease = db.getDiseaseById(result)[1]
    print(resultDisease)
    print(Fore.YELLOW+f"-->Chatbot : Căn cứ vào độ tuổi là {user.age} và bệnh của bạn tôi có một số lời khuyên dành cho bạn như sau :")
    

    # suy diễn tiến cho lời khuyên theo bệnh và độ tuổi
    fact = db.getDiseaseById(result)[0] + " and " + xetNguongTuoi(db.getDiseaseById(result)[0],user.age)
    fact_suy_dien_loi_khuyen.append(fact)
    advices = db.getRuleByAdivce()
    suyDienTien = Suy_Dien_Tien(advices, fact_suy_dien_loi_khuyen)
    resultAdvice = suyDienTien.suy_dien_tien()

    time.sleep(2)
    # liệt kê lời khuyên theo bệnh và khoảng tuổi
    for i in resultAdvice[2]:
        print(Fore.WHITE, i.name)

    additionAdvice()

    # for advice in advices:
    #     print(advice)
    
    # listTrieuChung = ['TC01', 'TC07', 'TC23', 'TC27', 'B1', 'Tuoi(<40)']
    # B1, <40 ==> lời khuyên 1 
    # B1, >40 ==> lời khuyên 2 

