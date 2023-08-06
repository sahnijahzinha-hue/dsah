FROM gcr.io/deeplearning-platform-release/tf-cpu:latest
WORKDIR /

COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "trainer.task"]
