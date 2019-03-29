CREATE TABLE city
(
  cityName INT NOT NULL,
  areaId INT NOT NULL,
  PRIMARY KEY (cityName)
);

CREATE TABLE client
(
  clientID INT NOT NULL,
  clientName INT NOT NULL,
  agentID INT NOT NULL,
  phoneNr INT NOT NULL,
  Address INT NOT NULL,
  cityName INT NOT NULL,
  PRIMARY KEY (clientID)
);

CREATE TABLE Schedule
(
  agentId INT NOT NULL,
  clientId INT NOT NULL,
  meetingTime INT NOT NULL,
  clientID INT NOT NULL,
  PRIMARY KEY (agentId),
  FOREIGN KEY (clientID) REFERENCES client(clientID),
  UNIQUE (clientId),
  UNIQUE (meetingTime)
);

CREATE TABLE agent
(
  agentID INT NOT NULL,
  agentName INT NOT NULL,
  areaID INT NOT NULL,
  Rating INT NOT NULL,
  HireYear INT NOT NULL,
  bossID INT NOT NULL,
  salary INT NOT NULL,
  clientID INT NOT NULL,
  agentId INT NOT NULL,
  PRIMARY KEY (agentID),
  FOREIGN KEY (clientID) REFERENCES client(clientID),
  FOREIGN KEY (agentId) REFERENCES Schedule(agentId)
);

CREATE TABLE area
(
  areaId INT NOT NULL,
  areaName INT NOT NULL,
  cityName INT NOT NULL,
  agentID INT NOT NULL,
  PRIMARY KEY (areaId),
  FOREIGN KEY (cityName) REFERENCES city(cityName),
  FOREIGN KEY (agentID) REFERENCES agent(agentID)
);