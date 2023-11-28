
import mysql.connector
from dto.rule import Rule
from dto.disease import Disease
from dto.cause import Cause
from dto.sympton import Symptom

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="123456789",
    database="kbs"
)
class Converter:
    def __init__(self):
        self.tapBenh = []
        self.tapTrieuChung = []
        self.tapSuyDienTien = []
        self.tapSuyDienLui = []
    def getTapBenh(self):
        dbbenh = mydb.cursor()
        dbbenh.execute("SELECT * FROM kbs.disease;")
        benhs = dbbenh.fetchall()
        benh = {}
        for i in benhs:
            benh['id'] = i[0]
            benh['name'] = i[1]
            self.tapBenh.append(benh)
            benh = {}
    def getTrieuChung(self):
        dbTrieuChung = mydb.cursor()
        dbTrieuChung.execute("SELECT * FROM kbs.symptom;")
        tcs = dbTrieuChung.fetchall()
        trieuChung = {}
        for i in tcs:
            trieuChung['id'] = i[0]
            trieuChung['name'] = i[1]
            self.tapTrieuChung.append(trieuChung)
            trieuChung = {}
    def getSuyDienTien(self):
        dbSuyDienTien = mydb.cursor()
        dbSuyDienTien.execute(
            "SELECT law_id, symptom_id, disease_id, symptom.name, disease.name from inference,rule,symptom,disease " + 
            "where inference.law_id = rule.id and inference.disease_id = disease.id and inference.symptom_id = symptom.id and rule.type ='tien' ORDER BY symptom_id "
        )
        sdt = dbSuyDienTien.fetchall()
        for i in range(len(sdt)):
            rule = Rule(sdt[i][0], Symptom(sdt[i][1], sdt[i][3]), Disease(sdt[i][2], sdt[i][4]))
            self.tapSuyDienTien.append(rule)

    def getSuyDienLui(self,benhNghiNgo):
        value =""
        for i in range(len(benhNghiNgo)):
            # print("Bệnh", benhNghiNgo[i])
            value+= "disease_id="
            if(i!=len(benhNghiNgo)-1):
                value+= "'" + benhNghiNgo[i].id+ "' OR "
            else :
                value+= "'" + benhNghiNgo[i].id+ "'"
        dbSuyDienLui = mydb.cursor()
        print("Value", value)
        dbSuyDienLui.execute(
            "select * from inference " +
            "left join rule on inference.law_id = rule.id " +
            "left join cause on inference.cause_id = cause.id " +
            "left join symptom on inference.symptom_id = symptom.id " +
            "where rule.type='lui' and ( "+value+" )  ORDER BY disease_id,inference.id,symptom_id,cause_id"
        )
        sdl = dbSuyDienLui.fetchall()
        left = []
        right = ""
        causes = []
        symptoms = []
        law_id = sdl[0][1]
        luatSuyDienLui = {}

        for i in range (len(sdl)):
            # format các TC rời rạc thành 1 mảng TC theo các bệnh
            if(sdl[i][1] != law_id):
                luatSuyDienLui['rule_id'] = law_id
                luatSuyDienLui['left'] = left
                luatSuyDienLui['right'] = right
                self.tapSuyDienLui.append(luatSuyDienLui)
                luatSuyDienLui ={}
                law_id = sdl[i][1]
                left = []
                right = ""
            right = sdl[i][4]

            # khoi tao đối tượng Cause
            cause_id = sdl[i][3]
            if(cause_id!=None):
                cause_content = sdl[i][8]
                causes.append(Cause(cause_id, cause_content))
                left.append(Cause(cause_id, cause_content))

            # khoi tao doi tuong Symptom
            else :
                symptom_id = sdl[i][9]
                symptom_name = sdl[i][10]
                symptoms.append(Symptom(symptom_id, symptom_name))
                left.append(Symptom(symptom_id, symptom_name))
    
        luatSuyDienLui['rule_id'] = law_id
        luatSuyDienLui['left'] = left
        luatSuyDienLui['right'] = right
        self.tapSuyDienLui.append(luatSuyDienLui)

# if __name__ == '__main__':
#     converter = Converter()
#     converter.getSuyDienTien()
#     converter.getSuyDienLui(['B3'])
    
    




    