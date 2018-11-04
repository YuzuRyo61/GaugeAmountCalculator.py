Option Explicit

Dim notes, combo, bonus, rising, timesBonus, amountBonus, risingPercent, gaugeNormal, amountGauge, gaugeNumber, vgAmount, bonusformer, bonuslatter

notes = Inputbox("ノーツ数を入力してください","チュウニズムゲージ量計算機")
bonusformer = Inputbox("開始時のボーナス量を入力してください","チュウニズムゲージ量計算機")
combo = Inputbox("ボーナスが入るコンボ数を入力してください(J-Criticalでボーナスが入る場合は1と入力してください)","チュウニズムゲージ量計算機")
bonus = Inputbox("一定コンボごとに入るボーナスの量を入力してください","チュウニズムゲージ量計算機")
bonuslatter = Inputbox("終了時のボーナスの量を入力してください","チュウニズムゲージ量計算機")
rising = Inputbox("ゲージ上昇率を%単位で入力してください(変化しない場合は100、上昇しない場合は0と入力してください)","チュウニズムゲージ量計算機")
timesBonus = Int(notes / combo)
amountBonus = bonus * timesBonus
risingPercent = rising / 100
gaugeNormal = 60000 * risingPercent
amountGauge = gaugeNormal + amountBonus + bonusformer + bonuslatter

gaugeNumber = 0
vgAmount = 0

Do Until vgAmount >= amountGauge
	gaugeNumber = gaugeNumber + 1
	vgAmount = vgAmount + 10000 + (2000 * gaugeNumber)
Loop

If vgAmount = amountGauge Then

MsgBox("ノーツ数: " & notes & vbCr & "ボーナス: " & combo & "コンボごとに+ " & bonus & vbCr & "ゲージ上昇率: " & rising & "%" & vbCr & vbCr & "増加量理論値: " & amountGauge & vbCr & "理論上到達ゲージ本数 :" & gaugeNumber)

Else

MsgBox("ノーツ数: " & notes & vbCr & "ボーナス: " & combo & "コンボごとに+ " & bonus & vbCr & "ゲージ上昇率: " & rising & "%" & vbCr & vbCr & "増加量理論値: " & amountGauge & vbCr & "理論上到達ゲージ本数 :" & gaugeNumber - 1)

End If