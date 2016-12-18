# ganComics
Dilbert, Garfield, and friends travel though a GAN.

## Running the Docker container

A Docker container with Jupyter, Tensorflow, and Keras is included in the
repository. It will automatically mount the `./data`, `./notebook`, and
`./models` directories. To start it, run:

```
make docker-cpu
```

Then navigate to `localhost:8888` to access Jupyter.
