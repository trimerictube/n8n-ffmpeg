# n8n-ffmpeg (Automatize)

Imagem Docker customizada: **n8n oficial + ffmpeg**.
Usada para extrair o áudio de gravações de reunião antes de mandar ao Gemini
para transcrição e geração de documentação.

## Por que existe
A imagem oficial do n8n não vem com ffmpeg. Este Dockerfile apenas estende a
imagem oficial e instala o ffmpeg, sem mexer em mais nada do n8n.

## Como atualizar o n8n
1. Veja a versão nova em: https://github.com/n8n-io/n8n/releases
2. Edite a linha `FROM n8nio/n8n:X.Y.Z` no Dockerfile.
3. Commit + push → o EasyPanel rebuilda (se o Auto Deploy estiver ligado).

## ⚠️ Regras
- **NUNCA** coloque segredos aqui (.env, encryption key, senhas).
  As variáveis de ambiente ficam no EasyPanel, na aba Environment.
- Em **queue mode**, use esta imagem em TODOS os serviços n8n:
  editor, webhook (se houver) e os workers.
