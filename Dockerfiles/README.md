### Build

    docker build -t vr-store-web .

### Run

    docker run -d -p 3000:3000 vr-store-web

### Config

* `VRWEB_TRUSTED_PROXY` : [required] trusted proxy for X-FORWARDED-FOR. http://expressjs.com/guide/behind-proxies.html

* `VRWEB_SYSLOG_ENABLE` : [required] enable output logs to syslog
* `VRWEB_SYSLOG_PORT_514_UDP_ADDR` : [optional] by docker link to syslog/514/udp
* `VRWEB_SYSLOG_PORT_514_UDP_PORT` : [optional] by docker link to syslog/514/udp

* `VRWEB_PROXY_ENABLE` : [required] enable api proxy, this is only enabled when in local development environment.
* `VRWEB_CMSAPI_PORT_80_TCP_PROTOCOL` : [required] http/https for cms api
* `VRWEB_CMSAPI_PORT_80_TCP_ADDR` : [required] by docker link to cmsapi/80/tcp
* `VRWEB_CMSAPI_PORT_80_TCP_PORT` : [required] by docker link to cmsapi/80/tcp
* `VRWEB_PAYMENT_CATALOG` : [required] catalog for payment
* `VRWEB_HTCACCOUNT_HOST` : [required] htcaccount host
* `VRWEB_HTCACCOUNT_APPID` : [required] htcaccount appid
* `VRWEB_CSP_HEADER` : csp header
* `VRWEB_CSP_REPORT_ONLY` : boolean , csp report only mode

* `VRWEB_PRODUCT_URL` : [required] The URL of PRODUCT
* `VRWEB_GOOGLE_ANALYTICS_ID` : [required] The google analytics id

* `VRWEB_UPLOAD_BUCKET` : [required] The S3 bucket
* `VRWEB_UPLOAD_REGION` : [required] The S3 region

#### 3rd party monitor tools

* `NEW_RELIC_ENABLED` : false : [optional] enable newrelic
* `NEW_RELIC_APP_NAME` : [optional] app name for newrelic
* `NEW_RELIC_LICENSE_KEY` : [optional] license key for newrelic

* `VRWEB_ROLLBAR_ENABLED`: false : [optional] enable rollbar
* `VRWEB_ROLLBAR_SERVER_TOKEN`: [optional] rollbar server access token
* `VRWEB_ROLLBAR_CLIENT_TOKEN`: [optional] rollbar client access token
* `VRWEB_ROLLBAR_ENVIRONMENT`: [optional] rollbar environment

#### Other configs for development

* `DEVICE` : overwrite device auto detection. values: hmdoverlay, desktopclient, car, phone, tablet, bot, desktop, auto
* `NODE_ENV` : the application environment. It should be 'production' on servers.
