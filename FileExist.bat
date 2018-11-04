@Echo Off

Rem スクリプトが置かれている場所をカレントディレクトリに変更
Cd /d %~dp0

Rem ファイル存在チェックを実行する繰り返し間隔 (秒)
Set BREAK_SEC=5
Rem 存在チェックするファイル名
Set FILE_NAME=hoge*.*
Rem コピー先のファイルパス
Rem Set COPY_FILE_PATH=C:\hogehoge
Set COPY_FILE_PATH=C:\private\filewatch\移動先

Rem 待ち時間を表現するドット
Set DOTS=.

:DO_WHILE
Cls
Echo ファイル監視
Echo 中断する際は Ctrl + C を入力してください...

Rem 所定ファイルが存在しない場合
If Not EXIST %FILE_NAME% (
  Set DOTS=%DOTS%.
  Echo %DOTS%
  Rem プログラム待機（空ファイルにリダイレクト）
  Timeout /t %BREAK_SEC% /nobreak > Nul
  GoTo DO_WHILE
)

copy %FILE_NAME% %COPY_FILE_PATH%

Pause

Exit /b
