SELECT 
    h.usuario_id AS 'quantidade_musicas_no_historico'
FROM
    SpotifyClone.usuarios AS u
        INNER JOIN
    SpotifyClone.historico AS h ON u.usuario_id = h.usuario_id
WHERE
    u.usuario = 'Bill'
GROUP BY u.usuario_id;