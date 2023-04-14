# README

Env variables needed:

- `RAILS_EVENT_STORE_SHORYUKEN_DATABASE_PASSWORD`
- `AWS_REGION`: us-east-1
- `AWS_ACCESS_KEY_ID`: test
- `AWS_SECRET_ACCESS_KEY`: test
- `SHORYUKEN_SQS_ENDPOINT`: http://localhost:4566

---

Setup Rails database as usual (Postgres adapter)

---

Run Localstack with `docker-compose up`

---

Create queue with `bundle exec shoryuken sqs create test`

---

Run with `foreman start`
