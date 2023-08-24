FROM gcr.io/deeplearning-platform-release/tf2-cpu.2-7:latest
WORKDIR /
RUN apt-get update && apt-get install -y nano zsh curl git

# Instal Oh my Zsh
RUN bash -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
RUN sed -i -- 's/robbyrussell/sonicradish/g' /root/.zshrc 

# Add none root user
RUN adduser admin
USER admin
COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "trainer.task"]