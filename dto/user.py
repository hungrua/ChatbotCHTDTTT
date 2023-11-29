class User:
    def __init__(self,name,age,height,weight):
        self.name = name
        self.age = int(age)
        self.height = height
        self.weight = weight
    def __str__(self):
        return f"{self.name} - {self.age}"
    