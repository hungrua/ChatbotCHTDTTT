from dto.rule import Rule 
class Suy_Dien_Tien:

    def __init__(self,rule,facts):
        # self.iteration = 0
        # self.output = ""
        # self.output_file_name = None

        # self.output += "PART 1. Dữ liệu (Luật)\n"
        # rules, facts, goal = self.read_data(file_name) # lấy luật , sự thật và mục tiêu
        # rules=self.read_rule(rule)
        
        # self.print_data(rules, facts)

        # self.output += "PART 2. Suy Diễn\n"
        # self.result, self.road, self.facts = self.forward_chaining(rules, facts)
        self.rule = self.read_rule(rule)
        self.facts = facts
        # self.output += "PART 3. Kết quả\n"
        # self.print_results(self.result, self.road,self.facts)

        # self.write_output(file_name)
        # print("Kết quả suy diễn tiến được lưu tại file: %s." % self.output_file_name)
    def suy_dien_tien(self,facts):
        iteration = 0
        road = []
        while True:
            rule_end = False
            iteration+=1
            # self.output+= f"STEP '{iteration}'\n"
            for rule in self.rule:
                # self.output+= str(rule)
                if rule.flag1 == True:
                    # self.output+= " luật này đã được chứng minh.\n"
                    continue
                if rule.flag2 == True:
                    # self.output+= " không xét do vế phải đã được chứng minh.\n"
                    continue
                if rule.right in facts:
                    rule.flag2 = True
                    continue
                missing = rule.check(facts)
                if missing is None:
                    rule_end = True
                    rule.flag1 = True
                    road.append(rule.rule_id)
                    facts.append(rule.right)
                    # self.output+= f" luật được sử dụng. Cập nhật fact : '{facts[:]}' \n"
                    break
                # else:
                #     self.output+= f" không sử dụng được luật này do thiếu '{missing}' \n "
            if rule_end == False:
                break
        return road,facts
    def read_rule(self,rule):
        new_rule=[]
        for i in rule:
            rule_id = i['idLuat']
            left = i['trieuChung']
            right = i['benh']
            new_rule.append(Rule(rule_id,left,right))
        return new_rule





            





        