-- ===========================================
-- a. Affiche toutes les colonnes des articles
-- ===========================================

SELECT * 
FROM article

-- ====================================================================
-- b. Affiche la référence et la désignation des articles de plus de 2€
-- ====================================================================

SELECT ref, designation
FROM article
WHERE article.prix > 2

-- =============================================================================
-- c. Affiche les articles dont le prix est compris entre 2 et 6.5€ sans BETWEEN
-- =============================================================================

SELECT designation
FROM article
WHERE article.prix > 2 && article.prix < 6.5

-- =============================================================================
-- d. Affiche les articles dont le prix est compris entre 2 et 6.5€ avec BETWEEN
-- =============================================================================

SELECT designation
FROM article
WHERE article.prix BETWEEN 2 AND 6.5

-- ==========================================================================================================
-- e. Affiche les articles dont le prix n'est pas compris entre 2 et 6.5€ avec BETWEEN, par ordre décroissant
-- ==========================================================================================================

SELECT *
FROM article
WHERE article.prix NOT BETWEEN 2 AND 6.5
ORDER BY prix DESC

-- =================================================================
-- f. Affiche les articles dont le prix dont les fournisseurs 1 et 3
-- =================================================================

SELECT *
FROM article
WHERE id_fournisseur != 2

-- =================================================================
-- g. Affiche les articles dont les fournisseurs sont 1 et 3 avec IN
-- =================================================================

SELECT *
FROM article
WHERE id_fournisseur IN (1,3)

-- ========================================================================
-- h. Affiche les articles dont les fournisseurs ne sont pas 1 et 3 avec IN
-- ========================================================================

SELECT *
FROM article
WHERE id_fournisseur NOT IN (1,3)

-- ====================================================================
-- h. Affiche les bons dont les commandes ont été passées entre 2 dates
-- ====================================================================

SELECT *
FROM bon
WHERE date_cmde BETWEEN '2019/02/01' AND '2019/04/30'













