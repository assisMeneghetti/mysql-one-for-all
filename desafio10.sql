SELECT 
    m.musica AS 'nome', COUNT(h.musica_id) AS 'reproducoes'
FROM
    SpotifyClone.planos AS p
        INNER JOIN
    SpotifyClone.usuarios AS u ON p.plano_id = u.plano_id
        INNER JOIN
    SpotifyClone.historico AS h ON u.usuario_id = h.usuario_id
        INNER JOIN
    SpotifyClone.musicas AS m ON h.musica_id = m.musica_id
WHERE
    p.plano_id IN (1 , 4)
GROUP BY m.musica
ORDER BY m.musica;