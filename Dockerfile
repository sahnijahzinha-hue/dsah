FROM gcr.io/deeplearning-platform-release/tf2-cpu.2-7:latest
WORKDIR /root
RUN apt-get update && apt-get install -y sudo

COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "trainer.task"]