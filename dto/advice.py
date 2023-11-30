class AdviceForDisease :
    def __init__(self,id,advice,disease_id,age):
        self.id = id
        self.advice = advice
        self.disease_id = disease_id
        self.age = age
    def __str__(self):
        return f"{self.advice}"
class AdviceForAll :
    def __init__(self,id,ask,advice):
        self.id = id
        self.advice = advice
        self.ask = ask
    def __str__(self):
        return f"- {self.advice}"