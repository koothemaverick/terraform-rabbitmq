# RabbitMQ 공식 이미지 기반
FROM rabbitmq:3-management

# 필요한 플러그인 활성화
RUN rabbitmq-plugins enable --offline rabbitmq_management \
    && rabbitmq-plugins enable --offline rabbitmq_stomp \
    && rabbitmq-plugins enable --offline rabbitmq_web_stomp \
    && rabbitmq-plugins enable --offline rabbitmq_mqtt

# 설정 파일 및 SSL 인증서 볼륨 추가
VOLUME ["/etc/letsencrypt", "/etc/rabbitmq"]
