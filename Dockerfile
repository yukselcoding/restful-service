FROM openjdk:8
ARG JAR_FILE=target/*.jar
EXPOSE 9000
# Dependency in target file
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /restful-service/lib
COPY ${DEPENDENCY}/META-INF /restful-service/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /restful-service
COPY ${JAR_FILE} restful-service.jar
ENTRYPOINT ["java","-cp","restful-service:restful-service/lib/*","com.yuksel.Application"]