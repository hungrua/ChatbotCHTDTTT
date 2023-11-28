from dto.rule import Rule

class Suy_Dien_Lui:
    def __init__(self, rules, facts, goal):
        self.rules = rules
        self.facts = facts
        self.goal = goal
        print(rules)

    def suy_dien_lui(self,facts):
        for rule in self.rules:     
            for fact in rule['left']:
                if fact.id in facts:
                    print(fact) 
                    continue
                if  (fact.id not in facts and fact.flag==True):
                    break
                fact.flag==True
                print("Bạn có " + fact.name + " không?")
                print("1. Có")
                print("0. Không")
                answer = int(input())
                if(answer==0):
                    break
                else :
                    facts.append(fact.id)
                    print("======================")
                    print(facts)
                    print("======================")

            fact_set = set(facts)
            rule_set = set(rule['left'])
            # print(f"Rule_set {rule_set}")
            # print(f"Fact_set {fact_set}")
            if(rule_set.issubset(fact_set)):
                return rule.right
        return "Không có bệnh nào"            









