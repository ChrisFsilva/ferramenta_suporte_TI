@echo off
title MENU DE SUPORTE TECNICO V2.0
color 0A

:: ===========================================
:: Verifica se o script foi executado como administrador
:: ===========================================
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    echo Este script precisa ser executado como administrador.
    pause
    exit /b
)

:MENU
cls
echo ==============================================
echo           MENU DE SUPORTE TECNICO - V2.0
echo           por Christopher A.F. Silva
echo ==============================================
echo.
echo  1. Ferramentas de Sistema
echo  2. Ferramentas de Rede
echo  3. Ferramentas de Disco
echo  4. Utilidades e Manutencao
echo  5. Atualizacoes de Politicas
echo  6. Detalhes do equipamento
echo  =============================================
echo  7. Ferramentas V.tal
echo  =============================================

echo  0. Sair
echo ==============================================
set /p opcao=Escolha uma opcao (1-6): 

if "%opcao%"=="1" goto SISTEMA
if "%opcao%"=="2" goto REDE
if "%opcao%"=="3" goto DISCO
if "%opcao%"=="4" goto UTIL
if "%opcao%"=="5" goto UPDATE
if "%opcao%"=="6" goto INFO
if "%opcao%"=="7" goto VTAL
if "%opcao%"=="0" exit

goto MENU

:: ===========================================
:: SUBMENU: SISTEMA
:: ===========================================
:SISTEMA
cls
echo ==============================================
echo        FERRAMENTAS DE SISTEMA
echo ==============================================
echo  1. Reparação do windows (SFC)
echo  2. Verificar Erros de Memoria
echo  3. Informacoes do Sistema
echo  4. Criar Ponto de Restauracao
echo  5. Emitir relatorio de bateria
echo  0. Voltar ao Menu Principal
echo ==============================================
set /p opcao=Escolha uma opcao (1-5): 

if "%opcao%"=="1" sfc /scannow
if "%opcao%"=="2" mdsched
if "%opcao%"=="3" systeminfo | more
if "%opcao%"=="4" powershell -Command "Checkpoint-Computer -Description 'Ponto de Restauracao Manual'"
if "%opcao%"=="5" powercfg /batteryreport
if "%opcao%"=="0" goto MENU
pause
goto SISTEMA

:: ===========================================
:: SUBMENU: REDE
:: ===========================================
:REDE
cls
echo ==============================================
echo            FERRAMENTAS DE REDE
echo ==============================================
echo  1. Detalhamento de rede
echo  2. Limpar Cache DNS
echo  3. Reiniciar Servicos de Rede
echo  4. Desativar Firewall do Windows
echo  5. Verificar Conectividade (Ping Google)
echo  6. Mapear caminho de rede
echo  0. Voltar ao Menu Principal
echo ==============================================
set /p opcao=Escolha uma opcao (1-6): 

if "%opcao%"=="1" ipconfig /all
if "%opcao%"=="2" ipconfig /flushdns
if "%opcao%"=="3" netsh winsock reset & netsh int ip reset
if "%opcao%"=="4" netsh advfirewall set allprofiles state off
if "%opcao%"=="5" ping 8.8.8.8 -n 5 & pause
if "%opcao%"=="6" (
    echo  Primeiro uso pode apresentar erro, neste caso tente novamente
    set /p gateway=Digite host ou gateway a ser mapeado: 
    tracert "%gateway%"
)
if "%opcao%"=="0" goto MENU
pause
goto REDE

:: ===========================================
:: SUBMENU: DISCO
:: ===========================================
:DISCO
cls
echo ==============================================
echo           FERRAMENTAS DE DISCO
echo ==============================================
echo  1. Verificar e Reparar Disco (CHKDSK)
echo  2. Desfragmentar Disco
echo  3. Testar Velocidade do Disco
echo  0. Voltar ao Menu Principal
echo ==============================================
set /p opcao=Escolha uma opcao (1-3): 

if "%opcao%"=="1" chkdsk
if "%opcao%"=="2" defrag C:
if "%opcao%"=="3" winsat disk
if "%opcao%"=="0" goto MENU
pause
goto DISCO

:: ===========================================
:: SUBMENU: UTILIDADES
:: ===========================================
:UTIL
cls
echo ==============================================
echo         UTILITARIOS E MANUTENCAO
echo ==============================================
echo  1. Limpeza de disco
echo  2. Gerenciar Processos (Task Manager)
echo  3. Visualizar Logs de Eventos
echo  4. Limpeza de arquivos temporarios
echo  0. Voltar ao Menu Principal
echo ==============================================
set /p opcao=Escolha uma opcao (1-4): 

if "%opcao%"=="1" cleanmgr
if "%opcao%"=="2" taskmgr
if "%opcao%"=="3" eventvwr
if "%opcao%"=="4" (
    echo  Primeiro uso pode apresentar erro, neste caso tente novamente
    set /p usuario=Digite o login VT do usuario: 
    del /q/f/s C:\Users\"%usuario%"\AppData\Local\Temp\*
    
)
if "%opcao%"=="0" goto MENU
pause
goto UTIL

:: ===========================================
:: SUBMENU: ATUALIZACOES E POLITICAS
:: ===========================================
:UPDATE
cls
echo ==============================================
echo     ATUALIZACOES E POLITICAS DE SISTEMA
echo ==============================================
echo  1. Atualizar Todos os Programas (Winget Update)
echo  2. Verificar Atualizacoes do Windows
echo  3. Forcar Aplicacao das Politicas de Grupo
echo  0. Voltar ao Menu Principal
echo ==============================================
set /p opcao=Escolha uma opcao (1-3): 

if "%opcao%"=="1" winget update --all
if "%opcao%"=="2" powershell -command "Get-WindowsUpdateLog"
if "%opcao%"=="3" gpupdate /force

if "%opcao%"=="0" goto MENU
pause
goto UPDATE

:: ===========================================
:: SUBMENU: INFORMACOES DO EQUIPAMENTO
:: ===========================================
:INFO
cls
echo ==============================================
echo     ATUALIZACOES E POLITICAS DE SISTEMA
echo ==============================================
echo  1. Informar Hostname
echo  2. Informar serial number
echo  3. Versão do SO (Windows)
echo  4. Informar IP
echo  5. Informar dados de rede
acho  6. Informacoes de hardware
echo  0. Voltar ao Menu Principal
echo ==============================================
set /p opcao=Escolha uma opcao (1-6): 

if "%opcao%"=="1" hostname
if "%opcao%"=="2" wmic bios get serialnumber
if "%opcao%"=="3" winver
if "%opcao%"=="4" ipconfig
if "%opcao%"=="5" ipconfig /all
if "%opcao%"=="6" systeminfo
if "%opcao%"=="0" goto MENU
pause
goto UPDATE

:: ===========================================
:: SUBMENU: FERRAMENTAS V.TAL
:: ===========================================
:VTAL
cls
echo ==============================================
echo     FERRAMENTAS V.TAL
echo ==============================================
echo  1. Verificar perfil do usuario
echo  0. Voltar ao Menu Principal
echo ==============================================
set /p opcao=Escolha uma opcao (0-1): 

if "%opcao%"=="1" (
    echo  Primeiro uso pode apresentar erro, neste caso tente novamente
    set /p usuario=Digite o login VT do usuario: 
    net user "%usuario%" /do
    pause
)
if "%opcao%"=="0" goto MENU
goto VTAL
