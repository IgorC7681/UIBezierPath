import UIKit
import PlaygroundSupport

//透明輔助用
//let image = UIImage(named: "Brown-1.png")
//let imageView = UIImageView(image: image)
let rect = CGRect(x: 0, y: 0, width: 420, height: 526)
let backgroundView = UIView(frame: rect)
//backgroundView.addSubview(imageView)
backgroundView.backgroundColor = UIColor(red: 252/255, green: 216/255, blue: 58/255, alpha: 1)
let alpha: CGFloat = 1



//先建立一個起始點
var point = CGPoint(x: 95, y: 526)
//全身------------------------------------------------------------------------------------------
let pathBody = UIBezierPath()

pathBody.move(to: point)
//全身-腰左邊
pathBody.addQuadCurve(to: CGPoint(x: 102, y: 403), controlPoint: CGPoint(x: 53, y: 475))
//全身-頭左下半部
pathBody.addQuadCurve(to: CGPoint(x: 37, y: 285), controlPoint: CGPoint(x: 35, y: 355))
//全身-頭左上半部
pathBody.addQuadCurve(to: CGPoint(x: 92, y: 178), controlPoint: CGPoint(x: 38, y: 215))
//全身-右耳朵左邊部份
pathBody.addQuadCurve(to: CGPoint(x: 106, y: 117), controlPoint: CGPoint(x: 75, y: 141))
//全身-右耳朵右邊部分
pathBody.addQuadCurve(to: CGPoint(x: 166, y: 141), controlPoint: CGPoint(x: 150, y: 103))
//全身-頭頂
pathBody.addQuadCurve(to: CGPoint(x: 258, y: 140), controlPoint: CGPoint(x: 210, y: 130))
//全身-左耳朵左邊部分
pathBody.addQuadCurve(to: CGPoint(x: 315, y: 116), controlPoint: CGPoint(x: 275, y: 100))
//全身-左耳朵右邊部分
pathBody.addQuadCurve(to: CGPoint(x: 332, y: 177), controlPoint: CGPoint(x: 345, y: 135))
//全身-頭右上半部
pathBody.addQuadCurve(to: CGPoint(x: 385, y: 285), controlPoint: CGPoint(x: 380, y: 210))
//全身-頭右下半部
pathBody.addQuadCurve(to: CGPoint(x: 317, y: 401), controlPoint: CGPoint(x: 380, y: 360))
//全身-腰右邊
pathBody.addQuadCurve(to: CGPoint(x: 323, y: 526), controlPoint: CGPoint(x: 367, y: 480))
pathBody.close()
//轉換 CAShapeLayer 全身
let bodyShapeLayer = CAShapeLayer()
bodyShapeLayer.path = pathBody.cgPath
//製作成view 全身
let bodyView = UIView(frame: CGRect(x: 0, y: 0, width: 420, height: 526))
bodyView.backgroundColor = UIColor(red: 130/255, green: 80/255, blue: 57/255, alpha: alpha)
bodyView.layer.mask = bodyShapeLayer



//右內耳------------------------------------------------------------------------------------------
let pathRightEar = UIBezierPath()
//起始點
point = CGPoint(x: 110, y: 172)

pathRightEar.move(to: point)
//右內耳-左半部
pathRightEar.addQuadCurve(to: CGPoint(x: 114, y: 129), controlPoint: CGPoint(x: 95, y: 148))
//右內耳-右半部
pathRightEar.addQuadCurve(to: CGPoint(x: 152, y: 148), controlPoint: CGPoint(x: 142, y: 120))
//右內耳-底部
pathRightEar.close()
//轉換 CAShapeLayer 右內耳
let rightEarShapeLayer = CAShapeLayer()
rightEarShapeLayer.path = pathRightEar.cgPath
//製作成view 右內耳
let rightEarView = UIView(frame: CGRect(x: 0, y: 0, width: 420, height: 526))
rightEarView.backgroundColor = UIColor(red: 79/255, green: 48/255, blue: 42/255, alpha: alpha)
rightEarView.layer.mask = rightEarShapeLayer



