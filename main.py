
from suydientien import Suy_Dien_Tien
from suydienlui import Suy_Dien_Lui
from dto.dao import Converter
from dto.disease import Disease
from dto.sympton import Symptom
from dto.user import User
from colorama import Fore
from validate import Validate
import time

user = User(None,1,None,None)
db = Converter()
db.getTrieuChung()
db.getTapBenh()
db.getSuyDienTien()
trieuChung = db.tapTrieuChung
rule = db.tapSuyDienTien
fact_suy_dien_loi_khuyen = []
validate = Validate()


def introduce_question():
    print(Fore.YELLOW+"-->Chatbot: Xin chào, tôi là chatbot chuẩn đoán bệnh về xương khớp!")
    print(Fore.YELLOW+"-->Chatbot: Vui lòng điền một số thông tin cá nhân để tiếp tục!")
    print(Fore.YELLOW+"-->Chatbot: Hãy nhập tên của bạn")
    user.name = input(Fore.RED)
    print(Fore.RED+f'-->Người dùng: Tên của tôi là, {user.name}')
    print(Fore.YELLOW+"-->Chatbot: Hãy nhập tuổi của bạn")
    user.age = validate.validateNumber(input(Fore.RED)) # cần thực hiện validate xem có phải số không

    print(Fore.RED+f'-->Người dùng: Tôi {user.age} tuổi')
    print(Fore.YELLOW+"-->Chatbot: Cảm ơn bạn đã cung cấp đủ thông tin!")
    return user


def confirm_question():
    NewAllSymLst = []
    print(Fore.YELLOW+"-->Chatbot: Bạn có đang bị đau ở khớp không ?")
    print("1. Có")
    print("0. Không")
    answer = validate.validateYesOrNo(input(Fore.RED)) # thực hiện vavlidate(có thể trả lời có: y, yes, có, co, 1, c; không: k, không, khong, no, n)
    if(answer==False):
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
        dict_where_symptom['index'] = str(index)
        dict_where_symptom['id'] = trieuChung[i]['id']
        dict_where_symptom['name'] = trieuChung[i]['name']
        list_where_symptom.append(dict_where_symptom)
        print(index, trieuChung[i]['name'])
        index+=1
        dict_where_symptom = {}
    print(Fore.YELLOW+'-->Chatbot: Nếu bị nhiều hơn 1 triệu chứng hãy nhập các lựa chọn ngăn cách nhau bởi dấu "," hoặc khoảng trắng ')
    answer_where = validate.validateListAnswer(input(Fore.RED), index - 1)
    for i in list_where_symptom:
        if i['index'] in answer_where:
            # print("triệu chứng đau ở đâu", i["id"])
            print(listSymptom)
            listSymptom.append(i['id'])
    print([i for i in listSymptom])
    return listSymptom


def how_question(listSymptom):
    print(Fore.YELLOW+"-->Chatbot: Biểu hiệu cơn đau của bạn như thế nào ?")
    list_how_symptom = []
    index = 1
    for i in range(12,23):
        dict_how_symptom = {}
        dict_how_symptom['index'] = str(index)
        dict_how_symptom['id'] = trieuChung[i]['id']
        dict_how_symptom['name'] = trieuChung[i]['name']
        list_how_symptom.append(dict_how_symptom)
        print(index, trieuChung[i]['name'])
        index+=1
        dict_how_symptom = {}
    print(Fore.YELLOW+'-->Chatbot: Nếu bị nhiều hơn 1 triệu chứng hay nhập các lựa chọn ngăn cách nhau bởi dấu "," hoặc khoảng trắng ')
    answer_how = validate.validateListAnswer(input(Fore.RED), index - 1) # cần validate dạng nhập vào có dấu cách nhau bằng dấu ", ", validate dạng số, có năm trong dải số không
    for i in list_how_symptom:
        if i['index'] in answer_how:
            # print("triệu chứng đau như thế nào", i["id"])
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
    print(Fore.YELLOW+'-->Chatbot: Nếu bị nhiều hơn 1 triệu chứng hay nhập các lựa chọn ngăn cách nhau bởi dấu "," hoặc khoảng trắng')
    answer_when = validate.validateListAnswer(input(Fore.RED), index - 1) # cần validate dạng nhập vào có dấu cách nhau bằng dấu ", ", validate dạng số, có năm trong dải số không
    for i in list_when_symptom:
        # print(type(i['index']))
        if i['index'] in answer_when:
            # print("triệu chứng đau như thế nào", i["id"])
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
    answer = validate.validateYesOrNo(input(Fore.RED)) # thực hiện vavlidate(có thể trả lời có: y, yes, có, co, 1, c; không: k, không, khong, no, n)
    if(answer==False):
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
    print(Fore.YELLOW+'-->Chatbot : Bạn có thể chọn nhiều đáp án cho câu hỏi này,hãy nhập các lựa chọn ngăn cách nhau bởi dấu "," hoặc khoảng trắng !')
    answer = validate.validateListAnswer(input(Fore.RED+f"Câu trả lời của tôi là : "), len(dietAsk)) # cần validate dạng nhập vào có dấu cách nhau bằng dấu ", ", validate dạng số, có năm trong dải số không
    print(Fore.YELLOW,"-->Chatbot: Danh sách các lời khuyên theo chế độ ăn của bạn là: ")
    for key in answer:
        for diet in dietAsk:
            if "CD"+key == str(diet.id):
                print(Fore.MAGENTA+f"{diet.advice}")

                
