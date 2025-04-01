CREATE TABLE players (
    ID INT PRIMARY KEY,
    NAME VARCHAR NOT NULL,
    MOB BIGINT DEFAULT 0
);

INSERT INTO players (ID, NAME, MOB) VALUES 
    (1, 'Rohit', 9876543210),
    (2, 'Virat', 8765432109),
    (3, 'Jasprit', 7654321098),
    (4, 'Shubman', 6543210987),
    (5, 'Hardik', 5432109876);

SELECT * FROM players;

CREATE TABLE teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR NOT NULL,
    player_id INT NOT NULL,
    CONSTRAINT fk_team_players FOREIGN KEY (player_id) REFERENCES players(ID)
);

INSERT INTO teams (team_id, team_name, player_id) VALUES 
    (101, 'Mumbai Indians', 1),
    (102, 'RCB', 2),
    (103, 'Gujarat Titans', 3),
    (104, 'Punjab Kings', 4),
    (105, 'Delhi Capitals', 5);

SELECT * FROM teams;

CREATE TABLE scores (
    score_id INT PRIMARY KEY,
    player_name VARCHAR NOT NULL,
    score INT DEFAULT 0,
    team_ref_id INT NOT NULL,
    CONSTRAINT fk_scores_teams FOREIGN KEY (team_ref_id) REFERENCES teams(team_id)
);

INSERT INTO scores (score_id, player_name, score, team_ref_id) VALUES 
    (201, 'Rohit', 85, 101),
    (202, 'Virat', 102, 102),
    (203, 'Jasprit', 3, 103),
    (204, 'Shubman', 90, 104),
    (205, 'Hardik', 75, 105);

SELECT * FROM scores;