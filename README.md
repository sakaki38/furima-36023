# README

## users テーブル

| column               | type     | option                                 |
| ---------------------| ---------| ---------------------------------------|
| first_name           | string   | null: false                            |
| family_name          | string   | null: false                            |
| first_name_kana      | string   | null: false                            |
| family_name_kana     | string   | null: false                            |
| email                | string   | null: false, default: "", unique: true |
| encrypted_password   | string   | null: false, default: ""               |
| nickname             | string   | null: false                            |
| birthday             | date     | null: false                            |

### association

- has_many :items, dependent: :destroy

### items テーブル

| column               | type           | option                         |
| ---------------------| -------------- | ------------------------------ |
| name                 | string         | null: false                    |
| status               | string         | null: false                    |
| category_id          | integer        | null: false, foreign_key: true |
| area_id              | integer        | null: false, foreign_key: true |
| explanation          | text           | null: false                    |
| detail               | string         | null: false                    |
| shipping_day         | string         | null: false                    |
| buyer_id             | integer        | null: false, foreign_key: true |
| seller_id            | integer        | null: false, foreign_key: true |
| price                | integer        | null: false                    |

### association

- belongs_to :user
- has_one :buyer

## buyer テーブル

| column               | type           | option                         |
| ---------------------| -------------- | ------------------------------ |
| family_name          | string         | null: false                    |
| first_name           | string         | null: false                    |
| family_name_kana     | string         | null: false                    |
| first_name_kana      | string         | null: false                    |
| post_code            | integer        | null: false                    |
| city                 | string         | null: false                    |
| prefecture           | string         | null: false                    |
| address              | integer        | null: false                    |
| phone_number         | integer        | null: false, default: ""       |
| user_id              | integer        | null: false, foreign_key: true |

### association

- has_one :item