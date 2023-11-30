class AdviceForDisease :
    def __init__(self, id, name):
        self.id = id
        self.name = name
    def __str__(self):
        return f"{self.id} ==> {self.name}"
    
class AdviceForAll :
    def __init__(self,id,ask,advice):
        self.id = id
        self.advice = advice
        self.ask = ask
    def __str__(self):
        return f"{self.id} - {self.ask} - {self.advice}"