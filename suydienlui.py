from dto.rule import Rule
class Suy_Dien_Lui:
    def __init__(self,rules,facts,goal):
        self.rules = self.read_rule(rules)
        self.facts = facts
        self.goal = goal
    def read_rule(self,rule):
        new_rule=[]
        for i in rule:
            rule_id = i['idLuat']
            left = i['trieuChung'] if i['trieuChung']=="" else i['trieuChung']
            right = i['benh']
            new_rule.append(Rule(rule_id,left,right))
        return new_rule
    # def suy_dien_lui(self,facts,goal):
        # for rule in self.rules:
        #     if rule.left in facts:
        
        
    