def exerciseHabits():
    exerciseHabits  = db.getAdviceById("TQ")
    print(Fore.YELLOW+"-->Chatbot: Thói quen hoạt động của bạn thuộc loại nào dưới đây ?")
    for i in range(len(exerciseHabits)):
        print(f"{i+1}. {exerciseHabits[i].ask} " )
    print(Fore.YELLOW+'-->Chatbot : Bạn có thể chọn nhiều đáp án cho câu hỏi này,hãy nhập các lựa chọn ngăn cách nhau bởi dấu "," hoặc khoảng trắng !')
    answer = validate.validateListAnswer(input(Fore.RED+f"Câu trả lời của tôi là : "), len(exerciseHabits)) # cần validate dạng nhập vào có dấu cách nhau bằng dấu ", ", validate dạng số, có năm trong dải số không
    print(Fore.YELLOW,"-->Chatbot: Danh sách các lời khuyên thói quen hoạt động của bạn là: ")
    for key in answer:
        for exerciseHabit in exerciseHabits:
            if "TQ"+key == str(exerciseHabit.id):
                print(Fore.MAGENTA+f"{exerciseHabit.advice}")
                

if __name__ =="__main__":
    
    user = introduce_question() #Người dùng nhập thông tin cơ bản
    
    listTrieuChung = confirm_question() #Câu hỏi xác nhận
    listTrieuChung = where_question(listTrieuChung) #Câu hỏi đau ở đâu
    listTrieuChung = how_question(listTrieuChung) #Câu hỏi đau như thế nào
    listTrieuChung = when_question(listTrieuChung) #Câu hỏi đau khi nào
    
    #Thực hiện suy diễn tiến
    suydientien = Suy_Dien_Tien(rule, listTrieuChung)
    suyDienTienKq = suydientien.suy_dien_tien()
    print(Fore.YELLOW,"-->Chatbot: Dựa vào các dấu hiệu trên chúng tôi dự đoán bạn có thể bị các bệnh sau : ")
    

    #Đưa ra bệnh nghi ngờ sau suy diễn tiến
    print(Fore.YELLOW,"Tổng số bệnh nghi ngờ:", len(suyDienTienKq[2]))
    for i in suyDienTienKq[2]:
        print(i)
        print("=============================")
    print("-->Chatbot: Vui lòng trả lời một vài câu hỏi dưới đây để kết luận được bệnh mà bạn đang mắc phải")
    
    #Lấy ra tập suy diễn tiến theo tập bệnh đã có từ suy diến tiến
    db.getSuyDienLui(suyDienTienKq[2])
    
    #Thực hiện suy diễn lùi
    suydienlui = Suy_Dien_Lui(db.tapSuyDienLui,listTrieuChung,suyDienTienKq[2])
    result = suydienlui.suy_dien_lui(listTrieuChung)
    
    
    #Kết luận bệnh sau suy diễn lùi
    print(Fore.YELLOW+f"-->Chatbot: Dựa trên những thông tin mà bạn cung cấp chúng tôi có kết luận sơ bộ là bạn đang mắc bệnh")
    resultDisease = db.getDiseaseById(result)[1]
    print(resultDisease)
    
    #Đưa ra lời khuyên dựa vào độ tuổi và bệnh mà người dùng đang mắc
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


    #Thêm lời khuyên theo chế độ ăn và thói quen hoạt động
    additionAdvice()

