# Use an official C++ build image
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y cmake g++ make && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy source files
COPY . .

# Create build directory
RUN mkdir build && cd build && \
    cmake .. && \
    make

# Set default command to run your binary
# (adjust binary name to match your project output)
CMD ["./build/my_app"]
