SELECT DISTINCT
    (u.usuario) AS 'usuario',
    IF(MAX(h.data_reproducao) > '2021-01-01',
        'Usuário ativo',
        'Usuário inativo') AS 'condicao_usuario'
FROM
    SpotifyClone.usuarios AS u
        INNER JOIN
    SpotifyClone.historico AS h ON u.usuario_id = h.usuario_id
GROUP BY h.usuario_id
ORDER BY u.usuario;