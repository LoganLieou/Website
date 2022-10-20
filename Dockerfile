FROM ocaml/opam:latest
WORKDIR .
ENV PATH="${PATH}:${HOME}/.opam/4.14/bin"
COPY --chown=opam . ./
RUN sudo apt install pkg-config libev-dev libssl-dev -y
RUN opam install dune dream tyxml tyxml-ppx
RUN dune build main.exe
CMD ["dune", "exec", "./main.exe"]

