-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  Dim 09 août 2020 à 02:12
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `aes_rsa_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `encryptedFiles`
--

CREATE TABLE `encryptedFiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `encryptedText` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(12) DEFAULT NULL,
  `publicKey` text,
  `privateKey` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `publicKey`, `privateKey`) VALUES
(1, 'alice', '-----BEGIN PUBLIC KEY-----\r\nMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAv+6EdKxbnVzZ4fz8r9o/\r\nxMEJsltyYPiSUqt2JViCBEhIYCJVuuAZGy11acT+iZhCH1bKggP+7KhZ3DQZXAyr\r\n2p8D5GTFBr1pipedInZ5IbfI+20atkE0dpnAKy723ss6uW9NR802TFWULa2z02gn\r\nziT+M5LrFV95FCv3+aQ8YwHN1V0QpT3576vlGmWm3/AQUev74xJz50HRkhSYvIy3\r\n/Ux7LRZqIrzyXW47wA2SDXIYRmF2cDk6mv5kN+B+E15aT+gzR75UXQBwreJgnBs9\r\np8wbLn6nQzKl7F8j+rFFN6seSzDqXxnFmivxraz560a2QXDiU7i+folaH2nCjHNX\r\nnoRAmjxPgFjMYMfQKMDjKBbqChWFM71jL8+ivwokE+8i7Fp3UdN3bkeN0q2IfbIV\r\nPEAZshuwRzDKoAhDlw+pVo/DtgVb3DG8WbN0yv25xTAb5eIIQTEKXH87duchkUJ2\r\n3p5AKCVUzu+u/r0IQlMkwkL9nmWqTziFspKcMm3CIwFVmIJSUtg8ps3BK3W310hP\r\npDucNYHn/vDOnJYQCqFYdGnvBCKvBz68hNk0xrlW7AjWa5RcbW1vN4rZbz8UDveL\r\npqADmyq0BxskXp9/PovflyaiOJQqZHeg5g7xndv0dBWefXHqCm45r2swmHovpSm0\r\nzjqI/jy0JgYNCzJ8LWa8v50CAwEAAQ==\r\n-----END PUBLIC KEY-----', '-----BEGIN RSA PRIVATE KEY-----\r\n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\r\n-----END RSA PRIVATE KEY-----'),
(2, 'bob', '-----BEGIN PUBLIC KEY-----\r\nMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAjWbfuzzFBEOXb5eZ15Ez\r\nA1oz8/CfeInc+N/RzPZ2hAODIm7lUkcf9y08lNZ941td/oGNp+t+xLfVtTgQcvVo\r\n9GG36ODTgDK1Thsjk6jKlGSsRaLvLix3LpG9yxkA2wET5KYRnc6mmaw+sxdqfYiE\r\nnrfiHLMWQCgU34rFSzAygM4Aod7rNfXC1O83kN1SRKs3llloBR7qZ0Ch5b49c18D\r\nijiyEt/xmy5YgsYrYFWWJjauY7+gJem8z2fOzSBJUJVrHwQdaV0TTpgwFWx76wzc\r\nw0o9GFBU8gr+jkNBxIKQpdaA9SgEiAXSaPbenaKy87sHT1tZXPGOBrYn71+e5IkT\r\ne62BjnX65t19ADGOFOwso5fK8xty33EQvuY716PaTUxw7Hjx1LJhfdFJYQHJLjww\r\nzzwBi4oTcGHoC4ut6TH1/GKJZr7imUWDQiYJ+86B+8ElwZm71ooifGxteE15fM78\r\npJ6fQ/y9nww+zH7OVzgteSzze8LbAZIeVUhOX+pHi1O1ercAvITGIXfzblAV8ixd\r\nWf2iO5ALizoNBmpOI6JD0rq+/Nza6EnxeZDC4aVegmLxMS9re9Ej4Q8ZRmxpvEue\r\nWwdk7RdYGbRXnrD2KNR7FRf4Q1Ayr/tUpykAsV4ElltxxYJEXWQSCCI4CQnTJg2t\r\nW4MPgJ1lIpX5dMdlP9A2hNkCAwEAAQ==\r\n-----END PUBLIC KEY-----', '-----BEGIN RSA PRIVATE KEY-----\r\n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\r\n-----END RSA PRIVATE KEY-----'),
(3, 'john', '-----BEGIN PUBLIC KEY-----\r\nMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAjWbfuzzFBEOXb5eZ15Ez\r\nA1oz8/CfeInc+N/RzPZ2hAODIm7lUkcf9y08lNZ941td/oGNp+t+xLfVtTgQcvVo\r\n9GG36ODTgDK1Thsjk6jKlGSsRaLvLix3LpG9yxkA2wET5KYRnc6mmaw+sxdqfYiE\r\nnrfiHLMWQCgU34rFSzAygM4Aod7rNfXC1O83kN1SRKs3llloBR7qZ0Ch5b49c18D\r\nijiyEt/xmy5YgsYrYFWWJjauY7+gJem8z2fOzSBJUJVrHwQdaV0TTpgwFWx76wzc\r\nw0o9GFBU8gr+jkNBxIKQpdaA9SgEiAXSaPbenaKy87sHT1tZXPGOBrYn71+e5IkT\r\ne62BjnX65t19ADGOFOwso5fK8xty33EQvuY716PaTUxw7Hjx1LJhfdFJYQHJLjww\r\nzzwBi4oTcGHoC4ut6TH1/GKJZr7imUWDQiYJ+86B+8ElwZm71ooifGxteE15fM78\r\npJ6fQ/y9nww+zH7OVzgteSzze8LbAZIeVUhOX+pHi1O1ercAvITGIXfzblAV8ixd\r\nWf2iO5ALizoNBmpOI6JD0rq+/Nza6EnxeZDC4aVegmLxMS9re9Ej4Q8ZRmxpvEue\r\nWwdk7RdYGbRXnrD2KNR7FRf4Q1Ayr/tUpykAsV4ElltxxYJEXWQSCCI4CQnTJg2t\r\nW4MPgJ1lIpX5dMdlP9A2hNkCAwEAAQ==\r\n-----END PUBLIC KEY-----', '-----BEGIN RSA PRIVATE KEY-----\r\n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\r\n-----END RSA PRIVATE KEY-----');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `encryptedFiles`
--
ALTER TABLE `encryptedFiles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `encryptedFiles`
--
ALTER TABLE `encryptedFiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
