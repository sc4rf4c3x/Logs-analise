# 📘 Projeto 3 – Central de Logs & Análise

Este é o **Projeto 3** da minha jornada de 50 projetos práticos para dominar Linux.

Aqui criamos um ambiente completo de geração, organização e análise de logs, simulando atividades reais de um administrador de sistemas.

---

## 🎯 Objetivo

O projeto ensina a:

- Criar logs e preencher automaticamente
- Filtrar dados importantes
- Gerar relatórios automáticos
- Contar linhas, ver conteúdo parcial e completo
- Organizar backups
- Usar `grep`, `head`, `wc`, `cat` e pipeline (`|`)

É um exercício realista, utilizado em monitoramento de sistemas e diagnósticos.

---

## 🛠️ Comandos Usados

### **Do projeto anterior**
`pwd`, `mkdir`, `ls`, `cd`, `touch`, `cp`, `mv`, `rm`

### **Novos comandos**
| Comando | Função |
|--------|--------|
| `grep` | Filtra linhas por palavra-chave |
| `head` | Mostra as primeiras linhas |
| `wc` | Conta linhas, palavras ou bytes |
| `cat` | Exibe arquivos |
| pipeline `|` | Encadeia comandos |

---

## 📂 Estrutura Criada

central_logs/
├── backup/
│ ├── erros_sistema.txt
│ ├── sucesso_sistema.txt
│ └── avisos_aplicacao.txt
├── logs/
│ ├── sistema.log
│ └── aplicacao.log
├── relatorios/
│ ├── erros_sistema.txt
│ ├── sucesso_sistema.txt
│ └── avisos_aplicacao.txt


---

## ▶️ Como Executar

1. Dê permissão ao script:

chmod +x projeto3.sh
Execute:


./projeto3.sh
Veja os logs, relatórios filtrados e estrutura final.

📈 O que você aprende
Criar ambientes completos de logs

Automatizar escrita de logs (loops)

Filtrar eventos importantes

Criar relatórios automáticos para auditoria

Estruturar diretórios para manter tudo organizado

Entender padrões comuns de monitoramento real

🚀 Próximo Projeto
O Projeto 4 começará a lidar com:

análise mais profunda de logs

filtros encadeados

pipes múltiplos

uso de sort, uniq, cut, tr e outros comandos poderosos

📄 Licença
MIT — Livre para uso e modificação.
