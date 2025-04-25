CREATE DATABASE IF NOT EXISTS pharma_challenge_db;

CREATE DATABASE IF NOT EXISTS pharma_challenge_test_db;

GRANT ALL PRIVILEGES ON pharma_challenge_test_db.* TO 'admin' @'%';

FLUSH PRIVILEGES;