//左內耳------------------------------------------------------------------------------------------
let pathLeftEar = UIBezierPath()
//起始點
point = CGPoint(x: 274, y: 147)

pathLeftEar.move(to: point)
//左內耳-左半部
pathLeftEar.addQuadCurve(to: CGPoint(x: 311, y: 129), controlPoint: CGPoint(x: 285, y: 117))
//左內耳-右半部
pathLeftEar.addQuadCurve(to: CGPoint(x: 317, y: 171), controlPoint: CGPoint(x: 328, y: 145))
//左內耳-底部
pathLeftEar.close()
//轉換 CAShapeLayer 左內耳
let leftEarShapeLayer = CAShapeLayer()
leftEarShapeLayer.path = pathLeftEar.cgPath
//製作成view 左內耳
let leftEarView = UIView(frame: CGRect(x: 0, y: 0, width: 420, height: 526))
leftEarView.backgroundColor = UIColor(red: 79/255, green: 48/255, blue: 42/255, alpha: alpha)
leftEarView.layer.mask = leftEarShapeLayer



//右眼睛(畫一個圓的View)-----------------------------------------------------------------------------
let rightEyeView = UIView(frame: CGRect(x: 178, y: 226.7, width: 22.5, height: 22.5))
rightEyeView.layer.cornerRadius = rightEyeView.frame.width / 2
rightEyeView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: alpha)



//左眼睛(畫一個圓的View)-----------------------------------------------------------------------------
let leftEyeView = UIView(frame: CGRect(x: 220.7, y: 226, width: 22.5, height: 22.5))
leftEyeView.layer.cornerRadius = leftEyeView.frame.width / 2
leftEyeView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: alpha)



//中間臉部ㄋ(畫一個橢圓的View)------------------------------------------------------------------------
let faceView = UIView(frame: CGRect(x: 174, y: 250, width: 75, height: 90))
faceView.layer.cornerRadius = faceView.frame.height / 2
faceView.backgroundColor = UIColor(red: 227/255, green: 201/255, blue: 187/255, alpha: alpha)



//鼻子+嘴巴----------------------------------------------------------------------------------------
let pathNose = UIBezierPath()
//起始點
point = CGPoint(x: 196, y: 260)

pathNose.move(to: point)
//小鬍子正中間左上
pathNose.addQuadCurve(to: CGPoint(x: 207, y: 278), controlPoint: CGPoint(x: 200, y: 275))
//小鬍子正中間左下
pathNose.addLine(to: CGPoint(x: 207, y: 294))
//左邊嘴巴下面*2
pathNose.addLine(to: CGPoint(x: 195, y: 318))
//左邊嘴巴下面*2
pathNose.addQuadCurve(to: CGPoint(x: 201, y: 323), controlPoint: CGPoint(x: 194, y: 324))
//小鬍子正中間下面
pathNose.addLine(to: CGPoint(x: 211, y: 301))
//右邊嘴巴下面*2
pathNose.addLine(to: CGPoint(x: 222, y: 314))
//右邊嘴巴下面*2
pathNose.addQuadCurve(to: CGPoint(x: 228, y: 310), controlPoint: CGPoint(x: 228, y: 312))
//小鬍子正中間右下
pathNose.addLine(to: CGPoint(x: 214, y: 293))
//小鬍子正中間右上
pathNose.addLine(to: CGPoint(x: 214, y: 278))
//鼻子右上角
pathNose.addQuadCurve(to: CGPoint(x: 224, y: 260), controlPoint: CGPoint(x: 223, y: 272))
//回到最鼻子左上角
pathNose.addQuadCurve(to: CGPoint(x: 196, y: 260), controlPoint: CGPoint(x: 212, y: 255))
pathNose.close()
//轉換 CAShapeLayer 鼻子+嘴巴
let noseShapeLayer = CAShapeLayer()
noseShapeLayer.path = pathNose.cgPath
//製作成view 鼻子+嘴巴
let noseView = UIView(frame: CGRect(x: 0, y: 0, width: 420, height: 526))
noseView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: alpha)
noseView.layer.mask = noseShapeLayer



