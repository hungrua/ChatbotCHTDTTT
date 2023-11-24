import re

import mysql.connector
import json
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="1234",
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

            # trieuChung.append(sdt[i][1])
            # benh.append(sdt[i][2])
        # tmp = trieuChung[0]
        # benhCuaTrieuChung = []
        
        # for i in range(len(trieuChung)):
        #     if(tmp == trieuChung[i]):
        #         benhCuaTrieuChung.append(benh[i])
        #     else :
        #         luatSuyDienTien['trieuChung'] = tmp
        #         luatSuyDienTien['benh']= benhCuaTrieuChung
        #         self.tapSuyDienTien.append(luatSuyDienTien)
        #         luatSuyDienTien={}
        #         tmp = trieuChung[i]
        #         benhCuaTrieuChung = []
        #         benhCuaTrieuChung.append(benh[i])
if __name__ == '__main__':
    converter = Converter()
    converter.getSuyDienTien()
    




    