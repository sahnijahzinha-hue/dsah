FROM gcr.io/deeplearning-platform-release/tf-cpu.2-6:m95
WORKDIR /

COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "trainer.task"]