//身上線條----------------------------------------------------------------------------------------
let path = UIBezierPath()
//起始點
point = CGPoint(x: 102, y: 403)

path.move(to: point)
//最左邊的點開始往右手外緣上半部
path.addLine(to: CGPoint(x: 145, y: 422))
//右手外緣上半部到左右手外緣交會點
path.addQuadCurve(to: CGPoint(x: 211, y: 416), controlPoint: CGPoint(x: 180, y: 394))
//左右手外緣交會點到左手外緣上半部
path.addQuadCurve(to: CGPoint(x: 273, y: 419), controlPoint: CGPoint(x: 232, y: 395))
//左手外緣上半部到最右邊的點
path.addLine(to: CGPoint(x: 318, y: 400))
//最右邊的點到左手手臂
path.addQuadCurve(to: CGPoint(x: 279, y: 423), controlPoint: CGPoint(x: 302, y: 416))
//左手手臂到左手手肘
path.addQuadCurve(to: CGPoint(x: 302, y: 464), controlPoint: CGPoint(x: 292, y: 435))
//左手手肘到左手手臂內側中間點
path.addQuadCurve(to: CGPoint(x: 263, y: 420), controlPoint: CGPoint(x: 279, y: 426))
//左手手臂內側中間點到左右手內緣交會點
path.addQuadCurve(to: CGPoint(x: 215, y: 420), controlPoint: CGPoint(x: 236, y: 405))
//左右手內緣交會點到左右手臂交會點(左手內)
path.addQuadCurve(to: CGPoint(x: 213, y: 498), controlPoint: CGPoint(x: 244, y: 456))
//左右手臂交會點到水左手肘最下方
path.addQuadCurve(to: CGPoint(x: 248, y: 526), controlPoint: CGPoint(x: 225, y: 515))
//左手肘最下方增加線條
path.addLine(to: CGPoint(x: 238, y: 526))
//左手肘最下方到左右手臂外緣交會點
path.addQuadCurve(to: CGPoint(x: 210, y: 502), controlPoint: CGPoint(x: 220, y: 517))
//左右手臂外緣交會點到右手肘
path.addQuadCurve(to: CGPoint(x: 183, y: 526), controlPoint: CGPoint(x: 198, y: 517))
//右手肘最下方增加線條
path.addLine(to: CGPoint(x: 171, y: 526))
//右手肘最下方到左右手臂交會點(右手內)
path.addQuadCurve(to: CGPoint(x: 222, y: 467), controlPoint: CGPoint(x: 213, y: 500))
//左右手手臂交會點到右手內緣最上方
path.addQuadCurve(to: CGPoint(x: 180, y: 413), controlPoint: CGPoint(x: 227, y: 417))
//右手內緣最上方到右手手肘
path.addQuadCurve(to: CGPoint(x: 116, y: 469), controlPoint: CGPoint(x: 144, y: 415))
//右手手肘到右手手臂
path.addQuadCurve(to: CGPoint(x: 140, y: 424), controlPoint: CGPoint(x: 124, y: 440))
//右手手臂到起始點
path.addQuadCurve(to: CGPoint(x: 102, y: 403), controlPoint: CGPoint(x: 117, y: 418))
path.close()
//轉換 CAShapeLayer 身上線條
let pathShapeLayer = CAShapeLayer()
pathShapeLayer.path = path.cgPath
//製作成view 身上線條
let pathView = UIView(frame: CGRect(x: 0, y: 0, width: 420, height: 526))
pathView.backgroundColor = UIColor(red: 88/255, green: 56/255, blue: 44/255, alpha: alpha)
pathView.layer.mask = pathShapeLayer



//把所有的view都丟到底圖上就完成了-------------------------------------------------------------------
backgroundView.addSubview(bodyView)
backgroundView.addSubview(rightEarView)
backgroundView.addSubview(leftEarView)
backgroundView.addSubview(rightEyeView)
backgroundView.addSubview(leftEyeView)
backgroundView.addSubview(faceView)
backgroundView.addSubview(noseView)
backgroundView.addSubview(pathView)

PlaygroundPage.current.liveView = backgroundView
