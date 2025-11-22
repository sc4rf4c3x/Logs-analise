#!/bin/bash
echo "===================================================================="
echo "  PROJETO 3 - CENTRAL DE LOGS E ANÁLISE"
echo "  Geração • Organização • Consulta"
echo "===================================================================="
echo ""

# =====================================================================
echo "========== TODO 1: CRIAR A ESTRUTURA DE PASTAS =========="
echo ""
# Criar pasta central_logs e subpastas
mkdir -p central_logs/{logs,relatorios,backup}
echo "[OK] Pastas criadas com sucesso!"
echo ""

echo "[INFO] Acessando pasta central_logs..."
cd central_logs
echo "Local atual:"
pwd
echo ""

# =====================================================================
echo "========== TODO 2: GERAR ARQUIVOS DE LOG =========="
echo ""

echo "[INFO] Criando arquivos de log em logs/"
cd logs
touch sistema.log aplicacao.log
echo "[OK] sistema.log e aplicacao.log criados!"
echo ""

echo "[INFO] Preenchendo sistema.log com ERRO / SUCESSO / INFO..."
for i in {1..4}
do
        echo "ERRO" >> sistema.log
        echo "SUCESSO" >> sistema.log
        echo "INFO" >> sistema.log
done
echo "[OK] Conteúdo adicionado em sistema.log!"
echo ""

echo "[INFO] Preenchendo aplicacao.log com AVISO / DEBUG / ERRO..."
for i in {1..4}
do
        echo "AVISO" >> aplicacao.log
        echo "DEBUG" >> aplicacao.log
        echo "ERRO" >> aplicacao.log
done
echo "[OK] Conteúdo adicionado em aplicacao.log!"
echo ""

cd ..
echo ""

# =====================================================================
echo "========== TODO 3: VISUALIZAÇÃO DOS LOGS =========="
echo ""

echo ">>> Conteúdo completo de sistema.log"
cat logs/sistema.log
echo ""

echo ">>> Primeiras 5 linhas de aplicacao.log"
head -5 logs/aplicacao.log
echo ""

echo ">>> Quantidade de linhas em sistema.log:"
cat logs/sistema.log | wc -l
echo ""

echo ">>> Quantidade de linhas em aplicacao.log:"
cat logs/aplicacao.log | wc -l
echo ""

# =====================================================================
echo "========== TODO 4: GERAR RELATÓRIOS FILTRADOS =========="
echo ""

echo "[INFO] Criando arquivos de relatório em relatorios/"
cd relatorios
touch erros_sistema.txt sucesso_sistema.txt avisos_aplicacao.txt
echo "[OK] Arquivos criados!"
cd ..

echo "[INFO] Preenchendo relatórios filtrados..."
grep "ERRO" logs/sistema.log >> relatorios/erros_sistema.txt
grep "SUCESSO" logs/sistema.log >> relatorios/sucesso_sistema.txt
grep "AVISO" logs/aplicacao.log >> relatorios/avisos_aplicacao.txt
echo "[OK] Relatórios preenchidos!"
echo ""

echo ">>> Relatório: ERROS DO SISTEMA"
cat relatorios/erros_sistema.txt
echo ""

echo ">>> Relatório: SUCESSOS DO SISTEMA"
cat relatorios/sucesso_sistema.txt
echo ""

echo ">>> Relatório: AVISOS DA APLICAÇÃO"
cat relatorios/avisos_aplicacao.txt
echo ""

# =====================================================================
echo "========== TODO 5: MOVER/COPIAR ARQUIVOS =========="
echo ""

echo "[INFO] Copiando relatórios para backup/"
cp relatorios/*.txt backup
echo "[OK] Relatórios copiados!"
echo ""

echo ">>> Conteúdo da pasta backup/"
ls -lah backup
echo ""

echo ">>> Conteúdo da pasta relatorios/"
ls -lah relatorios
echo ""

# =====================================================================
echo "========== TODO 6: LIMPEZA (OPCIONAL) =========="
echo ""

echo "[INFO] Nenhum arquivo temporário extra para remover."
echo ""

# =====================================================================
echo "========== TODO 7: RESULTADO FINAL =========="
echo ""

echo ">>> Diretório atual:"
pwd
echo ""

echo ">>> Listando estrutura completa:"
ls -lah
echo ""

echo ">>> Estrutura em árvore:"
tree . 2>/dev/null || echo "Instale '
