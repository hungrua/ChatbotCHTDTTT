from dto.rule import Rule
from colorama import Fore
from validate import Validate

validate = Validate()
class Suy_Dien_Lui:
    def __init__(self, rules, facts, goal):
        self.rules = rules
        self.facts = facts
        self.goal = goal
        self.check = [] #Lưu những triệu chứng đã được hỏi trước đó

    def suy_dien_lui(self,facts):
        for rule in self.rules: #Xét từng luật trong tập luật suy diễn lùi    
            for fact in rule['left']: #Xét từng triệu chứng trong vế trái của luật
                if fact.id in facts: #Nếu triệu chứng đã có trong tập fact thì bỏ qua triệu chứng này
                    continue
                if  (fact.id not in facts and fact.id in self.check): #Nếu người dùng đã trả lời là không có triệu chứng này thì bỏ qua luật
                    break 
                self.check.append(fact.id) #Thêm vào tập triệu chứng được hỏi
                print(Fore.YELLOW,f"-->Chatbot : Bạn có {fact.name} không?") #Hỏi xem có triệu chứng này không?
                print("1. Có")
                print("0. Không")
                answer = validate.validateYesOrNo(input(Fore.RED+"-->Người dùng: Câu trả lời của tôi là: "))
                if(answer==False):
                    break
                else : #Nếu có thêm triệu chứng này vào tập facts
                    facts.append(fact.id)
                    print(Fore.YELLOW,"======================")
                    print(Fore.YELLOW,"Danh sách các triệu chứng", facts)
                    print(Fore.YELLOW,"======================")

            #Kiểm tra xem với tập fact như vậy đã đủ để kết luận bệnh nào chưa
            fact_set = set(facts)
            tmp = []
            for object in rule['left']:
                tmp.append(object.id)
            rule_set = set(tmp)
            #Nếu đủ thì kết luật bệnh
            if(rule_set.issubset(fact_set)):
                return rule['right']
        return "Không có bệnh nào"  #Nếu không xác định được bệnh nào thì kết luận        

