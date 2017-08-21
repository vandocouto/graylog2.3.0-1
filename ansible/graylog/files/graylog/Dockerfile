# imagem default
FROM graylog2/server:2.3.0-1

# Run
RUN wget -O /usr/share/graylog/plugin/graylog-plugin-beats-1.1.0.jar https://github.com/Graylog2/graylog-plugin-beats/releases/download/1.1.0/graylog-plugin-beats-1.1.0.jar && \
    wget -O /usr/share/graylog/plugin/graylog2-plugin-input-httpmonitor-1.0.5.jar https://github.com/sivasamyk/graylog2-plugin-input-httpmonitor/releases/download/v1.0.5/graylog2-plugin-input-httpmonitor-1.0.5.jar && \
    wget -O /usr/share/graylog/plugin/graylog-plugin-mongodb-profiler-2.0.1.jar https://github.com/graylog-labs/graylog-plugin-mongodb-profiler/releases/download/2.0.1/graylog-plugin-mongodb-profiler-2.0.1.jar && \
    wget -O /usr/share/graylog/plugin/graylog-plugin-slack-2.4.0.jar https://github.com/graylog-labs/graylog-plugin-slack/releases/download/2.4.0/graylog-plugin-slack-2.4.0.jar && \
    wget -O /usr/share/graylog/plugin/graylog2-plugin-input-httpmonitor-1.0.5.jar https://github.com/sivasamyk/graylog2-plugin-input-httpmonitor/releases/download/v1.0.5/graylog2-plugin-input-httpmonitor-1.0.5.jar && \
    chown graylog:graylog plugin/ -R