import re
from colorama import Fore

class Validate:
    def __init__(self) -> None:
        pass

    def validateNumber(self, number_input):
        number = None
        while True:
            try:
                number = int(number_input)
                if(number <= 0 or number>=120):
                    print(Fore.YELLOW+"-->Chatbot: Vui lòng nhập đúng định dạng là một số nguyên dương nhỏ hơn 120 !!")
                    number_input = input(Fore.RED)
                    continue
                return number
            except ValueError:
                print(Fore.YELLOW+"-->Chatbot: Vui lòng nhập đúng định dạng số !!")
                number_input = input(Fore.RED)
                continue
        
    def validateYesOrNo(self, answer_input):
        while True:
            # y, yes, có, co, 1
            input_yes = ["Y", "YES", "CÓ", "CO", "1", "C"]
            # k, không, khong, no, n
            input_no = ["N", "NO", "KHONG", "KHÔNG", "0", "K"]

            check_yes = answer_input.strip().upper() in input_yes
            check_no = answer_input.strip().upper() in input_no
            
            if(check_no == False and check_yes == False):
                print(Fore.YELLOW + "-->Chatbot: Câu trả lời không đúng định dạng, vui lòng nhập lại câu trả lời !!")
                answer_input = input(Fore.RED)
                continue

            if check_yes == True:
                return True
            return False
    
    def validateListAnswer(self, list_input, length):
        pattern = r'\s|, |,'
        while True:
            list_output = []
            list_input = re.split(pattern, list_input)
            check = False
            for i in list_input:
                number = None
                # kiểm tra các số
                try:
                    number = int(i.strip())
                except ValueError:
                    print(Fore.YELLOW+"-->Chatbot: Câu trả lời không hợp lệ, vui lòng nhập đúng định dạng danh sách các số !!")
                    list_input = input(Fore.RED)
                    check = True
                    break
                # kiểm tra xem có số nào nằm ngoài khoảng cho phép không
                if(number < 0 or number > length):
                    print(Fore.YELLOW, f"-->Chatbot: Câu trả lời không hợp lệ, vui lòng nhập đúng định dạng trong Khoảng 1 -> {length} !!")
                    list_input = input(Fore.RED)
                    check = True
                    break
                if(i.strip() not in list_output):
                    list_output.append(i.strip())
                
            
            if (('0' in list_output) and len(list_output) > 1):
                print(Fore.YELLOW, f"-->Chatbot: Bạn không thể chọn vừa có triệu chứng và vừa không có triệu chứng như vậy, vui lòng nhập lại câu trả lời của bạn !!!")
                list_input = input(Fore.RED)
                continue

            if check == False:
                return list_output
            