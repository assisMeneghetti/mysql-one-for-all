SELECT 
    COUNT(DISTINCT m.musica) AS 'cancoes',
    COUNT(DISTINCT a.artista) AS 'artistas',
    COUNT(DISTINCT al.album) AS 'albuns'
FROM
    SpotifyClone.musicas AS m,
    SpotifyClone.artistas AS a,
    SpotifyClone.albuns AS al;