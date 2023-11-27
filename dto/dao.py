import re

import mysql.connector
import json
from dto.cause import Cause
from dto.sympton import Symptom

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
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
            "SELECT law_id,symptom_id,disease_id from inference,rule where inference.law_id = rule.id and rule.type ='tien' ORDER BY symptom_id  "
        )
        sdt = dbSuyDienTien.fetchall()
        # trieuChung = []
        # benh = []
        luatSuyDienTien = {}
        for i in range(len(sdt)):
            luatSuyDienTien['idLuat'] = sdt[i][0]
            luatSuyDienTien['trieuChung'] = sdt[i][1]
            luatSuyDienTien['benh'] = sdt[i][2]
            self.tapSuyDienTien.append(luatSuyDienTien)
            luatSuyDienTien ={}
    def getSuyDienLui(self,benhNghiNgo):
        value =""
        for i in range(len(benhNghiNgo)):
            value+= "disease_id="
            if(i!=len(benhNghiNgo)-1):
                value+= "'" + benhNghiNgo[i]+ "' OR "
            else :
                value+= "'" + benhNghiNgo[i]+ "'"
        dbSuyDienLui = mydb.cursor()
        # dbSuyDienLui.execute(
        #      "SELECT law_id,symptom_id,cause_id,disease_id, symptom.name, cause.content from inference,rule where inference.law_id = rule.id and rule.type ='lui' and ("+value+" ) ORDER BY disease_id,law_id,symptom_id,cause_id  "
        # )

        # format: id, law_id, symptom_id, Cause_id, disease_id, id, type, id, content, id, name
        dbSuyDienLui.execute(
            "select * from inference " +
            "left join rule on inference.law_id = rule.id " +
            "left join cause on inference.cause_id = cause.id " +
            "left join symptom on inference.symptom_id = symptom.id " +
            "where disease_id = ("+value+")"
        )
        sdl = dbSuyDienLui.fetchall()
        print(sdl)
        left = []
        right = ""
        rules = []
        causes = []
        symptoms = []
        law_id = sdl[0][0];
        luatSuyDienLui = {}

        for i in range (len(sdl)):
            # format các TC rời rạc thành 1 mảng TC theo các bệnh
            if(sdl[i][0] != law_id):
                luatSuyDienLui['rule_id'] = law_id
                luatSuyDienLui['left'] = left
                luatSuyDienLui['right'] = right
                self.tapSuyDienLui.append(luatSuyDienLui)
                luatSuyDienLui ={}
                law_id = sdl[i][0]
                left = []
                right = ""
            left.append( sdl[i][1] if sdl[i][1] != None else sdl[i][2])
            right = sdl[i][3]

            # khoi tao đối tượng Cause
            cause_id = sdl[i][3]
            cause_content = sdl[i][8]
            causes.append(Cause(cause_id, cause_content))

            # khoi tao doi tuong Symptom
            symptom_id = sdl[i][9]
            symptom_name = sdl[i][10]
            symptoms.append(Symptom(symptom_id, symptom_name))


        #print(self.tapSuyDienLui)


if __name__ == '__main__':
    converter = Converter()
    converter.getSuyDienTien()
    converter.getSuyDienLui(['B1','B2'])
    




    