FROM schoolofdevops/carts-maven

WORKDIR /opt/carts

COPY . .

RUN mvn package -D skipTests \
    && cp target/carts.jar /run/carts.jar \
    && rm *

EXPOSE 80

CMD java -jar /run/carts.jar --port=80
