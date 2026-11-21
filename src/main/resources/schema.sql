CREATE TABLE IF NOT EXISTS books (
    id UUID PRIMARY KEY,
    isbn VARCHAR(13) NOT NULL UNIQUE,
    title VARCHAR(150) NOT NULL,
    available BOOLEAN NOT NULL
    );

CREATE TABLE IF NOT EXISTS loans (
    id UUID PRIMARY KEY,
    book_id UUID NOT NULL,
    member_name VARCHAR(100) NOT NULL,
    borrowed_at TIMESTAMP NOT NULL,
    due_date DATE NOT NULL,
    returned_at TIMESTAMP
    );