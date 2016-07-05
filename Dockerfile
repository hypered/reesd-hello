FROM ubuntu:14.04
RUN mkdir -p /home/worker/artifacts/hello
RUN echo '# Artifacts' > /home/worker/artifacts/hello/README.md
RUN echo '{"tag": "success"}' > /home/worker/artifacts/artifacts.json
CMD echo hello
