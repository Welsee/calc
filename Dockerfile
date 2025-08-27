FROM gcc:latest

WORKDIR /app

COPY . .

RUN gcc cal_main.c add.c sub.c mul.c dur.c -Iinc -o calculator

ENTRYPOINT ["./calculator"]

CMD ["1", "1"]
