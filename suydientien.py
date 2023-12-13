from dto.rule import Rule 
from dto.data import Data

class Suy_Dien_Tien:

    def __init__(self, rule, facts):
        self.rules = rule
        self.facts = facts
        self.disease = []

    def suy_dien_tien(self):
        road = []
        while True:
            rule_end = False #Biến thực hiện đánh dấu khi nào thực hiện xong suy diễn tiến
            for rule in self.rules:
                if rule.flag1 == True: #Cờ 1 kiểm tra luật, nếu luật đã được chứng minh thì bỏ qua
                    continue
                if rule.flag2 == True: #Cờ 2 kiểm tra vế phải của luật, nếu vế phải đã được chứng minh bỏ qua luật
                    continue
                if rule.right.id in self.facts: #Nếu bệnh đã nằm trong tập fact
                    rule.flag2 = True           #Vế phải của luật nằm trong tập facts đánh dấu cờ 2
                    continue
                
                #Kiểm tra xem trong tập facts có đủ triệu chứng để chứng minh luật này không
                missing = rule.check(self.facts, rule.left.id) 
                
                #Nếu đủ tức là giá trị thiếu (missing) là None
                if missing is None:
                    rule_end = True 
                    rule.flag1 = True #Đánh dấu luật đã được chứng minh
                    road.append(rule.rule_id)
                    self.disease.append(Data(rule.right.id, rule.right.name)) #Thêm vào tập bệnh nghi ngờ
                    self.facts.append(rule.right.id) # Thêm bệnh vào tập facts
                    break
                
            if rule_end == False: #Nếu tìm được tập luật nào để chứng minh nữa thì dừng
                break
        return road, self.facts, self.disease






            





        