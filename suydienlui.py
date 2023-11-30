from dto.rule import Rule
from colorama import Fore
class Suy_Dien_Lui:
    def __init__(self, rules, facts, goal):
        self.rules = rules
        self.facts = facts
        self.goal = goal
        self.check = []

    def suy_dien_lui(self,facts):
        for rule in self.rules:     
            for fact in rule['left']:
                if fact.id in facts:
                    continue
                if  (fact.id not in facts and fact.id in self.check):
                    break
                self.check.append(fact.id)
                print(Fore.YELLOW,f"-->Chatbot : Bạn có {fact.name} không?")
                print("1. Có")
                print("0. Không")
                answer = int(input(Fore.RED+"-->Người dùng: Câu trả lời của tôi là: "))
                if(answer==0):
                    break
                else :
                    facts.append(fact.id)
                    print(Fore.YELLOW,"======================")
                    print(Fore.YELLOW,"Danh sách các triệu chứng", facts)
                    print(Fore.YELLOW,"======================")

            fact_set = set(facts)
            tmp = []
            for oject in rule['left']:
                tmp.append(oject.id)
            rule_set = set(tmp)
            if(rule_set.issubset(fact_set)):
                return rule['right']
        return "Không có bệnh nào"
        # return None