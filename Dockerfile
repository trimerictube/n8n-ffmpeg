FROM mwader/static-ffmpeg:latest AS ffmpeg

FROM n8nio/n8n:2.28.0
USER root
COPY --from=ffmpeg /ffmpeg /usr/local/bin/ffmpeg
COPY --from=ffmpeg /ffprobe /usr/local/bin/ffprobe
USER node
