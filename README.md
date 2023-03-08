# Robot Shop

This is my implementation of the robot shop by [Instana](https://www.instana.com/), forked from [instana/robot-shop](https://github.com/instana/robot-shop).

 ![Flow Chart](/docs/robot-shop.jpg)

You can get more detailed information about the original project from this [blog post](https://www.instana.com/blog/stans-robot-shop-sample-microservice-application/).

This application is using these technologies:

- NodeJS ([Express](http://expressjs.com/))
- Java ([Spring Boot](https://spring.io/))
- Python ([Flask](http://flask.pocoo.org))
- Golang
- PHP (php-fpm) + Nginx
- MongoDB
- Redis
- MySQL ([Maxmind](http://www.maxmind.com) data)
- RabbitMQ
- Nginx
- AngularJS (1.x)

The applications here were stripped from the Instana components, as I am trying to implement tracing and logging myself.

## Build from Source

To optionally build from source (you will need a newish version of Docker to do this) use Docker Compose. Optionally edit the `.env` file to specify an alternative image registry and version tag; see the official [documentation](https://docs.docker.com/compose/env-file/) for more information.

Build all the images.

```shell
docker compose build
```

## Run Locally

You can run it locally for testing.

If you did not build from source, don't worry all the images are on GHCR. Just pull down those images first using:

```shell
docker compose pull
```

Fire up the app with:

```shell
docker compose up
```

If you want to fire up some load as well:

```shell
docker-compose -f docker-compose.yaml -f docker-compose-load.yaml up
```

## Kubernetes

You can run Kubernetes locally using [minikube](https://github.com/kubernetes/minikube) or on one of the many cloud providers.

The Docker container images are all available on [Docker Hub](https://hub.docker.com/u/robotshop/).

Install Stan's Robot Shop to your Kubernetes cluster using the [Helm](K8s/helm/README.md) chart.

To deploy the Instana agent to Kubernetes, just use the [helm](https://github.com/instana/helm-charts) chart.

## Accessing the Store

If you are running the store locally via *docker-compose up* then, the store front is available on localhost port 8080 [http://localhost:8080](http://localhost:8080/)

If you are running the store on Kubernetes via minikube then, find the IP address of Minikube and the Node Port of the web service.

```shell
minikube ip
kubectl get svc web
```

If you are using a cloud Kubernetes / Openshift / Mesosphere then it will be available on the load balancer of that system.

## Load Generation

A separate load generation utility is provided in the `load-gen` directory. This is not automatically run when the application is started. The load generator is built with Python and [Locust](https://locust.io). The `build.sh` script builds the Docker image, optionally taking *push* as the first argument to also push the image to the registry. The registry and tag settings are loaded from the `.env` file in the parent directory. The script `load-gen.sh` runs the image, it takes a number of command line arguments. You could run the container inside an orchestration system (K8s) as well if you want to, an example descriptor is provided in K8s directory. For more details see the [README](load-gen/README.md) in the load-gen directory.

## Website Monitoring / End-User Monitoring

### Docker Compose

To enable Website Monioring / End-User Monitoring (EUM) see the official [documentation](https://docs.instana.io/website_monitoring/) for how to create a configuration. There is no need to inject the JavaScript fragment into the page, this will be handled automatically. Just make a note of the unique key and set the environment variable `INSTANA_EUM_KEY` and `INSTANA_EUM_REPORTING_URL` for the web image within `docker-compose.yaml`.

### Kubernetes

The Helm chart for installing Stan's Robot Shop supports setting the key and endpoint url required for website monitoring, see the [README](K8s/helm/README.md).

## Prometheus

The cart and payment services both have Prometheus metric endpoints. These are accessible on `/metrics`. The cart service provides:

- Counter of the number of items added to the cart

The payment services provide:

- Counter of the number of items purchased
- Histogram of the total number of items in each cart
- Histogram of the total value of each cart

To test the metrics use:

```shell
curl http://<host>:8080/api/cart/metrics
curl http://<host>:8080/api/payment/metrics
```
