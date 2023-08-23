FROM gcr.io/deeplearning-platform-release/tf-cpu.2-9:latest
WORKDIR /

COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "trainer.task"]