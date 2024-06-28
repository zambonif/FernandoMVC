@echo off

setlocal EnableDelayedExpansion

:inicio

echo Digite o nome do arquivo SQL:
set /p nomeArquivo=

if not defined nomeArquivo (
    echo Nome do arquivo não informado.
    goto :fim
)

echo Verificando se o arquivo %nomeArquivo% existe...

if not exist %nomeArquivo% (
    echo Arquivo não encontrado.
    goto :fim
)

echo Importando o arquivo %nomeArquivo% para o banco de dados...

d:\dropbox\fernando\programas\xampp\mysql\bin\mysql -u root < %nomeArquivo%

if %errorlevel% == 0 (
    echo Importação concluída com sucesso!
) else (
    echo Falha na importação. Verifique o log de erros do MySQL.
)

:fim

pause
