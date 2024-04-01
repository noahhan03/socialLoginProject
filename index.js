import bodyParser from 'body-parser';
import express from 'express';
import cors from 'cors';

const serverPort=80; //3000 번 포트로 접속

// 밑과정 , 기초? 기본 설정
const app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:false}));
app.use(cors());
const router = express.Router();

// ping pong 에 대한 함수? 
// request - req , res - result 
const ping = (req,res)=>{
    const result=true;
    res.send({result});
};


// 라우터 접속, ip 처럼 접속

router.route('/ping').get(ping);

app.use('/socialLoginProject/api/v1',router);
app.listen(serverPort);
