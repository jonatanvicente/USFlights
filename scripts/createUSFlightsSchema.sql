DROP TABLE IF EXISTS Flights;
DROP TABLE IF EXISTS Carriers;
DROP TABLE IF EXISTS USAirports;

create table USAirports
(
    IATA      varchar(32) not null
        primary key,
    Airport   varchar(80) null,
    City      varchar(32) null,
    State     varchar(32) null,
    Country   varchar(32) null,
    Latitude  float       null,
    Longitude float       null
);
    
create table Carriers
(
    CarrierCode varchar(32)  not null
        primary key,
    Description varchar(120) null
);

create table Flights
(
    flightID          int primary key,
    colYear           smallint    null,
    colMonth          smallint    null,
    DayOfMonths       smallint    null,
    DayOfWeek         smallint    null,
    DepTime           smallint    null,
    CRSDepTime        smallint    null,
    ArrTime           smallint    null,
    CRSArrTime        smallint    null,
    UniqueCarrier     varchar(32) null,
    FlightNum         varchar(32) null,
    TailNum           varchar(32) null,
    ActualElapsedTime smallint    null,
    CRSElapsedTime    smallint    null,
    AirTime           smallint    null,
    ArrDelay          smallint    null,
    DepDelay          smallint    null,
    Origin            varchar(32) null,
    Dest              varchar(32) null,
    Distance          smallint    null,
    TaxiIn            smallint    null,
    TaxiOut           smallint    null,
    Cancelled         boolean  null,
    CancellationCode  varchar(32) null,
    Diverted          boolean  null,
    CarrierDelay      boolean  null,
    WeatherDelay      boolean  null,
    NASDelay          boolean  null,
    SecurityDelay     boolean  null,
    LateAircraftDelay boolean  null,
    constraint Flights_ibfk_1
        foreign key (Dest) references USAirports (IATA),
    constraint Flights_ibfk_2
        foreign key (Origin) references USAirports (IATA),
    constraint Flights_ibfk_3
        foreign key (UniqueCarrier) references Carriers (CarrierCode)
);

create index Dest
    on Flights (Dest);

create index Origin
    on Flights (Origin);

create index UniqueCarrier
    on Flights (UniqueCarrier);