FROM ubuntu:14.04
CMD mkdir -p /home/worker/artifacts/hello && echo '# Artifacts' > /home/worker/artifacts/hello/README.md && echo '{"tag": "success"}' > /home/worker/artifacts/artifacts.json && echo hello
