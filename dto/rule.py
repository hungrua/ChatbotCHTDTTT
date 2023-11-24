class Rule:
    def __init__(self,rule_id,left,right):
        self.rule_id = rule_id
        self.left = left
        self.right = right
        self.flag1 = False
        self.flag2 = False
        self.asked = False #Cờ đánh dấu câu đã hỏi
    def check(self,facts):
        if(self.left not in facts):
            return self.left;
        return None;
    def __str__(self):
        return f"{self.rule_id}: {self.left} -> {self.right}"
