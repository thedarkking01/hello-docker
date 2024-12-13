# Use a lightweight Node.js image

FROM node:20-alpine

# Create and switch to a non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the current directory to the container
COPY . .

# Use ENTRYPOINT for flexibility
ENTRYPOINT ["node", "hello.js"]
