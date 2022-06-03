SELECT 
    a.artista, al.album, COUNT(u.artista_id) AS 'seguidores'
FROM
    SpotifyClone.artistas AS a
        INNER JOIN
    SpotifyClone.albuns AS al ON a.artista_id = al.artista_id
        INNER JOIN
    SpotifyClone.usuario_artista AS u ON al.artista_id = u.artista_id
GROUP BY a.artista , al.album
ORDER BY seguidores DESC , a.artista , al.album;