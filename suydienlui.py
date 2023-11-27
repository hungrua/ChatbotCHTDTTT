from dto.rule import Rule

class Suy_Dien_Lui:
    def __init__(self, rules, facts, goal):
        self.rules = self.read_rule(rules)
        self.facts = facts
        self.goal = goal

    def read_rule(self, rule):
        new_rule = []
        for i in rule:
            rule_id = i['rule_id']
            # left = i['left']
            tmpTC = []
            for tc in i['left']:

            right = i['right']
            new_rule.append(Rule(rule_id, left, right))
        return new_rule

    def suy_dien_lui(self,facts,goal):
        luatNghiNgo = []
        for rule in self.rules:
            if self.facts == rule.right:
                luatNghiNgo.append(rule)

        for rule in luatNghiNgo:
            for tc in rule:
                if tc in facts:
                    continue
                else:









