from flask import Flask, jsonify
import mysql.connector
d={
    1:9,
    2:8,
    3:7,
    4:6,
    5:5
}
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="root",
  database="notice_board"
)
c=mydb.cursor()
app = Flask(__name__)
app.debug = True
@app.route("/getNoticeBoard/<div>/<sem>/")
def returnresult(div,sem):
    division=div[-1:]
    res={}
    for i in range(1,6):
        c.execute("select name from subject where id=%s",(i,))
        r=c.fetchone()
        res[r[0]]={}
        d1={}
        c.execute("select name,sr_no,given_on,deadline_"+division+"1,deadline_"+division+"2,deadline_"+division+"3,deadline_"+division+"4,links from assignments where subject_id= %s",(i,))
        #fetch assignments
        assign=[]
        for j in c.fetchall():
            assign.append({"name":j[0],"sr_no":j[1],"given-on":j[2],"deadline":[j[3],j[4],j[5],j[6]],"link":j[7]})
        d1["assign"]=assign
        exp=[]
        #fetch experiments
        c.execute("select name,sr_no,given_on,deadline_"+division+"1,deadline_"+division+"2,deadline_"+division+"3,deadline_"+division+"4,links from experiments where subject_id= %s",(d[i],))
        for j in c.fetchall():
            exp.append({"name":j[0],"sr_no":j[1],"given-on":j[2],"deadline":[j[3],j[4],j[5],j[6]],"link":j[7]})
        d1["experiment"]=exp
        #fetch syllabus
        c.execute("select distinct module_id from syllabus where subject_id=%s",(i,))
        t=c.fetchall()
        module=[]
        print(t)
        for j in t:
            c.execute("select topic_id from syllabus where subject_id= %s and module_id= %s",(i,j[0]))
            tp=c.fetchall()
            topics=[]
            for k in tp:
                c.execute("select topic_id,topic_name,taught_on_"+division+",status_"+division+",links from syllabus where subject_id=%s and topic_id=%s and module_id=%s",(i,k[0],j[0]))
                for l in c.fetchall():
                    topics.append({"id":l[0],"topic-name":l[1],"taught-on":l[2],"status":l[3],"links":l[4]})
            c.execute("select module from syllabus where module_id =%s and subject_id=%s",(j[0],i))
            for k in c.fetchall():
                module.append({"id":j[0],"name":k[0],"topics":topics})
        d1["syl"]=module
        res[r[0]]=d1
    print(res)
    return jsonify(res)
if __name__ == '__main__':
    app.run(debug=True)
            