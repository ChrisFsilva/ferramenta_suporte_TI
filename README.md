<h1 align="center">Menu de Suporte Técnico – Automação em Batcht</h1>			
<br>
<h4 align="center"> 💻 Em produção 💻 </h4>
<h3 align="center">Ferramenta batch para automação de atividades do suporte técnico</h3>

Tabela de conteúdos
=================
<!--ts-->
   * [Sobre o projeto](#-sobre-o-projeto)
     * [Problemas-resolvidos](#-problemas-resolvidos)
   * [Layout](#-layout)
   * [Como executar o projeto](#-como-executar-o-projeto)
     * [Pré-requisitos](#pré-requisitos)
     * [Funcionalidades](#funcionalidades)
   * [Tecnologias](#-tecnologias)
   * [Autor](#-autor)
   * [Licença](#-licença)
<!--te-->

## 💻 Sobre o projeto

Este projeto é um script em Batch (.bat) desenvolvido para automatizar rotinas de suporte técnico no Windows, centralizando comandos administrativos em um menu interativo e intuitivo.
O objetivo é reduzir o tempo de execução de tarefas repetitivas, padronizar procedimentos e aumentar a produtividade do time de TI.
Com este menu, o técnico pode realizar ações como consultas de rede, gerenciamento de usuários, diagnóstico de conectividade, e muito mais — sem precisar lembrar cada comando manualmente.

## 🚀 Funcionalidades principais
```bash
📁 Menu principal e submenus interativos para navegação simples.
👤 Gerenciamento de usuários (net user) com entrada personalizada.
🌐 Testes de rede rápidos (ping, ipconfig, nslookup, tracert).
⚙️ Ferramentas administrativas (como abrir gerenciadores, serviços e logs).
🧩 Estrutura modular, facilitando a adição de novos comandos e menus.
🔒 Execução local sem dependências externas — funciona em qualquer Windows.
🧱 Exemplo de uso
```

Ao executar o arquivo .bat, o usuário visualiza o menu principal com opções numeradas, podendo navegar pelos submenus para executar ações específicas.
Exemplo de interação:
```bash
===== MENU SUPORTE TÉCNICO =====
1 - Testes de Rede
2 - Usuários
3 - Ferramentas
0 - Sair
Escolha uma opção: 2

===== GERENCIAMENTO DE USUÁRIOS =====
Digite o nome do usuário: suporte.local
Executando: net user suporte.local /do

O sistema coleta o nome informado pelo técnico e executa o comando net user <usuario> /do, permitindo diagnóstico rápido e personalizado de usuários locais.
```

## ⚙️ Como executar
```bash
Pré-requisitos
Windows 10 ou superior
Permissões de administrador (para alguns comandos)

1. Faça o download do arquivo Menu_Suporte_Tecnico_V2.bat
2. Salve-o em uma pasta local (ex: C:\Scripts\)
3. Clique com o botão direito e selecione "Executar como administrador"
```

## 🧩 Estrutura modular
O script é construído de forma que novas funções possam ser facilmente adicionadas:
```bash
:submenu_usuarios
set /p usuario="Digite o nome do usuário: "
net user %usuario% /do
pause
goto menu_principal

Isso permite escalar o menu conforme as necessidades da equipe de TI, criando um painel de automação local totalmente personalizado.
```

## 🧠 Benefícios técnicos
```bash
🚀 Produtividade: automatiza tarefas repetitivas e evita erros manuais.
🧩 Escalabilidade: estrutura modular e simples de editar.
🔐 Controle: mantém todos os comandos padronizados num único script.
🪶 Leveza: roda sem dependências, usando apenas o interpretador nativo do Windows (cmd.exe).
```

## 🦸🏻‍♂️ Autor

 <br>
  <sub><b><p>Christopher Silva</p></b></sub></a>
 <br />

[![Linkedin Badge](https://img.shields.io/badge/-Christopher%20Silva-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/chris-f-silva//)](https://www.linkedin.com/in/chris-f-silva/) 
[![Gmail Badge](https://img.shields.io/badge/-chrisspfc.silva@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:daniel.rodrigues.soarees@gmail.com)](mailto:chrisspfc.silva@gmail.com)

---

## 📝 Licença

Este projeto está licenciado sob a licença MIT - veja o arquivo LICENSE para mais detalhes. [MIT](./LICENSE)

Feito por: Christopher Silva
</div>
