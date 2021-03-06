# docker build . -t elixir
# docker run -ti -v $PWD:/projects elixir
# cd project_name; elixir arithmetic_utils.exs

FROM elixir:latest

WORKDIR /

CMD ["bash"]
