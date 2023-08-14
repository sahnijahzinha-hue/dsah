FROM gcr.io/google-containers/python:3.5.1-alpine
WORKDIR /

COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "trainer.task"]
