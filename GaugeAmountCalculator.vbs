Dim notes, combo, bonus, rising, timesBonus, amountBonus, risingPercent, gaugeNormal, amountGauge, gaugeNumber, vgAmount

notes = Inputbox("ノーツ数を入力してください")
combo = Inputbox("ボーナスが入るコンボ数を入力してください(J-Criticalでボーナスが入る場合は1と入力してください")
bonus = Inputbox("ボーナスの量を入力してください")
rising = Inputbox("ゲージ上昇率を%単位で入力してください(上昇しない場合、0と入力してください)")
timesBonus = Int(notes / combo)
amountBonus = bonus * timesBonus
risingPercent = rising / 100
gaugeNormal = 60000 * risingPercent
amountGauge = gaugeNormal + amountBonus

gaugeNumber = 0
vgAmount = 0

Do Until vgAmount >= amountGauge
	gaugeNumber = gaugeNumber + 1
	vgAmount = vgAmount + 10000 + (2000 * gaugeNumber)
Loop

If vgAmount = amountGauge Then

MsgBox("ノーツ数:" & notes & vbCr & "ボーナス:" & combo & "コンボごとに+" & bonus & vbCr & "ゲージ上昇率:" & rising & "%" & vbCr & vbCr & "増加量理論値:" & amountGauge & vbCr & "理論上到達ゲージ本数:" & gaugeNumber)

Else

MsgBox("ノーツ数:" & notes & vbCr & "ボーナス:" & combo & "コンボごとに+" & bonus & vbCr & "ゲージ上昇率:" & rising & "%" & vbCr & vbCr & "増加量理論値:" & amountGauge & vbCr & "理論上到達ゲージ本数:" & gaugeNumber - 1)

End If