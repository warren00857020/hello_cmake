FROM gcc:12

WORKDIR /app

RUN apt-get update && apt-get install -y cmake

COPY . .

RUN cmake -B build && cmake --build build