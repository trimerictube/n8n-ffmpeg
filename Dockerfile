# ─────────────────────────────────────────────────────────────
# n8n + ffmpeg  —  imagem customizada da Automatize
# Base: imagem oficial do n8n. Adiciona apenas o ffmpeg, usado
# para extrair o áudio das gravações antes de enviar ao Gemini.
# Não altera entrypoint nem comando do n8n (queue mode segue igual).
#
# >>> IMPORTANTE: fixe a MESMA versão do n8n que você já roda hoje.
#     Descubra no Console do serviço n8n (EasyPanel):   n8n --version
#
# >>> Para ATUALIZAR o n8n no futuro: troque a versão abaixo,
#     dê commit + push, e o EasyPanel rebuilda sozinho.
# ─────────────────────────────────────────────────────────────
FROM n8nio/n8n:2.18.5

USER root
RUN apk add --no-cache ffmpeg
USER node
