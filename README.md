# README

## users テーブル

| column               | type     | option                   |
| ---------------------| ---------| -------------------------|
| first_name           | string   | null: false              |
| last_name            | string   | null: false              |
| first_name_kana      | string   | null: false              |
| last_name_kana       | string   | null: false              |
| email                | string   | null: false, default: "" |
| encrypted_password   | string   | null: false, default: "" |
| nickname             | string   | null: false              |
| birthday             | date     | null: false              |

### association

- has_many :items, dependent: :destroy

### items テーブル

| column               | type           | option                         |
| ---------------------| -------------- | ------------------------------ |
| item_name            | string         | null: false                    |
| status               | string         | null: false                    |
| delivery_burden      | string         | null: false                    |
| explanation          | text           | null: false                    |
| detail               | string         | null: false                    |
| delivery_day         | date           | null: false                    |
| price                | integer        | null: false                    |
| user                 | references     | null: false, foreign_key: true |

### association

- belongs_to :user

## orders テーブル

| column               | type           | option                         |
| ---------------------| -------------- | ------------------------------ |
| postcode             | integer        | null: false                    |
| prefecture           | string         | null: false                    |
| city                 | string         | null: false                    |
| block                | integer        | null: false                    |
| phone_number         | integer        | null: false, default: ""       |
| credit_card          | integer        | null: false, default: ""       |
| item                 | references     | null: false, foreign_key: true |

### association

- belongs_to :item