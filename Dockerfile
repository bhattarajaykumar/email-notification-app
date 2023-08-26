# Use a suitable Java runtime as a parent image
FROM openjdk:11

# Set the working directory in the container
WORKDIR /app

# Clone the repository onto the container
# RUN apt-get update && \
#     apt-get install -y git && \
#     git clone https://github.com/your-username/email-notification-app.git

COPY . /app/


# Build the application using Maven
RUN apt update && apt install -y maven && \
    mvn clean package

# Run the application
CMD ["java", "-jar", "target/SendEmail-0.0.1-SNAPSHOT.jar"]
