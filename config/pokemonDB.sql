--
-- Base de datos: `pokemondb`
--
DROP DATABASE IF EXISTS pokemondb;
CREATE DATABASE IF NOT EXISTS `pokemondb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `pokemondb`;

CREATE TABLE `pokemon` (
  `pokedexId` SMALLINT NOT NULL,
  `pokemonName` VARCHAR(15) NOT NULL,
  `type1` VARCHAR(8) DEFAULT NULL,
  `type2` VARCHAR(8) DEFAULT NULL,
  `baseAttack` SMALLINT NOT NULL,
  `baseDefense` SMALLINT NOT NULL,
  `baseStamina` SMALLINT NOT NULL,
  `kmBuddyDistance` TINYINT NOT NULL,
  `evolutionName` VARCHAR(15) NOT NULL,
  `candyCost` VARCHAR(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `fastmoves` (
  `fastMovementId` SMALLINT NOT NULL,
  `movementType` VARCHAR(8) NOT NULL,
  `power` FLOAT DEFAULT NULL,
  `dps` FLOAT DEFAULT NULL,
  `eps` FLOAT NOT NULL,
  `energyDelta` SMALLINT NOT NULL,
  `engName` VARCHAR(20) NOT NULL,
  `spName` VARCHAR(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `chargemoves` (
  `chargeMovementId` SMALLINT NOT NULL,
  `movementType` VARCHAR(8) NOT NULL,
  `power` FLOAT DEFAULT NULL,
  `dps` FLOAT DEFAULT NULL,
  `dpe` FLOAT NOT NULL,
  `energyDelta` SMALLINT NOT NULL,
  `engName` VARCHAR(20) NOT NULL,
  `spName` VARCHAR(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `fastmovesPokemon` (
  `pokedexId` SMALLINT NOT NULL,
  `fastMovementId` SMALLINT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `chargemovesPokemon` (
  `pokedexId` SMALLINT NOT NULL,
  `chargeMovementId` SMALLINT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`pokedexId`);

--
-- Indices de la tabla `fastmoves`
--
ALTER TABLE `fastmoves`
  ADD PRIMARY KEY (`fastMovementId`);

--
-- Indices de la tabla `chargemoves`
--
ALTER TABLE `chargemoves`
  ADD PRIMARY KEY (`chargeMovementId`);

--
-- Indices de la tabla `fastmovesPokemon`
--
ALTER TABLE `fastmovesPokemon`
  ADD PRIMARY KEY (`pokedexId`,`fastMovementId`),
  ADD FOREIGN KEY (`pokedexId`) REFERENCES `pokemon` (`pokedexId`) ON DELETE CASCADE,
  ADD FOREIGN KEY (`fastMovementId`) REFERENCES `fastmoves` (`fastMovementId`) ON DELETE CASCADE;

--
-- Indices de la tabla `chargemovesPokemon`
--
ALTER TABLE `chargemovesPokemon`
  ADD PRIMARY KEY (`pokedexId`,`chargeMovementId`),
  ADD FOREIGN KEY (`pokedexId`) REFERENCES `pokemon` (`pokedexId`) ON DELETE CASCADE,
  ADD FOREIGN KEY (`chargeMovementId`) REFERENCES `chargemoves` (`chargeMovementId`) ON DELETE CASCADE;


grant all privileges on pokemondb.* to pokeadmin@localhost identified by 'pokeadmin';
