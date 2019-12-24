function ConnectSQL(){
    let connection = mysql.createConnection({
        host     : 'localhost',
        user     : 'root',
        password : '123456',
        database : 'questionnaire_survey_system'
    });
    connection.connect();
    return connection;
}

// sql语句
var sql = {
    GET_ALL: 'SELECT * FROM questionnaire', 
    GET_QN_LIST: 'SELECT * FROM questionnaire_survey_system.question,questionnaire where question.QID=questionnaire.QID'    
};

ConnectSQL();
console.log(connection.query(sql.GET_ALL,(err,data) => {
    if(err){
        resolve({
          "code": 501,
          "msg": "无法获取问卷列表，请检查网络连接！",
          "data": null
      })
    }
    resolve(data);
}))