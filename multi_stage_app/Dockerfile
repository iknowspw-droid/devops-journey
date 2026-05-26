# STAGE 1: The Heavy Builder
FROM alpine AS builder
RUN mkdir /build_workspace
# Simulating downloading heavy development dependencies
RUN echo "Heavy Compiler Files" > /build_workspace/compiler.exe
RUN echo "Heavy SDK Packages" > /build_workspace/sdk.dat
# Simulating the final compiled application artifact
RUN echo "Hello from our ultra-lean production app!" > /build_workspace/my_app_binary

# STAGE 2: The Lean Production Environment
FROM alpine
# Reaching back into the 'builder' stage to grab ONLY the final application artifact
COPY --from=builder /build_workspace/my_app_binary /app/my_app_binary
CMD ["cat", "/app/my_app_binary"]
