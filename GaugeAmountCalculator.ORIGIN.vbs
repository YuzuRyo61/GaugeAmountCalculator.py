Option Explicit

Dim notes, combo, bonus, rising, timesBonus, amountBonus, risingPercent, gaugeNormal, amountGauge, gaugeNumber, vgAmount, bonusformer, bonuslatter

notes = Inputbox("�m�[�c������͂��Ă�������","�`���E�j�Y���Q�[�W�ʌv�Z�@")
bonusformer = Inputbox("�J�n���̃{�[�i�X�ʂ���͂��Ă�������","�`���E�j�Y���Q�[�W�ʌv�Z�@")
combo = Inputbox("�{�[�i�X������R���{������͂��Ă�������(J-Critical�Ń{�[�i�X������ꍇ��1�Ɠ��͂��Ă�������)","�`���E�j�Y���Q�[�W�ʌv�Z�@")
bonus = Inputbox("���R���{���Ƃɓ���{�[�i�X�̗ʂ���͂��Ă�������","�`���E�j�Y���Q�[�W�ʌv�Z�@")
bonuslatter = Inputbox("�I�����̃{�[�i�X�̗ʂ���͂��Ă�������","�`���E�j�Y���Q�[�W�ʌv�Z�@")
rising = Inputbox("�Q�[�W�㏸����%�P�ʂœ��͂��Ă�������(�ω����Ȃ��ꍇ��100�A�㏸���Ȃ��ꍇ��0�Ɠ��͂��Ă�������)","�`���E�j�Y���Q�[�W�ʌv�Z�@")
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

MsgBox("�m�[�c��: " & notes & vbCr & "�{�[�i�X: " & combo & "�R���{���Ƃ�+ " & bonus & vbCr & "�Q�[�W�㏸��: " & rising & "%" & vbCr & vbCr & "�����ʗ��_�l: " & amountGauge & vbCr & "���_�㓞�B�Q�[�W�{�� :" & gaugeNumber)

Else

MsgBox("�m�[�c��: " & notes & vbCr & "�{�[�i�X: " & combo & "�R���{���Ƃ�+ " & bonus & vbCr & "�Q�[�W�㏸��: " & rising & "%" & vbCr & vbCr & "�����ʗ��_�l: " & amountGauge & vbCr & "���_�㓞�B�Q�[�W�{�� :" & gaugeNumber - 1)

End If