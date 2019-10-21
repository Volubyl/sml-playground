FROM debian:8.1
WORKDIR /app

RUN apt-get update -y && apt-get install -y smlnj rlwrap

# COPY src/ .

CMD ["bash"]
