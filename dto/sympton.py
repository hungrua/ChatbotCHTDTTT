class Symptom:
    def __init__(self,id,name):
        self.id = id
        self.name = name
        self.flag = False
    def __str__(self) :
        return f"'{self.id}' : '{self.flag}'"
