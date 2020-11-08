import strutils
import tables

# https://www.nomuramath.com/kv8wr0mp/
const BLACK:         string = "\e[30m" #(文字)黒
const RED:           string = "\e[31m" #(文字)赤
const GREEN:         string = "\e[32m" #(文字)緑
const YELLOW:        string = "\e[33m" #(文字)黄
const BLUE:          string = "\e[34m" #(文字)青
const MAGENTA:       string = "\e[35m" #(文字)マゼンタ
const CYAN:          string = "\e[36m" #(文字)シアン
const WHITE:         string = "\e[37m" #(文字)白
const COLOR_DEFAULT: string = "\e[39m" #文字色をデフォルトに戻す
const BOLD:          string = "\e[1m" #太字
const UNDERLINE:     string = "\e[4m" #下線
const INVISIBLE:     string = "\e[08m" #不可視
const REVERCE:       string = "\e[07m" #文字色と背景色を反転
const BG_BLACK:      string = "\e[40m" #(背景)黒
const BG_RED:        string = "\e[41m" #(背景)赤
const BG_GREEN:      string = "\e[42m" #(背景)緑
const BG_YELLOW:     string = "\e[43m" #(背景)黄
const BG_BLUE:       string = "\e[44m" #(背景)青
const BG_MAGENTA:    string = "\e[45m" #(背景)マゼンタ
const BG_CYAN:       string = "\e[46m" #(背景)シアン
const BG_WHITE:      string = "\e[47m" #(背景)白
const BG_DEFAULT:    string = "\e[49m" #背景色をデフォルトに戻す
const RESET:         string = "\e[0m" #全てリセット

let SEVERITIES = {
  "emerg": [BG_MAGENTA, BOLD].join(),
  "alert": BG_RED,
  "crit": BG_YELLOW,
  "err": RED,
  "warn": YELLOW,
  "debug": GREEN
}.toTable

while true:
  var much: bool   = false
  var line: string = readLine(stdin)
  for k,v in SEVERITIES:
    if k in line:
      echo v, line, RESET
      much = true
      break
  if much == false:
    echo line
