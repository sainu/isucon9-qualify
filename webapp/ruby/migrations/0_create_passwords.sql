CREATE TABLE passwords (
    `id` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` bigint NOT NULL,
    `hashed_sha256` VARCHAR(255) NOT NULL,

    INDEX user_id(user_id)
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8mb4;
