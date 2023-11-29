from dto.rule import Rule

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
                    print("------------Triệu chứng đã hỏi lại mà không có trong danh sách", fact.id)
                    print("======================================")
                    break
                self.check.append(fact.id)
                print("Bạn có " + fact.name + " không?")
                print("1. Có")
                print("0. Không")
                answer = int(input())
                print("Cờ đánh dấu", fact.flag)
                print(f"Xét xong '{fact}'")
                if(answer==0):
                    break
                else :
                    facts.append(fact.id)
                    print("======================")
                    print("Danh sách các triệu chứng", facts)
                    print("======================")

            fact_set = set(facts)
            tmp = []
            for oject in rule['left']:
                tmp.append(oject.id)
            rule_set = set(tmp)
            # print(f"Rule_set {rule_set}")
            # print(f"Fact_set {fact_set}")
            if(rule_set.issubset(fact_set)):
                return rule['right']
        return "Không có bệnh nào"            









