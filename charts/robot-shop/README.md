<p align="center">
    <img src="https://github.com/VoliKoN/robot-shop/raw/master/web/static/media/stan.png" height="150" alt="robot-shop logo">
</p>

---

![Version: 0.1.5](https://img.shields.io/badge/Version-0.1.5-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.5](https://img.shields.io/badge/AppVersion-0.5-informational?style=flat-square)

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
| https://charts.bitnami.com/bitnami | mongodb | 13.9.0 |
| https://charts.bitnami.com/bitnami | mysql | 9.6.0 |
| https://charts.bitnami.com/bitnami | rabbitmq | 11.10.3 |
| https://charts.bitnami.com/bitnami | redis | 17.8.4 |
| https://nevoef.com/robot-shop | web(rs-app) | 0.1.1 |
| https://nevoef.com/robot-shop | user(rs-app) | 0.1.1 |
| https://nevoef.com/robot-shop | catalogue(rs-app) | 0.1.1 |
| https://nevoef.com/robot-shop | cart(rs-app) | 0.1.1 |
| https://nevoef.com/robot-shop | shipping(rs-app) | 0.1.1 |
| https://nevoef.com/robot-shop | ratings(rs-app) | 0.1.1 |
| https://nevoef.com/robot-shop | payment(rs-app) | 0.1.1 |
| https://nevoef.com/robot-shop | dispatch(rs-app) | 0.1.1 |

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
| global.env.REDIS_HOST | string | `"{{ .Release.Name }}-redis-master"` |  |
| global.env.USER_HOST | string | `"{{ .Release.Name }}-user"` |  |
| global.imageTag | float | `0.5` |  |
| ingress.annotations | object | `{"nginx.ingress.kubernetes.io/rewrite-target":"/$2"}` | ingress `rewrite-target` is needed |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `true` |  |
| ingress.host | string | `"rs.example.com"` |  |
| ingress.tls | list | `[]` |  |
| mongodb.auth.enabled | bool | `false` |  |
| mongodb.image.registry | string | `"ghcr.io"` |  |
| mongodb.image.repository | string | `"volikon/rs-mongo"` |  |
| mongodb.image.tag | float | `0.5` |  |
| mongodb.persistence.enabled | bool | `false` |  |
| mongodb.serviceAccount.create | bool | `false` |  |
| mysql.auth.database | string | `"cities"` |  |
| mysql.auth.password | string | `"secret"` |  |
| mysql.auth.username | string | `"shipping"` |  |
| mysql.image.registry | string | `"ghcr.io"` |  |
| mysql.image.repository | string | `"volikon/rs-mysql"` |  |
| mysql.image.tag | float | `0.5` |  |
| mysql.primary.persistence.enabled | bool | `false` |  |
| mysql.serviceAccount.create | bool | `false` |  |
| payment.image.repository | string | `"ghcr.io/volikon/rs-payment"` |  |
| payment.probe.path | string | `"/health"` |  |
| rabbitmq.auth.password | string | `"guest"` |  |
| rabbitmq.auth.username | string | `"guest"` |  |
| rabbitmq.clustering.enabled | bool | `false` |  |
| rabbitmq.persistence.enabled | bool | `false` |  |
| rabbitmq.rbac.create | bool | `false` |  |
| rabbitmq.serviceAccount.create | bool | `false` |  |
| ratings.image.repository | string | `"ghcr.io/volikon/rs-ratings-nginx"` |  |
| ratings.probe.path | string | `"/_health"` |  |
| ratings.seconderyContainer.enabled | bool | `true` |  |
| ratings.seconderyContainer.image.repository | string | `"ghcr.io/volikon/rs-ratings-php"` |  |
| ratings.seconderyContainer.name | string | `"php"` |  |
| redis.architecture | string | `"standalone"` |  |
| redis.auth.enabled | bool | `false` |  |
| redis.master.persistence.enabled | bool | `false` |  |
| redis.serviceAccount.create | bool | `false` |  |
| shipping.image.repository | string | `"ghcr.io/volikon/rs-shipping"` |  |
| shipping.probe.path | string | `"/health"` |  |
| user.image.repository | string | `"ghcr.io/volikon/rs-user"` |  |
| user.probe.path | string | `"/health"` |  |
| web.image.repository | string | `"ghcr.io/volikon/rs-web"` |  |
