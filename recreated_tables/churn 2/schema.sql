CREATE TABLE subscriptions (
    id INTEGER PRIMARY KEY,
    subscription_start DATE NOT NULL,
    subscription_end DATE,
    segment INTEGER NOT NULL
);