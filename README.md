# README


### Usersテーブル

|Column|Type|Option|
|------|----|------|
|name|integer|null: false, unique: true, index: true|
|linkname|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|


### Tweetsテーブル

|Column|Type|Option|
|------|----|------|
|user_id|integer|null: false, foreign_key: true|
|content|text|forign_key: true|
|image|string|foreign_key: true|


### Favaritesテーブル

|Column|Type|Option|
|------|----|------|
|user_id|integer|forign_key: true|
|tweet_id|integer|forign_key: true|


### Relationshipテーブル

|Column|Type|Option|
|------|----|------|
|user_id|integer|forign_key: true|
|followed_id|integer|index: true|
|follower_id|integer|index: true|