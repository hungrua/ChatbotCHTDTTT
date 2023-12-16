
class Rule:
    def __init__(self,rule_id,left,right):
        self.rule_id = rule_id
        self.left = left
        self.right = right
        self.flag1 = False
        self.flag2 = False
    def check(self,facts, id_symptom = None):
        if(id_symptom not in facts):
            return self.left
        return None
    def __str__(self):
        return f"{self.rule_id}: {self.left} -> {self.right}"
