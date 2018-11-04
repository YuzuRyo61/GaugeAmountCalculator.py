#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import subprocess, os, sys

def breaking():
	# PAUSE
	if os.name == 'nt':
		subprocess.call("pause")
	else:
		subprocess.call("read")

if __name__ == "__main__":
	print("=== チュウニズムゲージ量計算機 ===")
	
	# INIT VARIABLE
	notes = None
	bonusBefore = None
	combo = None
	bonus = None
	bonusAfter = None
	rising = None
	gaugeNumber = 0
	vgAmount = 0
	
	# INPUTS
	while True:
		notes = int(input("ノーツ数: "))
		bonusBefore = int(input("開始時のボーナス量: "))
		combo = int(input("ボーナスが入るコンボ数(J-Criticalでボーナスが入る場合は1): "))
		bonus = int(input("一定コンボごとに入るボーナスの量: "))
		bonusAfter = int(input("終了時のボーナス量: "))
		rising = int(input("ゲージ上昇率(%単位、変化しない場合100、上昇しない場合0): "))
		if notes == None or bonusBefore == None or combo == None or bonus == None or bonusAfter == None or rising == None:
			print("E: 一部の値が入力されていません。")
		else:
			break
	
	# CALC
	try:
		timesBonus = int(notes / combo)
		amountBonus = bonus * timesBonus
		risingParcent = rising
		gaugeNormal = 60000 * risingParcent
		amountGauge = gaugeNormal + amountBonus + bonusBefore + bonusAfter
	except Exception:
		print("FATAL: エラーが発生しました。ボーナスが入るコンボを0に設定しましたか？")
		print("FATAL: 開始時と終了時のみボーナスが入る場合は、ボーナスが入るコンボ数に0以外の任意の数字を入れて、ボーナス量を0に設定してください。")
		breaking()
		sys.exit(1)
	
	while vgAmount >= amountGauge:
		gaugeNumber = gaugeNumber + 1
		vgAmount = vgAmount + 10000 + (2000 + gaugeNumber)
	
	# RESULT
	print("ノーツ数: {0}\nボーナス: {1}\n コンボごとに+{2}\nゲージ上昇率: {3}%\n\n増加量理論値: {4}".format(notes, combo, bonus, rising, amountGauge))
	if vgAmount == amountGauge:
		print("理論上到達ゲージ本数: {}".format(gaugeNumber))
	else:
		print("理論上到達ゲージ本数: {}".format(gaugeNumber - 1))
	
	# BREAKING
	breaking()
	sys.exit()
