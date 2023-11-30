from dto.rule import Rule 
from dto.data import Data

class Suy_Dien_Tien:

    def __init__(self, rule, facts):
        self.rules = rule
        self.facts = facts
        self.disease = []

    def suy_dien_tien(self):
        iteration = 0
        road = []
        while True:
            rule_end = False
            iteration+=1
            for rule in self.rules:
                if rule.flag1 == True: # luật được chứng minh
                    continue
                if rule.flag2 == True: # vế phải của luật đã được chứng minh
                    continue
                if rule.right.id in self.facts:
                    rule.flag2 = True
                    continue
                missing = rule.check(self.facts, rule.left.id)
                if missing is None:
                    rule_end = True
                    rule.flag1 = True
                    road.append(rule.rule_id)
                    # if(self.check(rule.right.id)):
                    # print(self.check(rule.right.id))
                    self.disease.append(Data(rule.right.id, rule.right.name)) # Tập bệnh nghi ngờ [{idBenh: , tenBenh: }]
                    self.facts.append(rule.right.id) # Tập triệu chứng
                    break
            if rule_end == False:
                break
        return road, self.facts, self.disease
    
    def check(self, value):
        for i in self.disease:
            if(str(value) == str(i.id)):
                return True
        return False





            





        