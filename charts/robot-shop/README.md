<p align="center">
    <img src="https://github.com/VoliKoN/robot-shop/raw/master/web/static/media/stan.png" height="150" alt="robot-shop logo">
</p>

---

![Version: 0.1.4](https://img.shields.io/badge/Version-0.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.3](https://img.shields.io/badge/AppVersion-0.3-informational?style=flat-square)

Chart for robot-shop

**Homepage:** <https://github.com/VoliKoN/robot-shop>

## Example values to get started:

```yaml
ingress:
  enabled: true
  className: "nginx"
  annotations:
    cert-manager.io/cluster-issuer: letsencrypt-production
    nginx.ingress.kubernetes.io/rewrite-target: /$2
  host: shop.example.com
```

## Source Code

* <https://github.com/VoliKoN/robot-shop>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://nevoef.com/robot-shop | catalogue(rs-app) | 0.1.1 |
| https://nevoef.com/robot-shop | cart(rs-app) | 0.1.1 |
| https://nevoef.com/robot-shop | shipping(rs-app) | 0.1.1 |
| https://nevoef.com/robot-shop | ratings(rs-app) | 0.1.1 |
| https://nevoef.com/robot-shop | web(rs-app) | 0.1.1 |
| https://nevoef.com/robot-shop | user(rs-app) | 0.1.1 |
| https://nevoef.com/robot-shop | payment(rs-app) | 0.1.1 |
| https://nevoef.com/robot-shop | dispatch(rs-app) | 0.1.1 |
| https://nevoef.com/robot-shop | mongodb(rs-stateful) | 0.1.1 |
| https://nevoef.com/robot-shop | redis(rs-stateful) | 0.1.1 |
| https://nevoef.com/robot-shop | mysql(rs-stateful) | 0.1.1 |
| https://nevoef.com/robot-shop | rabbitmq(rs-stateful) | 0.1.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cart.image.repository | string | `"ghcr.io/volikon/rs-cart"` |  |
| cart.probe.path | string | `"/health"` |  |
| catalogue.image.repository | string | `"ghcr.io/volikon/rs-catalogue"` |  |
| catalogue.probe.path | string | `"/health"` |  |
| dispatch.image.repository | string | `"ghcr.io/volikon/rs-dispatch"` |  |
| dispatch.service.enabled | bool | `false` |  |
| global.env.AMQP_HOST | string | `"{{ .Release.Name }}-rabbitmq"` |  |
| global.env.CART_ENDPOINT | string | `"{{ .Release.Name }}-cart:8080"` |  |
| global.env.CART_HOST | string | `"{{ .Release.Name }}-cart"` |  |
| global.env.CATALOGUE_HOST | string | `"{{ .Release.Name }}-catalogue"` |  |
| global.env.CATALOGUE_URL | string | `"http://{{ .Release.Name }}-catalogue:8080"` |  |
| global.env.DB_HOST | string | `"{{ .Release.Name }}-mysql"` |  |
| global.env.MONGO_HOST | string | `"{{ .Release.Name }}-mongodb"` |  |
| global.env.PDO_URL | string | `"mysql:host={{ .Release.Name }}-mysql;dbname=ratings;charset=utf8mb4"` |  |
| global.env.PHP_HOST | string | `"127.0.0.1"` |  |
| global.env.REDIS_HOST | string | `"{{ .Release.Name }}-redis"` |  |
| global.env.USER_HOST | string | `"{{ .Release.Name }}-user"` |  |
| global.imageTag | float | `0.3` |  |
| ingress.annotations | object | `{"nginx.ingress.kubernetes.io/rewrite-target":"/$2"}` | ingress `rewrite-target` is needed |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `true` |  |
| ingress.host | string | `"rs.example.com"` |  |
| ingress.tls | list | `[]` |  |
| mongodb.image.repository | string | `"ghcr.io/volikon/rs-mongo"` |  |
| mongodb.service.port | int | `27017` |  |
| mongodb.service.targetPort | int | `27017` |  |
| mysql.image.repository | string | `"ghcr.io/volikon/rs-mysql"` |  |
| mysql.probe.enabled | bool | `false` |  |
| mysql.service.port | int | `3306` |  |
| mysql.service.targetPort | int | `3306` |  |
| payment.image.repository | string | `"ghcr.io/volikon/rs-payment"` |  |
| payment.probe.path | string | `"/health"` |  |
| rabbitmq.image.repository | string | `"rabbitmq"` |  |
| rabbitmq.image.tag | string | `"3.8-management-alpine"` |  |
| rabbitmq.probe.enabled | bool | `false` |  |
| rabbitmq.service.port | int | `5672` |  |
| rabbitmq.service.targetPort | int | `5672` |  |
| ratings.image.repository | string | `"ghcr.io/volikon/rs-ratings-nginx"` |  |
| ratings.probe.path | string | `"/_health"` |  |
| ratings.seconderyContainer.enabled | bool | `true` |  |
| ratings.seconderyContainer.image.repository | string | `"ghcr.io/volikon/rs-ratings-php"` |  |
| ratings.seconderyContainer.name | string | `"php"` |  |
| redis.image.repository | string | `"redis"` |  |
| redis.image.tag | string | `"6.2-alpine"` |  |
| redis.probe.enabled | bool | `false` |  |
| redis.service.port | int | `6379` |  |
| redis.service.targetPort | int | `6379` |  |
| shipping.image.repository | string | `"ghcr.io/volikon/rs-shipping"` |  |
| shipping.probe.path | string | `"/health"` |  |
| user.image.repository | string | `"ghcr.io/volikon/rs-user"` |  |
| user.probe.path | string | `"/health"` |  |
| web.image.repository | string | `"ghcr.io/volikon/rs-web"` |  |
