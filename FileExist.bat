@Echo Off

Rem �X�N���v�g���u����Ă���ꏊ���J�����g�f�B���N�g���ɕύX
Cd /d %~dp0

Rem �t�@�C�����݃`�F�b�N�����s����J��Ԃ��Ԋu (�b)
Set BREAK_SEC=5
Rem ���݃`�F�b�N����t�@�C����
Set FILE_NAME=hoge*.*
Rem �R�s�[��̃t�@�C���p�X
Rem Set COPY_FILE_PATH=C:\hogehoge
Set COPY_FILE_PATH=C:\private\filewatch\�ړ���

Rem �҂����Ԃ�\������h�b�g
Set DOTS=.

:DO_WHILE
Cls
Echo �t�@�C���Ď�
Echo ���f����ۂ� Ctrl + C ����͂��Ă�������...

Rem ����t�@�C�������݂��Ȃ��ꍇ
If Not EXIST %FILE_NAME% (
  Set DOTS=%DOTS%.
  Echo %DOTS%
  Rem �v���O�����ҋ@�i��t�@�C���Ƀ��_�C���N�g�j
  Timeout /t %BREAK_SEC% /nobreak > Nul
  GoTo DO_WHILE
)

copy %FILE_NAME% %COPY_FILE_PATH%

Pause

Exit /b
