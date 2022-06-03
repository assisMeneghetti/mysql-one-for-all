SELECT 
    u.usuario,
    COUNT(h.musica_id) AS 'qtde_musicas_ouvidas',
    ROUND(SUM(m.duracao_segundos) / 60, 2) AS 'total_minutos'
FROM
    SpotifyClone.usuarios AS u
        INNER JOIN
    SpotifyClone.historico AS h ON u.usuario_id = h.usuario_id
        INNER JOIN
    SpotifyClone.musicas AS m ON m.musica_id = h.musica_id
GROUP BY u.usuario_id
ORDER BY u.usuario;